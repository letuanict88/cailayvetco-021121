import org.craftercms.blueprints.headless.SupportTechSearchHelper

def searchHelper = new SupportTechSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.supportTech_s

def supportTech = searchHelper.searchSupportTech(category,0,3)
templateModel.supportTech = supportTech