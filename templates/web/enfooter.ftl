<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer class="footer" <@studio.iceAttr component=contentModel/>>
    <div class="footer__container block flex">
        <!-- address -->
        <section class="footer__item-address" id="address">
            <h3 class="text--uppercase mb-5" style="font-weight: 600; font-size: 13px;">${contentModel.name_s}</h3>
            <p class="mb-5" style="font-weight: 100; font-size: 13px;">${contentModel.address_s}</p>
            <p class="mb-5" style="font-weight: 100; font-size: 13px;">Phone: ${contentModel.phone_s} - Fax: ${contentModel.fax_s}</p>
            <p class="mb-5" style="font-weight: 100; font-size: 13px;">Email: ${contentModel.email_s}</p>
        </section>
        <!-- /address -->

        <!-- social -->
        <section class="footer__item text--center" id="social">
            <p class="footer__item-title text--uppercase font-bold font-title" style="font-size: 18px;">Connect to mekovet</p>
            <ul class="footer__item-btns flex">
                <li><a href="${contentModel.fburl_s}"><img src="/static-assets/images/btn_facebook.png" alt="Facebook"></a></li>
                <#--<li><a href="${contentModel.twitterurl_s}"><img src="/static-assets/images/btn_twitter.png" alt="Twitter"></a></li> -->
                <li><a href="${contentModel.youtubeurl_s}"><img src="/static-assets/images/btn_youtube.png" alt="Youtube"></a></li>
                <#--<li><a href="${contentModel.linkedinurl_s}"><img src="/static-assets/images/btn_linkedin.png" alt="Linkedin"></a></li> -->
            </ul>
        </section>
        <!-- /social -->
        
        <!-- links -->
        <section style="font-weight: 100;" class="footer__item-policy text--center" id="social">
            <ul class="footer__item-links flex">
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="#">information security policies</a></li>
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="#">website's policies</a></li>
                <li><a class="text--uppercase font-title" style=" margin-bottom: 15px;" href="#">website usage convention</a></li>
            </ul>
        </section>

        <!-- dấu xác nhận đã đăng ký của bộ công thương -->
        <section class="footer__item" id="bct">
            <img class="footer__item-img" src="${contentModel.tick_s}" alt="Bộ Công thương">
            <p class="" style="font-weight: 100; font-size: 11px;">${contentModel.copyrighted_s}</p>
        </section>
        <!-- /dấu xác nhận đã đăng ký của bộ công thương -->
    </div>
</footer>
<@studio.toolSupport />