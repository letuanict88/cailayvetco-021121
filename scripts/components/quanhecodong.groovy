import org.craftercms.blueprints.headless.RelationSearchHelper
def searchHelper = new RelationSearchHelper(elasticsearch, urlTransformationService)
def relations = searchHelper.searchRelation(null)
println "Posts:"
print relations
templateModel.posts = relations