Feature: usuário administrador do sistema
  As um usuário administrador cadastrado no sistema
  I quero ser capaz de ter uma visão geral do sistema, gerar relatórios, adicionar e remover usuários
  So that eu possa ter um controle do sistema e gerar licitações quando for necessário

  Scenario : tentar inserir um laboratorio ja existente no sistema
    Given o laboratorio "LABORATORIO_DE_FARMACOLOGIA_E_CANCEROLOGIA_EXPERIMENTAIS" do departamento "DEPARTAMENTO_DE_ANTIBIOTICOS" do centro "CB" ja esta cadastrado no sistema
    When eu tento inserir no sistema o laboratorio "LABORATORIO_DE_FARMACOLOGIA_E_CANCEROLOGIA_EXPERIMENTAIS" do departamento "DEPARTAMENTO_DE_ANTIBIOTICOS" do centro "CB"
    Then o sistema nao permite a insercao do laboratorio "LABORATORIO_DE_FARMACOLOGIA_E_CANCEROLOGIA_EXPERIMENTAIS)" novamente

  Scenario: gerar relatorio  de peso total de residuos eliminados por determinado departamento  no periodo de um ano
   Given eu registrei o  laboratorio "LABORATORIO_DE_FARMACOLOGIA_E_CANCEROLOGIA_EXPERIMENTAIS" do departamento "DEPARTAMENTO_DE_ANTIBIOTICOS" no centro "CB"
   And   eu criei  os residuo "x1" com peso "1" associado ao laboratorio "LABORATORIO_DE_FARMACOLOGIA_E_CANCEROLOGIA_EXPERIMENTAIS"
   When eu clico no botao gerar relatorio de pesos  com periodo de um ano pelo laboratorio  "LABORATORIO_DE_FARMACOLOGIA_E_CANCEROLOGIA_EXPERIMENTAIS"
   Then eu devo visualizar um relatorio gerado que retrata o peso de todos os residuos gerados pelo "LABORATORIO_DE_FARMACOLOGIA_E_CANCEROLOGIA_EXPERIMENTAIS" no periodo de  um ano

  @ignore
  Scenario: buscar laboratorios que nao fizeram a remocao de residuos nos ultimos 6 meses
   Given eu estou na tela de listagem de laboratorios
   And os residuos "x1" "x2" e "x3" estao armazenados no  sistema
   When eu clico no botao mostrar laboratorios com coleta pendente
   And seleciono o filtro  ultimos 6 meses
   Then eu posso visualizar uma lista dos laboratorios que nao realizaram a coleta de residuos nos ultimos 6 meses

  @ignore
  Scenario: buscar pelos laboratorio que realizou a ultima remocao de residuo
   Given eu estou na tela de selecao de laboratorios
   When eu seleciono a opcao mostrar historico de residuos removidos
   And seleciono a opcao ordenar por data
   And limito o numero de laboratorios para "1"
   Then eu posso visualizar qual laboratorio realizou a ultima remocao de residuos






