import org.craftercms.blueprints.headless.RelationEnSearchHelper
def searchHelper = new RelationEnSearchHelper(elasticsearch, urlTransformationService)
def relations = searchHelper.searchRelation(null)
println "Posts:"
print relations
templateModel.posts = relations