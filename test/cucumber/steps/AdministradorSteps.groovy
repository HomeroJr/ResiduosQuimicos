import pages.CreateLaboratorioPage
import pages.CreateResiduoPage
import pages.ShowLaboratorioPage
import residuosquimicos.Laboratorio
import residuosquimicos.LaboratorioController

/**
 * Created by homerojr on 04/11/16.
 */

import static cucumber.api.groovy.EN.*
this.metaClass.mixin(cucumber.api.groovy.Hooks)
this.metaClass.mixin(cucumber.api.groovy.EN)


def criarLaboratorio(nomeLab, nomeDep, nomeCentro,LaboratorioController labcontroller) {
    def lab = new Laboratorio([centro:nomeCentro,departamento:nomeDep,laboratorio:nomeLab,solicitante: null,
                               responsavel:null])
    labcontroller.save()
    labcontroller.response.reset()
}

Given(~/^o laboratorio "([^"]*)" do departamento "([^"]*)" do centro "([^"]*)" ja esta cadastrado no sistema$/) {
    String lab, String centro, String departamento ->
        def labcontroller = new LaboratorioController()
        criarLaboratorio(lab,departamento,centro,labcontroller)
}
When(~/^eu tento inserir no sistema o laboratorio "([^"]*)" do departamento "([^"]*)" do centro "([^"]*)"$/) {
    String lab, String centro, String departamento->
        def labcontroller = new LaboratorioController()
        criarLaboratorio(lab,departamento,centro,labcontroller)
}

Then(~/^o sistema nao permite a insercao do laboratorio "([^"]*)" novamente$/) {
    String labname ->
        def count = 0
        Laboratorio.each {
            if(it.Laboratorio == labname){
                count++
            }

        }
        assert count == 1
}

Given(~/^eu registrei o  laboratorio "([^"]*)" do departamento "([^"]*)" no centro "([^"]*)"$/) { String nomeLab , String nomeDep, String nomeCentro ->
    to CreateLaboratorioPage
    at CreateLaboratorioPage
    page.createLab(nomeLab,nomeDep,nomeCentro)
    at ShowLaboratorioPage
}
And(~/^eu criei  os residuo "([^"]*)" com peso "([^"]*)" associado ao laboratorio "([^"]*)"$/) { String nomeResiduo, String pesoResiduo, String nomeLaboratorio ->
    to CreateResiduoPage
    at CreateResiduoPage
    page.createResiduo(nomeResiduo,pesoResiduo,nomeLaboratorio)
}
When(~/^eu clico no botao gerar relatorio de pesos  com periodo de um ano pelo laboratorio  "([^"]*)"$/) { String nomeLab ->
    to IndexAdministradorPage
    at IndexAdministradorPage
    page.gerarRelatorioAnual(nomeLab)
}
Then(~/^eu devo visualizar um relatorio gerado que retrata o peso de todos os residuos gerados pelo "([^"]*)" no periodo de  um ano$/) { String arg1 ->
    at RelatorioAdministradorPage

}