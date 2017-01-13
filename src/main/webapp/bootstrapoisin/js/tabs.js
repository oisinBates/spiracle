//taken from: http://stackoverflow.com/questions/7862233/twitter-bootstrap-tabs-go-to-specific-tab-on-page-reload-or-hyperlink
//http://www.bootply.com/VQqzOawoYc
//Context: Here's a Bootlpy demo for Bootstrap 3: bootply.com/render/VQqzOawoYc#tab2 and the source code – ZimSystem May 13 '14 at 14:08

// Javascript to enable link to tab
var hash = document.location.hash;
var prefix = "tab_";
if (hash) {
    $('.nav-tabs a[href='+hash.replace(prefix,"")+']').tab('show');
}

// Change hash for page-reload
$('.nav-tabs a').on('shown.bs.tab', function (e) {
    window.location.hash = e.target.hash.replace("#", "#" + prefix);
});
