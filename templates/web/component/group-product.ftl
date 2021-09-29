<#import "/templates/system/common/cstudio-support.ftl" as studio />
<section class="products">
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
        </div>
    </div>
    <div class="container pl-lg-0 pl-md-0">
        <div class="row">
    	    <#list contentModel.groupProduct_o.item as item>
    	        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 text--center">
                    <a href="${item.groupChildProductURL_s}">
                        <img class="products__img" src="${item.groupProductIcon_s}" style="max-width: 100%; height:auto;" alt="Product logo" width="265" height="240">
                        <h3 class="text--uppercase violet-color font-weight-bold font-title" style="font-size:25px;">${item.groupProductName_s}</h3>
                    </a>
                </div>
                <#if item?index == 0>
                    <div class="col-lg col-md"></div>
                </#if>
                <#if item?index == 1>
                    <div class="col-lg col-md"></div>
                </#if>
                <#if item?index == 3>
                    <div class="col-lg col-md"></div>
                </#if>
                <#if item?index == 4>
                    <div class="col-lg col-md"></div>
                </#if>
        	</#list>
        </div>
    </div>
    <div class="container">
        <div class="products__list-title" style="margin-top: 50px; margin-bottom: 50px;">
            <h1 class="text--uppercase violet-color hot-product-title">sản phẩm chủ lực</h1>
        </div>
        <#--<hr class="line-hozital" style="margin-bottom: 1%; margin-top: 0;"/>
        <hr class="line-hozital"style="margin-bottom: 5%; margin-top: 0;"/>
        <div class="row row-cols-lg-5 row-cols-md-5" id ="panigation-product"> -->
        <div class="row" id ="panigation-product">
            <#if (products)??>
            	<#list products as product>
                    <div class="col-lg-2 col-md-2 col-sm-6 product-item mb-3">
                        <a href="${product.url}"><img  class="img-100" src="${product.avatar}" width="120" height="83"/></a>
                        <p style="font-size: 23px;" class="d-block font-weight-bold violet-color mt-3 font-title">${product.title}</p>
                    </div>
                </#list>
            </#if>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination pagi justify-content-center">
            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
          </ul>
        </nav>
    </div>
</section>
<@studio.toolSupport />