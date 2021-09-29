<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Công ty CP Dược Thú y Cai Lậy</title>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css">
    <link href="/static-assets/plugins/booklet/src/jquery.booklet.latest.css" type="text/css" rel="stylesheet" media="screen, projection, tv" />
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
    <script src="/static-assets/js/pagination.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-175035151-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-175035151-1');
    </script>

    <style>
        .play-icon {
            background: #FEBD11;
            border-radius: 50%;
            color: #00559a;
            display: block;
            font-size: 25px;
            height: 45px;
            left: 50%;
            line-height: 45px;
            position: absolute;
            text-align: center;
            top: 40%;
            transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%);
            width: 45px;
        }
    </style>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <main>
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="content">
            <div class="section-title">
                <div class="section-title__content block">
                    <h1 class="section-title__content-text text--uppercase document-title">THƯ VIỆN TÀI LIỆU</h1>
                </div>
            </div>
            <div class="container pl-lg-0 pl-md-0">
                <div class="doc-title ml-lg-2" style="background-color:#FFCB08;width:100%;">
                    <h2 class="violet-color p-2 font-weight-bold" style="font-size: 30px;">${contentModel.title_s}</h2>
                </div>
                <div class="ml-lg-2">
                    <a href="#" id="custom-prev"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i>Prev</a>
                    <a href="#" id="custom-next">Next<i class="fa fa-chevron-circle-right" aria-hidden="true"></i></a>
                </div>
                <div id="mybook">
                    <#list contentModel.document_o.item as doc>
                        <div class="page-${doc?index}">
                            ${doc.pageItemContent_html}
                        </div>
                    </#list>
                </div>
            </div>
        </div>
    </main>

    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script> window.jQuery || document.write('<script src="/static-assets/plugins/booklet/src/jquery-2.1.0.min.js"><\/script>') </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="/static-assets/plugins/booklet/src/jquery.easing.1.3.js"></script>
    <script src="/static-assets/plugins/booklet/src/jquery.booklet.latest.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/video.js"></script>
    <script>
        $(function() {
            //single book
            $('#mybook').booklet({
                width:  '100%',
                height: 600,
                easing:  'easeInOutElastic',
                closed: true,
                covers: true,
                autoCenter: true,
                auto: true,
                delay: 9000,
                keyboard: true,
                next: '#custom-next',
                prev: '#custom-prev'
            });
        });
        
        $(document).ready(function(){
            var url = window.location.href;
            if (url.indexOf('/en') > -1) {
                $('.document-title').text('CAI LAY VETERINARY JOINT STOCK COMPANY');
            }
        });
    </script>
  </body>
</html>
<@studio.toolSupport /> 
