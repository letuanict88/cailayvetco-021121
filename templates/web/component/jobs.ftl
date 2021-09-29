<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="section-title">
        <div class="section-title__content block" id="job1">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title1_s}</h1>
        </div>
    </div>
	<div class="container pl-lg-0 pl-md-0" style="margin-bottom: 100px;">
	    <div id ="panigation-job">
            <#if (jobs)??>
            	<#list jobs as job>
                    <div class="job-item">
                        <a class="violet-color font-weight-bold font-title" style="font-size:20px;" href="${job.url}" class="d-block">${job.title}</a>
                        <p class="dim-grey-color" style="font-size: 20px; margin-top: 10px;font-family: Roboto Condensed, sans-serif !important;">(${job.time?datetime?string("dd/MM/yyyy")})</p>
                    </div>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example" style="margin-top: 40px;">
          <ul class="pagination pagi justify-content-center">
            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
    
   <div class="section-title mt-3">
        <div class="section-title__content block" id="job2">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title2_s}</h1>
        </div>
    </div>
    <div class="container pl-lg-0 pl-md-0">
	    <div class="row">
	        <div class="col-lg-6 col-md-6">
	            <img class="img-full" src="${contentModel.contentLeftImage_s}" />
	            <h3 class="violet-color font-weight-bold mt-3 font-title" style="font-size: 26px;">${contentModel.contentLeftTitle_s}</h3>
	            <p class="mt-md-4 mt-lg-4 line-height-1-5" style="font-size: 18px;font-weight: 300;">${contentModel.contentLeftDesc_s}</p>
	            
	            <p class="mt-md-4 mt-lg-4 violet-color"><a href="${contentModel.contentLeftURL_s}"><span class="mr-1 violet-color view-more font-weight-bold">Xem tiếp</span><i class="fa fa-play orange-color"></i></a></p>
	        </div>
	        <div class="col-lg-6 col-md-6">
	            <img class="img-full" src="${contentModel.contentRightImage_s}" />
	            <h3 class="violet-color font-weight-bold mt-3 font-title" style="font-size: 26px;">${contentModel.contentRightTitle_s}</h3>
	            <p class="mt-md-4 mt-lg-4 line-height-1-5" style="font-size: 18px;font-weight: 300;">${contentModel.contentRightDesc_s}</p>
	            
	            <p class="mt-md-4 mt-lg-4 violet-color"><a href="${contentModel.contentRightURL_s}"><span class="mr-1 violet-color view-more font-weight-bold">Xem tiếp</span><i class="fa fa-play orange-color"></i></a></p>
	        </div>
	    </div>
	</div>
<@studio.toolSupport />