package pages

import geb.Page
import steps.InternationalizationHelper

class ShowLaboratorioPage extends Page{
    static url = "/ResiduosQuimicos/laboratorio/show/"
    static at = {
        InternationalizationHelper helper = InternationalizationHelper.instance
        String labelLab = "Laboratorio"
        String showLabTitleList = helper.getMessage("default.show.label", labelLab)
        title ==~ showLabTitleList
    }

}