// report Page Not Found with Matomo event
window.onload = function() {
    if ( window._paq && window.location.hostname && window.location.hostname !== 'localhost' ) {
        console.log('track Matomo event for '+ window.location.pathname);
        window._paq.push(['trackEvent', 'Errors', 'Page Not Found', window.location.pathname]);
    }
}