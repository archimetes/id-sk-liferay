/*
 * This function gets loaded when all the HTML, not including the portlets, is
 * loaded.
 */
AUI().ready(function () {
    if (document.getElementById("footer-feedback-usefull-question__yes")) {
        document.getElementById("footer-feedback-usefull-question__yes").onclick = function () {
            document.getElementById("footer-feedback-usefull-question").className = "idsk-footer-feedback-usefull-question-hidden";
            document.getElementById("footer-feedback__sent").className = "idsk-footer-feedback__sent";
        };
    }

    if (document.getElementById("footer-feedback-usefull-question__no")) {
        document.getElementById("footer-feedback-usefull-question__no").onclick = function () {
            document.getElementById("footer-feedback-usefull-question").className = "idsk-footer-feedback-usefull-question-hidden";
            document.getElementById("footer-feedback__sent").className = "idsk-footer-feedback__sent";
        };
    }

    if (document.getElementById("footer-feedback-report-button")) {
        document.getElementById("footer-feedback-report-button").onclick = function () {
            var footer_feedback_report_form = document.getElementById("footer-feedback-report-form").className;
            if (footer_feedback_report_form == 'idsk-footer-feedback-report-form-hidden') {
                document.getElementById("footer-feedback-report-form").className = "idsk-footer-feedback-report-form";
            } else {
                document.getElementById("footer-feedback-report-form").className = "idsk-footer-feedback-report-form-hidden";
            }
        };
    }

    if (document.getElementById("footer-feedback-report-form-hidden")) {
        document.getElementById("footer-feedback-report-form-hidden").onclick = function () {
            document.getElementById("footer-feedback-report-form").className = "idsk-footer-feedback-report-form-hidden";
        };
    }

    if (window.location.search.indexOf("DDMFormPortlet") > -1) {
        document.getElementById("footer-feedback-report-form").className = "idsk-footer-feedback-report-form";
        document.getElementById("footer-feedback-report-form").scrollIntoView();
    }
});

/*
 * This function gets loaded after each and every portlet on the page.
 *
 * portletId: the current portlet's id
 * node: the Alloy Node object of the current portlet
 */
Liferay.Portlet.ready(function (_portletId, _node) {});

/*
 * This function gets loaded when everything, including the portlets, is on
 * the page.
 */
Liferay.on('allPortletsReady', function () {
    Array.from(document.getElementsByClassName("lrsk-expanding")).forEach(function( item){
        item.addEventListener( "click", function(event){
            var target = event.target;
            while( !target.classList.contains("lrsk-expanding") && target.parentNode!=null ){
                target = target.parentNode;
            }
            target.classList.toggle('expanded');
            if( target.classList.contains("expanded")){
                target.setAttribute("title", target.dataset['textForHide'] );
                target.setAttribute("aria-label", target.dataset['textForHide'] );
                target.setAttribute("aria-expanded", true);
            }else{
                target.setAttribute("title", target.dataset['textForShow'] );
                target.setAttribute("aria-label", target.dataset['textForShow'] );
                target.setAttribute("aria-expanded", false);
            }
            document.getElementById( target.dataset['expandTarget'] ).classList.toggle('expanded');
        },false);
  });

  document.querySelectorAll(".idsk-header-web__main-headline-menu-button").forEach(function(element) {
        element.addEventListener("click", function() {
            if (element.innerHTML.indexOf("Menu") > -1) {
                element.innerHTML = element.innerHTML.replace("Menu", "Zavrieť");
            } else {
                element.innerHTML = element.innerHTML.replace("Zavrieť", "Menu");
            }

            var searchElement = document.querySelector(".idsk-header-web__main-headline-search-button");
            searchElement.classList.toggle("idsk-header-web__main-headline-search-button--active");

            var logoElement = document.querySelector(".idsk-header-web__main-logo--mobile");
            logoElement.classList.toggle("idsk-header-web__main-logo--mobile-hidden");

            var actionElement = document.querySelector(".idsk-header-web__main-action");
            actionElement.classList.toggle("idsk-header-web__main-action--mobile");

            var navElement = document.querySelector(".idsk-header-web__nav");
            navElement.classList.toggle("idsk-header-web__nav--mobile");

            var menuOpenElement = document.querySelector(".idsk-header-web__menu-open");
            menuOpenElement.classList.toggle("idsk-header-web__menu-open--hidden");

            var menuCloseElement = document.querySelector(".idsk-header-web__menu-close");
            menuCloseElement.classList.toggle("idsk-header-web__menu-close--active");
        });
    });

    document.querySelector(".idsk-header-web__main-headline-search-button").addEventListener("click", function() {
        var searchElement = document.querySelector(".idsk-header-web__main-action .navbar-form");
        searchElement.classList.toggle("idsk-header-web__main-action-search-button--active");
    });
});