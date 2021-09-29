<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer class="footer" <@studio.iceAttr component=contentModel/>>
    <div class="footer__container block flex">
        <!-- address -->
        <section class="footer__item-address" id="address">
            <h3 class="text--uppercase mb-5" style="font-weight: 600; font-size: 13px;">${contentModel.name_s}</h3>
            <p class="mb-5 " style="font-weight: 100; font-size: 13px;">${contentModel.address_s}</p>
            <p class="mb-5 " style="font-weight: 100; font-size: 13px;">Điện thoại: ${contentModel.phone_s} - Fax: ${contentModel.fax_s}</p>
            <p class="mb-5 " style="font-weight: 100; font-size: 13px;">Email: ${contentModel.email_s}</p>
            <p class="mb-5 " style="font-weight: 100; font-size: 13px;">Chứng nhận Đăng ký Kinh doanh số: 1200505472</p>
            <p class="mb-5 " style="font-weight: 100; font-size: 13px;">Ngày cấp: 28/01/2002 - Nơi cấp: Sở KHĐT Tiền Giang</p>
       </section>
        <!-- /address -->

        <!-- social -->
        <section class="footer__item text--center" id="social">
            <p class="footer__item-title text--uppercase font-bold font-title" style="font-size: 18px;">kết nối với mekovet</p>
            <ul class="footer__item-btns flex">
                <li><a href="${contentModel.fburl_s}"><img src="/static-assets/images/btn_facebook.png" alt="Facebook"></a></li>
               <#-- <li><a href="${contentModel.twitterurl_s}"><img src="/static-assets/images/btn_twitter.png" alt="Twitter"></a></li> -->
                <li><a href="${contentModel.youtubeurl_s}"><img src="/static-assets/images/btn_youtube.png" alt="Youtube"></a></li>
               <#-- <li><a href="${contentModel.linkedinurl_s}"><img src="/static-assets/images/btn_linkedin.png" alt="Linkedin"></a></li> -->
            </ul>
        </section>
        <!-- /social -->
        
        <!-- links -->
        <section style="font-weight: 100;" class="footer__item text--center" id="social">
            <ul class="footer__item-links flex">
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="/chinh-sach/chinh-sach-bao-mat-thong-tin">chính sách bảo mật thông tin</a></li>
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="/chinh-sach/chinh-sach-website">chính sách website</a></li>
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="/chinh-sach/quy-uoc-su-dung-website">quy ước sử dụng website</a></li>
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="/chinh-sach/dieu-kien-giao-dich-chung">điều kiện giao dịch chung</a></li>
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="/chinh-sach/van-chuyen-va-giao-nhan">vận chuyển và giao nhận</a></li>
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="/chinh-sach/phuong-thuc-thanh-toan">Phương thức thanh toán</a></li>
            </ul>
        </section>

        <!-- dấu xác nhận đã đăng ký của bộ công thương -->
        <section class="footer__item-copyright" id="bct">
            <a href='http://online.gov.vn/Home/WebDetails/72369'>
            <img class="footer__item-img" src="${contentModel.tick_s}" alt="Bộ Công thương">
            </a>
            <p class="" style="font-weight: 100; font-size: 11px;">${contentModel.copyrighted_s}</p>
        </section>
        
        <!-- /dấu xác nhận đã đăng ký của bộ công thương -->
    </div>
    <div class="block flex old-site" style="width:100%; justify-content:center; background: #322372;">
            <a href="http://site.cailayvetco.com/"<p class="footer__item-title font-bold font-title text--center" style="font-size: 16px; padding-top:10px; color:#fff">Quay lại giao diện cũ website Mekovet</p></a>
    </div>
</footer>
<@studio.toolSupport />