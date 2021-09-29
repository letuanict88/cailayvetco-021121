<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- Handlebar Templates -->
	<script id="search-results-template" type="text/x-handlebars-template">
		{{#each results}}
            <div class="col-lg-2 col-md-2 col-sm-6 col-xs-6 child-product-item mb-3">
    	        <a href="{{url}}"><img class="img-responsive" src="{{avatar}}" width="150" height="155"/></a>
    	        <p class="d-block text-center violet-color mt-3">{{title}}</p>
    	        {{#if highlight}}
    		        <a href="{{url}}"><p class="limit-text-250">{{{highlight}}}</p></a>
    			{{/if}}
    	    </div>
		{{else}}
		    <p>No results found</p>
		{{/each}}
</script>
<div class="section-title">
    <div class="section-title__content block">
        <h1 class="section-title__content-text text--uppercase">Kết quả tìm kiếm</h1>
    </div>
</div>
<div class="content__details">
     <div class="container">
    <div class="row " style="padding-left: 15px;">
        <div class="col-lg-12 col-md-12 col-sm-12" style="padding: 0; margin-bottom: 20px;">
            <span id="search-result-vn" style="font-size: 18px;"></p> Tìm được <b class="totalSearch"></b> kết quả với từ khóa "<b class="keywordSearch"></b>"</span>
        </div>
        <div class="search-result_item row">
        </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-12 mx-auto" style="margin-top: 20px;" id="pager">
      <ul class="float-right" id="pagination" class="pagination-sm"></ul>
    </div>
    </div> 
</div>
<@studio.toolSupport />