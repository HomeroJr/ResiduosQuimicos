package residuosquimicos

public enum CentroList {

    CB("Centro de Biociencias"),
    CCS("Centro de Ciencias da Saude"),
    CTG("Centro de Tecnologia e Geociencias"),
    CCEN("Centro de Ciencias Exatas e da Natureza"),
    LABORATORIOS_INDEPENDENTES("Laboratorios Independentes"),
    CE("Centro de Educacao")

    public String value

    CentroList(String value){
        this.value = value
    }

    String toString() {
        value
    }
    String getKey() {
        name()
    }

}