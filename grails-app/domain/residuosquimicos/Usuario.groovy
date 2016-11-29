package residuosquimicos

class Usuario {

    static final int FACILITADOR = 4
    static final int ADMINISTRADOR = 5

    /**
     * Nome do usuario para melhor identificação
     */
    String nome
    /**
     * Senha do usuario
     */
    String senha
    /**
     * Ramal para contato com o usuario
     */
    String ramal
    /**
     * Email de acesso ao sistema
     */
    String email
    /**
     * Representa o tipo de usuario
     */
    int tipo
    /**
     * Diz se o usuario e associado ou nao
     */
    boolean associado

    static constraints = {
        nome nullable: false, blank: false
        senha nullable: false, blank: false
        tipo nullable: false, blank: false
    }

    Usuario(String nome, String email, String senha) {
        this.nome = nome
        this.email = email
        this.senha = senha
        this.associado = false
    }

    void setAdmin() {
        this.tipo = ADMINISTRADOR
    }

    void setFacilitador() {
        this.tipo = FACILITADOR
    }
}