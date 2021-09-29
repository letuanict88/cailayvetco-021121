<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="section-title">
    <div class="section-title__content block">
        <h1 class="section-title__content-text text--uppercase">Contact</h1>
    </div>
</div>
<div class="container pl-lg-0 pl-md-0" style="line-height:1.5;font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">
    <h4 style="margin-bottom: 0px;" class="text-uppercase font-weight-bold violet-color" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">${contentModel.companyName_s}</h4>
    <span class="d-block font-weight-bold violet-color" style="font-size: 26px;font-family: Roboto Condensed, sans-serif !important;">Headquarter:</span>
    <span class="d-block font-weight-bold violet-color" style="font-size: 26px;font-family: Roboto Condensed, sans-serif !important;">${contentModel.companyHeadquater_s}</span>
    <span class="font-weight-bold violet-color" style="font-size: 26px;font-family: Roboto Condensed, sans-serif !important;">Phone: ${contentModel.phoneNumber_s} - Fax: ${contentModel.fax_s} - Email: ${contentModel.email_s}</span>
    <form action="/api/1/services/contactUs.json" method="GET">
        <div class="row">
            <label class="col-md-2 mb-1 mt-5" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Full name</label>
            <div class="col-md-10 mb-1 mt-md-5">
                <input type="text" class="form-control" name="name" id="name" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Company</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="company" id="company" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Email</label>
            <div class="col-md-10 mb-1">
                <input type="email" class="form-control" name="email" id="email" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Phone</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="phone" id="phone" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Title</label>
            <div class="col-md-10 mb-1">
                <input type="text" class="form-control" name="title" id="title" required/>
            </div>
            <label class="col-md-2 mb-1" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Content</label>
            <div class="col-md-10 mb-1">
                <textarea class="form-control" name="content" id="content"></textarea>
            </div>
            <div class="col-md-12 mb-1 mt-1">
                <p class="text-right">
                    <button onclick="openSpinner()" class="btn btn-warning font-weight-bold violet-color" type="submit" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Send</button>
                    <button class="btn btn-warning font-weight-bold violet-color" type="reset" style="font-size: 28px;font-family: Roboto Condensed, sans-serif !important;">Cancel</button>
                </p>
            </div>
            <div class="col-md-12">
                ${contentModel.mapsFrame_s}
            </div>
        </div>
    </form>
</div>
<@studio.toolSupport />