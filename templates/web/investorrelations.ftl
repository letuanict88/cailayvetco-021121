<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <#-- <title>${contentModel.title_s}</title> -->
    <title>Công ty CP Dược Thú y Cai Lậy</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap" rel="stylesheet">    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
    
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
  </head>
  <body>
        <@renderComponent component=contentModel.header_o.item />
        
        <@renderComponent component=contentModel.slideImage_o.item /> 
    <main>
        <section class="services">
            <div class="section-title">
                <div class="section-title__content block">
                    <#if contentModel.categories_o.item.key = "announcement" >
                    <h1 class="section-title__content-text text--uppercase">Công bố thông tin</h1>
                    </#if>
                    <#if contentModel.categories_o.item.key ="shareholders" >
                    <h1 class="section-title__content-text text--uppercase">Đại hội đồng cổ đông</h1>
                </#if>
                </div>
            </div>
            <div class="container" style="padding-left:30px;">
                <p style="color: #322372; font-size: 26px; font-weight: bold; margin-bottom: 0px !important;">${contentModel.title_s}</p>
                <p class="dim-grey-color" style="line-height: 1.5;  font-size: 20px; font-weight: 400;">(${contentModel.date_dt?date?string('dd/MM/yyyy')})</p>
                <div class="new-detail__content" style="line-height: 1.5;  font-size: 18px; padding-top:30px; color: #636466; font-weight: 300; word-spacing: 2px;">${contentModel.content_html}</div>
                <a href="/quan-he-co-dong"><i class="fa fa-arrow-left violet-color" style="padding-right:10px;" aria-hidden="true"></i><span class="mr-1 text--italic violet-color" style="color: #00549a; font-size: 18px;">Quay lại trang quan hệ cổ đông</span>
                </a>
            </div>
        </section>
        </main>
        <@renderComponent component=contentModel.slideLogo_o.item />
        <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/group-product.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/news.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/contact.js"></script>
    <script src="/static-assets/js/nav-link.js"></script>
  </body>
</html>
<@studio.toolSupport />