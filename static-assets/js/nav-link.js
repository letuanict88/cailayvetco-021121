$(document).ready(function() {
    var url = window.location;
    $('#nav-content a').removeClass('active');
    $('#nav-content a').filter(function() {
        return this.href == url;
    }).addClass('active');
    
    if (url.href.indexOf('/gioi-thieu-chung') > -1) {
    $('#nav-content a').filter(function() {
        return this.href == getContextPath()+"/gioithieu";
    }).addClass('active');
    }
    
    if (url.href.indexOf('/san-pham-1') > -1) {
    $('#menu a').each(function() {
        if (this.href == getContextPath()+"/san-pham"){
            $(this).addClass('active');
        }
    });
    }
    
    if (url.href.indexOf('/ban-tin') > -1) {
    $('#menu a').each(function() {
        if (this.href == getContextPath()+"/tin-tuc"){
            $(this).addClass('active');
        }
    });
    }
    
    if (url.href.indexOf('/ho-tro-ky-thuat') > -1) {
    $('#menu a').each(function() {
        if (this.href == getContextPath()+"/ho-tro-ky-thuat/benh-va-dieu-tri"){
            $(this).addClass('active');
        }
    });
    }
    
     if (url.href.indexOf('/quan-he-co-dong') > -1) {
    $('#menu a').each(function() {
        if (this.href == getContextPath()+"/quan-he-co-dong"){
            $(this).addClass('active');
        }
    });
    }
    
    if (url.href.indexOf('/tin-tuyen-dung') > -1) {
    $('#menu a').each(function() {
        if (this.href == getContextPath()+"/co-hoi-nghe-nghiep"){
            $(this).addClass('active');
        }
    });
    }
    
});

function getContextPath() {
   return  window.location.protocol + "//" + window.location.host
}
