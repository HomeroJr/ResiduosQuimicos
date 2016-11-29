package residuosquimicos

class Laboratorio {
    /**
     * Nome do centro ao qual pertence
     */
    CentroList centro
    /**
     * Nome do departamento ao qual pertence
     */
    DepartamentoList departamento
    /**
     * Nome do laboratorio ao qual pertence
     */
    LaboratorioList laboratorio
    /**
     * Usuario que solicitou acesso ao sistema
     */
    Usuario solicitante
    /**
     * Usuario que e responsavel pelo laboratorio
     */
    Usuario responsavel

    static hasMany = [residuos: Residuo]

    static constraints = {
        centro blank: false, nullable: false
        departamento blank: false, nullable: false
        laboratorio blank: false, nullable: false
        solicitante nullable: true
        responsavel nullable: true
    }

}