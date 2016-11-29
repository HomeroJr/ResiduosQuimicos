package pages

import geb.Page
import residuosquimicos.Laboratorio
import steps.InternationalizationHelper

import java.text.NumberFormat

class CreateResiduoPage extends Page{
    static url = "/ResiduosQuimicos/residuo/create/"
    static at = {
        InternationalizationHelper helper = InternationalizationHelper.instance
        String residuoLab = "Residuo"
        String createResiduoTitleList = helper.getMessage("default.create.label", residuoLab)
        title ==~ createResiduoTitleList
    }

    def createResiduo(String nomeResiduo, String pesoResiduo, String nomeLaboratorio){
        NumberFormat nf = NumberFormat.getInstance(new Locale("pt","BR"));
        $('input#nome').value(nomeResiduo)
        $('input#descricao').value("Padrão")
        $('input#peso').value(nf.parse(pesoResiduo))
        $('select#laboratorio').value(Laboratorio.findByLaboratorio(nomeLaboratorio).id)
        $('#create-residuo input#create').click()
    }
}


