import org.craftercms.blueprints.headless.ProcessEnSearchHelper

def searchHelper = new ProcessEnSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.processType_s

def processes = searchHelper.searchProcess(category,0)
templateModel.processes = processes