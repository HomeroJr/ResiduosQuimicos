package pages

import geb.Page
import steps.InternationalizationHelper

class ShowResiduoPage extends Page{
    static url = "/ResiduosQuimicos/residuo/show/"
    static at = {
        InternationalizationHelper helper = InternationalizationHelper.instance
        String labelResiduo = "Residuo"
        String showResiduoTitleList = helper.getMessage("default.show.label", labelResiduo)
        title ==~ showResiduoTitleList
    }
}
