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
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <#--<title>${contentModel.title_s}</title> -->
    <title>Công ty CP Dược Thú y Cai Lậy</title>
    <!-- FontAwesome -->
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
        strong {
            font-weight: bold;
        }
    </style>
    <script src="https://ajax.googleapis.`com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
    <div class="content">
        <@renderComponent component=contentModel.header_o.item />
        <#list (contentModel.section_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        
        <div class="section-title" id="benh">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase">${contentModel.processtitle_s}</h1>
            </div>
        </div>
        <div class="container pl-lg-0 pl-md-0 mb-4">
            <div class="row">
                <#if (contentModel.processComponent_o.item)?? && contentModel.section_o??>
                    <#list (contentModel.processComponent_o.item)![] as section>
                        <div class="group-pr-${section?index} col-lg-4 col-md-4 col-sm-6 col-xs-6" style="margin-bottom: 60px;">
                            <@renderComponent parent=contentModel component=section />
                        </div>
                    </#list>
                </#if>
            </div>
        </div>
        
        <div class="section-title" id="dieutri">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase">${contentModel.title_s}</h1>
            </div>
        </div>
        <div class="container pl-lg-0 pl-md-0 mb-4">
            <div class="row">
                <#if (contentModel.technicalAssistanceCompoent_o.item)?? && contentModel.section_o??>
                    <#list (contentModel.technicalAssistanceCompoent_o.item)![] as section>
                        <div class="group-pr-${section?index} col-lg-4 col-md-4 col-sm-6 col-xs-6">
                            <@renderComponent parent=contentModel component=section />
                        </div>
                    </#list>
                </#if>
            </div>
        </div>
        
        <div class="section-title">
            <div class="section-title__content block">
                <h1 class="section-title__content-text text--uppercase" id="sp-customer">hỗ trợ khách hàng</h1>
            </div>
        </div>
        <div class="container pl-lg-0 pl-md-0">
            <div class="row mt-3">
                <div class="col-md-6">
                    <img src="${contentModel.supportCustomerImage_s}" class="img-full"/>
                </div>
                <div class="col-md-6" style="line-height: 1.4;font-size: 18px;font-weight: 300;font-family: Roboto;color: #636466;">
                    ${contentModel.supportCustomerContent_html}
                    <div class="d-flex pt-3">
                        <button class="btn-desc violet-color font-weight-bold" style="width: 49%; margin-right: 2%; background-color: #FFCB08;">${contentModel.phoneNumber_s}</button>
                        <button data-toggle="modal" data-target="#exampleModal" class="btn-desc report-price font-weight-bold text-white" href="#" style="width: 49%; background-color: #322372;">Email</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" style="width: 310px;" role="document">
        <div class="modal-content">
         <form action="/api/1/services/contactUs.json" method="POST">
          <div class="modal-header text-white" style="background-color: #322372">
            <h5 class="modal-title text-white" id="exampleModalLabel">Trung tâm hỗ trợ khách hàng</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
                <div class="row">
                    <label class="col-md-2 mb-1 mt-5 name">Họ tên</label>
                    <div class="col-md-10 mb-1 mt-md-5">
                        <input type="text" class="form-control" name="name" id="name" required/>
                    </div>
                    <label class="col-md-2 mb-1 company">Công ty</label>
                    <div class="col-md-10 mb-1">
                        <input type="text" class="form-control" name="company" id="company" required/>
                    </div>
                    <label class="col-md-2 mb-1 email">Email</label>
                    <div class="col-md-10 mb-1">
                        <input type="email" class="form-control" name="email" id="email" required/>
                    </div>
                    <label class="col-md-2 mb-1 phone">Điện thoại</label>
                    <div class="col-md-10 mb-1">
                        <input type="text" class="form-control" name="phone" id="phone" required/>
                    </div>
                    <label class="col-md-2 mb-1 title">Tiêu đề</label>
                    <div class="col-md-10 mb-1">
                        <input type="text" class="form-control" name="title" id="title" required/>
                    </div>
                    <label class="col-md-2 mb-1 content-form">Nội dung</label>
                    <div class="col-md-10 mb-1">
                        <textarea class="form-control" name="content" id="content"></textarea>
                    </div>
                </div>
          </div>
          <div class="modal-footer">
            <button id="btn-send" onclick="openSpinner()" class="btn btn-warning font-weight-bold violet-color" type="submit">Gửi</button>
            <button class="btn btn-danger font-weight-bold violet-color btn-cancel" type="reset">Hủy</button>
            <button type="button" class="btn btn-secondary btn-close" data-dismiss="modal">Close</button>
          </div>
          </form>
        </div>
      </div>
    </div>
     <!-- =========================
        MODAL DIALOGS
        ============================== -->
        
        <div class="modal fade" id="success-dialog" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header text-left mb-2 text-white" style="background-color: #322372">
                        <h3 id="success-dialog-header" class="modal-title" style="font-size: 20px;">Cảm ơn!</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            <span id="success-dialog-message" class="modal-main-message">Yêu cầu của bạn đã được xử lý!</span>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-sm btn-warning sniper-close" data-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="fail-dialog" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 id="fail-dialog-header" class="modal-title">Error</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            <span id="fail-dialog-message" class="modal-main-message">Unable to process your request. </br>Please try again later.</span>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- =========================
        MODAL SPINNERS
        ============================== -->
        <div class="modal fade" id="modal-spinner" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered justify-content-center" role="document">
                <span class="fa fa-spinner fa-spin fa-3x"></span>
            </div>
        </div>
    <input hidden value="${contentModel.technicalAssistanceCompoent_o.item?size}" id="group-pr-length"/>
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
    <script src="/static-assets/js/techsupport.js"></script>
    <script src="/static-assets/js/search.js"></script>
    <script src="/static-assets/js/contact.js"></script>
    <script src="/static-assets/js/nav-link.js"></script>
    <script>
        $(document).ready(function() {
            var url = window.location.href;
            if (url.indexOf('/en') > -1) {
                $('#sp-customer').text('customer support');
                $('.name').text('Name');
                $('.company').text('Company');
                $('.phone').text('Phone');
                $('.title').text('Title');
                $('.content-form').text('Content');
                $('#btn-send').text('Send');
                $('.btn-cancel').text('Reset');
                $('#exampleModalLabel').text('Customer Support Center');
                $('#success-dialog-header').text('Thank you!');
                $('#success-dialog-message').text('Your request has been processed!');
                $('.sniper-close').text('Close');
                $('.view-more').text('See more');
                document.title = 'CAI LAY VETERINARY JOINT STOCK COMPANY';
            }
            
            $('#btn-send').click(function() {
                $('#exampleModal').hide();
            });
            
            var lstsick = $('.sick-title');
            for(let i = 0; i < lstsick.length; i++) {
                let value = $(lstsick[i]).text();
                console.log(value);
                let arText = value.split(' ');
                let firstText = arText[0];
                arText.shift();
                let rsText = arText.join(' ');
                let ele = '<p class="violet-color font-weight-bold text-center mt-3 text-uppercase sick-title font-title" style="font-size: 32px;line-height:1.4;">'+firstText+'<br/>' +rsText+'</p>';
                $(lstsick[i]).html(ele);
            }
            
           var titleNames = $('.child-title__name');
           for (let i = 0; i < titleNames.length; i++) {
               let splits = $(titleNames[i]).text();
               let arr = splits.split('/');
               let result = arr.join('<br/>');
               let ele = '<p class="d-block text-center mt-3 violet-color font-weight-bold child-title__name font-title" style="font-size: 32px;line-height: 1.25;">' + result + '</p>'
               $(titleNames[i]).html(ele);
           }
            
        });
    </script>
  </body>
</html>
<@studio.toolSupport />