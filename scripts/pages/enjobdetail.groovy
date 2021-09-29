import org.craftercms.blueprints.headless.JobEnSearchHelper

def searchHelper = new JobEnSearchHelper(elasticsearch, urlTransformationService)
def jobs = searchHelper.searchJob(0)

println jobs
templateModel.jobs = jobs