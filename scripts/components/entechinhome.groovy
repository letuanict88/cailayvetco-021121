import org.craftercms.blueprints.headless.SupportTechEnSearchHelper

def searchHelper = new SupportTechEnSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.supportTech_s

def supportTech = searchHelper.searchSupportTech(category,0,5)
def firstItem = null;
def lstTechSp = [];
if (supportTech.size() > 1) {
    firstItem = supportTech[0];
}

if (supportTech.size() > 2) {
    lstTechSp = supportTech[1..supportTech.size()-1]
}

templateModel.firstItem = firstItem
templateModel.lstTechSp = lstTechSp