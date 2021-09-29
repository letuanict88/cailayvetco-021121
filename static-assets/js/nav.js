function toggleNav() {
    var nav = document.getElementById("menu");
    if(nav.className === "nav__menu") {
        nav.className += " show";
    } else {
        nav.className = "nav__menu";
    }
}