import org.craftercms.blueprints.headless.ProcessSearchHelper

def searchHelper = new ProcessSearchHelper(elasticsearch, urlTransformationService)
def category = contentModel.processType_s

def processes = searchHelper.searchProcess(category,0)
templateModel.processes = processes