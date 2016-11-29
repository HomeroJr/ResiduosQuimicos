package residuosquimicos

public enum DepartamentoList {

    // CB
    DEPARTAMENTO_DE_ANTIBIOTICOS("Departamento de Antibioticos"),
    DEPARTAMENTO_DE_ANATOMIA("Departamento de Anatomia Humana"),
    DEPARTAMENTO_DE_BIOFISICA_RADIOLOGIA("Departamento de Biofisica Radiologia"),
    DEPARTAMENTO_DE_BIOQUIMICA("Departamento de Bioquimica"),
    DEPARTAMENTO_DE_BOTANICA("Departamento de Botânica"),
    DEPARTAMENTO_DE_FISIOLOGIA_E_FARMACOLOGIA("Departamento de Fisiologia e Farmacologia"),
    DEPARTAMENTO_DE_GENETICA("Departamento de Genetica"),
    DEPARTAMENTO_DE_MICOLOGIA("Departamento de Micologia"),
    DEPARTAMENTO_DE_ZOOLOGIA("Departamento de Zoologia"),
    LABORATORIO_CENTRAL("Laboratorio Central - CB"),

    // CCS
    DEPARTAMENTO_DE_CIENCIAS_FARMACEUTICAS("Departamento de Ciencias Farmaceuticas"),
    DEPARTAMENTO_DE_CIRURGIA("Departamento de Cirurgia"),
    DEPARTAMENTO_DE_CLINICA_ODONTOLOGIA_PREVENTIVA("Departamento  de Clinica Odontologica Preventiva"),
    DEPARTAMENTO_DE_EDUCACAO_FISICA("Departamento de Educacao Fisica"),
    DEPARTAMENTO_DE_ENFERMAGEM("Departamento de Enfermagem"),
    DEPARTAMENTO_DE_FISIOTERAPIA("Departamento de Fisioterapia"),
    DEPARTAMENTO_DE_FONODIAULOGIA("Departamento de Fonodiaulogia"),
    DEPARTAMENTO_MATERNO_INFANTIL("Departamento Materno Infantil"),
    DEPARTAMENTO_DE_MEDICINA_CLINICA("Departamento de Medicina Clinica"),
    DEPARTAMENTO_DE_MEDICINA_SOCIAL("Departamento de Medicina Social"),
    DEPARTAMENTO_DE_MEDICINA_TROPICAL("Departamento de Medicina Tropical"),
    DEPARTAMENTO_DE_NUTRICAO("Departamento de Nutricao"),
    DEPARTAMENTO_DE_PATOLOGIA("Departamento de Patologia"),
    DEPARTAMENTO_DE_PROTESES_E_CIRURGIA_BUCOFACIAL("Departamento de Protese e Cirurgia Bucofacial"),

    // CTG
    DEPARTAMENTO_DE_ENGENHARIA_CARTOGRAFICA("Departamento de Engenharia Cartografica"),
    DEPARTAMENTO_DE_ENGENHARIA_CIVIL("Departamento de Engenharia Civil"),
    DEPARTAMENTO_DE_ENGENHARIA_MECANICA("Departamento de Engenharia Mecânica"),
    DEPARTAMENTO_DE_ENGENHARIA_QUIMICA("Departamento de Engenharia Quimica"),
    DEPARTAMENTO_DE_ENGENHARIA_DE_PRODUCAO("Departamento de Engenharia de Producao"),
    DEPARTAMENTO_DE_ELETRONICOS_E_SISTEMAS("Departamento de Eletrônicos e Sistemas"),
    DEPARTAMENTO_DE_ENGENHARIA_DE_MINAS("Departamento de Engenharia de Minas"),
    DEPARTAMENTO_DE_ENERGIA_NUCLEAR("Departamento de Energia Nuclear"),
    DEPARTAMENTO_DE_OCEANOGRAFIA("Departamento de Oceanografia"),
    DEPARTAMENTO_DE_GEOLOGIA("Departamento de Geologia"),

    // CCEN
    DEPARTAMENTO_DE_FISICA("Departamento de Fisica"),
    DEPARTAMENTO_DE_QUIMICA_FUNDAMENTAL("Departamento de Quimica Fundamental"),

    // CE
    COLEGIO_DE_APLICACAO("Colegio de Aplicacao"),

    // Laboratorios Independentes
    DINE_POSITIVA("DINE Positiva"),
    LIKA("LIKA")

    public String value

    DepartamentoList(String value){
        this.value = value
    }

    String toString() {
        value
    }

    String getKey() {
        name()
    }
}