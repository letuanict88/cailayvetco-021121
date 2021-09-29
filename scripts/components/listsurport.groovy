import org.craftercms.blueprints.headless.SupportTechSearchHelper

def searchHelper = new SupportTechSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.technicalAssistanceType_s

def techs = searchHelper.searchSupportTech(category,0)
templateModel.techs = techs