<#import "/templates/system/common/cstudio-support.ftl" as studio />
        <section class="services">
                <div class="section-title">
                    <div class="section-title__content block">
                        <h1 class="section-title__content-text text--uppercase policy-title">CHÍNH SÁCH NHÂN SỰ</h1>
                    </div>
                </div>
        
        <div class="container pl-lg-0 pl-md-0">
            <h3 class="font-title" style="color: #322372; font-size: 30px; background-color: #ffcb08; padding: 8px; font-weight: bold;" >${contentModel.title_s}</h3>
            <img style="padding-top:20px; width: 67% !important" class="img-center img-responsive" src="${contentModel.image_s!""}" >
            <div style="color: #636466; font-size: 18px; padding-top:30px;line-height: 1.5; font-weight: 300">${contentModel.content_html}</div>
        </div>
        </section>
<@studio.toolSupport />