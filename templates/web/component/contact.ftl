<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="section-title">
    <div class="section-title__content block">
        <h1 class="section-title__content-text text--uppercase">liên hệ</h1>
    </div>
</div>
<div class="container pl-lg-0 pl-md-0" style="line-height:1.5;font-size: 28px; font-family: Roboto Condensed, sans-serif !important;">
    <h4 style="margin-bottom: 0px; font-family: Roboto Condensed, sans-serif !important;" class="text-uppercase font-weight-bold violet-color">${contentModel.companyName_s}</h4>
    <span class="d-block font-weight-bold violet-color " style="font-size: 26px;font-family: Roboto Condensed, sans-serif !important;">Trụ sở chính:</span>
    <span class="d-block font-weight-bold violet-color" style="font-size: 26px;font-family: Roboto Condensed, sans-serif !important;">${contentModel.companyHeadquater_s}</span>
    <span class="d-block font-weight-bold violet-color" style="font-size: 26px;font-family: Roboto Condensed, sans-serif !important;">Điện thoại: ${contentModel.phoneNumber_s} - Fax: ${contentModel.fax_s} - Email: ${contentModel.email_s}</span>
    <span class="font-weight-bold violet-color" style="font-size: 26px;font-family: Roboto Condensed, sans-serif !important;">Chứng nhận ĐKKD: 1200505472 - Ngày cấp: 28/01/2002  - Nơi cấp: Sở KHĐT Tiền Giang</span>
    <form action="/api/1/services/contactUs.json" method="GET">
        <div class="row">
            <label class="col-md-2 mb-1 mt-5" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Họ tên</label>
            <div class="col-md-10 mb-1 mt-md-5">
                <input type="text" class="form-control" name="name" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Công ty</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="company" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Email</label>
            <div class="col-md-10 mb-1">
                <input type="email" class="form-control" name="email" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Điện thoại</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="phone" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Tiêu đề</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="title" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Nội dung</label>
            <div class="col-md-10 mb-1">
                <textarea class="form-control" name="content" ></textarea>
            </div>
            <div class="col-md-12 mb-1 mt-1">
                <p class="text-right">
                    <button onclick="openSpinner()" class="btn btn-warning font-weight-bold violet-color" type="submit" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Gửi</button>
                    <button class="btn btn-warning font-weight-bold violet-color" type="reset" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Hủy</button>
                </p>
            </div>
            <div class="col-md-12">
                ${contentModel.mapsFrame_s}
            </div>
        </div>
    </form>
</div>
<@studio.toolSupport />