<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="keywords" content="Mekovet, Cai Lậy, Dược thú y, Thuốc cho heo,Thuốc cho gia súc, Thuốc cho gia cầm, Thuốc cho thủy sản, Thuốc nhập khẩu, Thuốc xuất khẩu, Tin tức ngành chăn nuôi, Biến động thị trường, Tình hình dịch bệnh, tuyển dụng, việc làm">
    <meta name="revisit-after" content="1 days">
    <meta name="geo.placename" content="Khu 5, thị trấn Cai Lậy, huyện Cai Lậy, tỉnh Tiền Giang">
    <meta name="geo.position" content="21.021691;105.824931">
    <meta name="geo.region" content="VN-Hanoi">
    <#--<title>${contentModel.jobTitle_s}</title> -->
    <title>Công ty CP Dược Thú y Cai Lậy</title>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb/css/all.min.css"/>
   
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static-assets/plugins/OwlCarousel/css/owl.theme.default.min.css">
   
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/custom.css"/>
    <link rel="stylesheet" href="/static-assets/css/dtycl.css">
    <link rel="stylesheet" href="/static-assets/css/responsive.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap" rel="stylesheet">
    <style>
        .job-content p {
            font-size: 18px;
            font-weight: 300;
            line-height: 1.5;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
    <#list (contentModel.section_o.item)![] as section>
        <@renderComponent parent=contentModel component=section />
    </#list>
    <div class="section-title">
        <div class="section-title__content block">
            <h1 class="section-title__content-text text--uppercase">${contentModel.jobTitle_s}</h1>
        </div>
    </div>
    <div class="content">
        <div class="container pl-lg-0 pl-md-0">
            <hr class="line-hozital">
            <div class="job-content" style="margin-bottom: 3rem;">
                ${contentModel.jobContent_html}
            </div>
            <hr class="line-hozital">
            <div id ="panigation-job" class="mt-md-3">
                <#if (jobs)??>
                	<#list jobs as job>
                        <div class="job-item">
                            <a class="violet-color font-weight-bold font-title" style="font-size:20px;" href="${job.url}" class="d-block">${job.title}</a>
                            <p style="font-size: 20px; margin-top: 10px;font-family: Roboto Condensed, sans-serif !important;">(${job.time?datetime?string("dd/MM/yyyy")})</p>
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
    </div>
    <@renderComponent component=contentModel.slideLogo_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/slide.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/job.js"></script> 
    <script src="/static-assets/js/search.js"></script>
    <script src="/static-assets/js/nav-link.js"></script>
    <script>
        $(document).ready(function() {
           var url = window.location.href;
           
           if( url.indexOf('/en') > -1) {
               document.title = 'CAI LAY VETERINARY JOINT STOCK COMPANY';
           }
        });
    </script>
  </body>
</html>
<@studio.toolSupport />