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

});