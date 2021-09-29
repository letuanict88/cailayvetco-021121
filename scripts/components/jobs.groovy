import org.craftercms.blueprints.headless.JobSearchHelper

def searchHelper = new JobSearchHelper(elasticsearch, urlTransformationService)
def jobs = searchHelper.searchJob(0)

println jobs
templateModel.jobs = jobs