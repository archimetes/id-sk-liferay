<div class="idsk-cookie-banner pdt-20" data-nosnippet="" role="region" aria-label="Cookies na stránke verejnej správy SR">
    <!-- COOKIES MESSAGE -->
    <div class="idsk-cookie-banner__message">
        <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl">
            <div class="idsk-cookie-banner__message-two-thirds">
                <h2 class="idsk-cookie-banner__heading">
                    Cookies na stránke verejnej správy SR
                </h2>
                <div class="idsk-cookie-banner__content">
                    <p>Používame základné cookies súbory aby mohla táto stránka fungovať.</p>
                    <p>Taktiež používame analytické súbory, akceptovaním súhlasíte s ich používaním.</p>
                </div>
            </div>
        </div>
        <div class="idsk-button-group">
            <a class="link" href="/cookies/" title="Nastavenia cookies">
                Nastavenia cookies
            </a>
            <button type="button" class="btn btn-primary js-cookies-button-accept" data-module="idsk-button">
                Prijať všetky cookies
            </button>
            <button type="button" class="btn btn-primary js-cookies-button-reject" data-module="idsk-button">
                Odmietnuť všetky cookies
            </button>
        </div>
    </div>

    <!-- COOKIES ACCEPTED -->
    <div class="idsk-cookie-banner__message js-cookie-banner-accepted app-width-container"
         role="alert" hidden="">
        <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl">
            <div class="idsk-cookie-banner__message-two-thirds">
                <div class="idsk-cookie-banner__content">
                    <p>
                        Prijali ste ukladanie analytických cookie súborov. Túto voľbu môžete kedykoľvek zmeniť v <a
                                class="link" href="/cookies/" title="nastaveniach cookies">nastaveniach cookies</a>.
                    </p>
                </div>
            </div>
        </div>
        <div class="idsk-button-group">
            <button type="button" class="btn btn-primary js-cookies-button-accepted-hide" data-module="idsk-button">
                Skryť správu
            </button>
        </div>
    </div>

    <!-- COOKIES REJECTED -->
    <div class="idsk-cookie-banner__message js-cookie-banner-rejected app-width-container"
         role="alert" hidden="">
        <div class="lfr-layout-structure-item-container container-fluid container-fluid-max-xl">
            <div class="idsk-cookie-banner__message-two-thirds">
                <div class="idsk-cookie-banner__content">
                    Odmietli ste ukladanie analytických cookie súborov. Túto voľbu môžete kedykoľvek zmeniť v <a
                            class="link" href="/cookies/" title="nastaveniach cookies">nastaveniach cookies</a>.<p></p>
                </div>
            </div>
        </div>
        <div class="idsk-button-group">
            <button type="button" class="btn btn-primary js-cookies-button-rejected-hide" data-module="idsk-button">
                Skryť správu
            </button>
        </div>
    </div>
</div>


<script>
    var cookieBanner = document.querySelector('.idsk-cookie-banner')
    var cookieBannerAccepted = document.querySelector('.js-cookie-banner-accepted')
    var cookieBannerRejected = document.querySelector('.js-cookie-banner-rejected')
    var cookieMessage = document.querySelector('.idsk-cookie-banner__message')
    var acceptButton = document.querySelector('.js-cookies-button-accept')
    var rejectButton = document.querySelector('.js-cookies-button-reject')
    var acceptedButtonHide = document.querySelector('.js-cookies-button-accepted-hide')
    var rejectedButtonHide = document.querySelector('.js-cookies-button-rejected-hide')

    if(cookieBanner){

        cookieBanner.hidden = (localStorage.getItem('acceptedCookieBanner') === 'true')

        acceptButton.addEventListener('click', function (event) {
            cookieMessage.hidden = true
            cookieBannerAccepted.hidden = false
            localStorage.setItem('googleAnalytics', 'true')
            localStorage.setItem('acceptedCookieBanner', 'true')
            event.preventDefault()
            const ev = new Event('cookieSettingsChanged');
            document.dispatchEvent(ev);
        })

        rejectButton.addEventListener('click', function (event) {
            cookieMessage.hidden = true
            cookieBannerRejected.hidden = false
            localStorage.setItem('googleAnalytics', 'false')
            localStorage.setItem('acceptedCookieBanner', 'true')
            event.preventDefault()
            const ev = new Event('cookieSettingsChanged');
            document.dispatchEvent(ev);
        })

        acceptedButtonHide.addEventListener('click', function (event) {
            cookieBanner.hidden = true
            event.preventDefault()
        })

        rejectedButtonHide.addEventListener('click', function (event) {
            cookieBanner.hidden = true
            event.preventDefault()
        })
    }
</script>
