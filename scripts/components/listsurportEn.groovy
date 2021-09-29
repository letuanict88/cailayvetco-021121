import org.craftercms.blueprints.headless.SupportTechEnSearchHelper

def searchHelper = new SupportTechEnSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.technicalAssistanceType_s

def techs = searchHelper.searchSupportTech(category,0)
templateModel.techs = techs