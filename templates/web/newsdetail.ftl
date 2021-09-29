<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <#--<title>${contentModel.title_s}</title> -->
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
    <style>
        .new-detail__content p {
            font-weight: 300;
        }
    </style>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-175035151-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-175035151-1');
    </script>

  </head>
  <body>
        <@renderComponent component=contentModel.header_o.item />
        <@renderComponent component=contentModel.slideImage_o.item />
    <main>
        <section class="services">
            <div class="section-title">
                <div class="section-title__content block">
                    <#if contentModel.categories_o.item.key = "internalnews" >
                    <h1 class="section-title__content-text text--uppercase">tin nội bộ</h1>
                    </#if>
                    <#if contentModel.categories_o.item.key ="industrynews" >
                    <h1 class="section-title__content-text text--uppercase">tin ngành</h1>
                </#if>
                </div>
            </div>
            <div class="container" style="padding-left:30px;">
                <h2 style="color: #322372; font-size: 28px; font-weight: bold;">${contentModel.title_s}</h2>
                <img class="img-center" src="${contentModel.image_s!""}" >
                <div class="new-detail__content" style="line-height: 1.5;  font-size: 18px; padding-top:30px; color: #636466; font-weight: 300;">${contentModel.content_html}</div>
                <a href="/tin-tuc"><i class="fa fa-arrow-left violet-color" style="padding-right:10px;" aria-hidden="true"></i><span class="mr-1 text--italic violet-color">Quay lại trang tin tức</span>
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
    <script src="/static-assets/js/search.js"></script>
    <script src="/static-assets/js/nav-link.js"></script>
    
  </body>
</html>
<@studio.toolSupport />