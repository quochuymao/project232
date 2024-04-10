<!DOCTYPE html>
<!-- saved from url=(0068)https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/ -->
<html class="js wf-arimo-n4-active wf-ptserif-n4-active wf-ptserif-i4-active wf-ptserif-n7-active wf-ptserif-i7-active wf-active" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="https://microcontrolere.wordpress.com/xmlrpc.php">

<title>MPPT Solar Charger – microcontrolere</title>
<script src="./microcontrolere.wordpress_files/webfont.js.tải xuống" type="text/javascript" async=""></script><script type="text/javascript">
  WebFontConfig = {"google":{"families":["Arimo:r:latin,latin-ext","PT+Serif:r,i,b,bi:latin,latin-ext"]}};
  (function() {
    var wf = document.createElement('script');
    wf.src = 'https://s0.wp.com/wp-content/plugins/custom-fonts/js/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
	})();
</script><link rel="stylesheet" href="./microcontrolere.wordpress_files/css" media="all"><style id="jetpack-custom-fonts-css">.wf-active body{font-family:"PT Serif",serif}.wf-active .search-container .search-field{font-family:"PT Serif",serif}.wf-active .blog-description{font-family:"PT Serif",serif}.wf-active .post-content p.page-links{font-family:"PT Serif",serif}.wf-active .post-content{font-family:"PT Serif",serif}.wf-active .post-content h4, .wf-active .post-content h5, .wf-active .post-content h6{font-family:"PT Serif",serif}.wf-active .post-content blockquote p{font-family:"PT Serif",serif}.wf-active .post-content blockquote cite{font-family:"PT Serif",serif}.wf-active .post-content .gallery-caption, .wf-active .post-content .wp-caption-text{font-family:"PT Serif",serif}.wf-active .post-content fieldset legend{font-family:"PT Serif",serif}.wf-active .post-content label{font-family:"PT Serif",serif}.wf-active .post-content input, .wf-active .post-content textarea{font-family:"PT Serif",serif}.wf-active .pingbacklist li:before{font-family:"PT Serif",serif}.wf-active .comments-nav .fleft a:before{font-family:"PT Serif",serif}.wf-active .comments-nav .fright a:after{font-family:"PT Serif",serif}.wf-active .comment-respond input[type="text"], .wf-active .comment-respond textarea{font-family:"PT Serif",serif}.wf-active .comment-respond input[type="submit"]{font-family:"PT Serif",serif}.wf-active .wrapper .search-field{font-family:"PT Serif",serif}.wf-active .comment-respond#respond{font-family:"PT Serif",serif}.wf-active .blog-title{font-weight:400;font-style:normal}.wf-active .post-title{font-family:"Arimo",sans-serif;font-weight:400;font-style:normal}.wf-active .single-post .post-title{font-weight:400;font-style:normal}.wf-active .related-posts-title{font-weight:400;font-style:normal}.wf-active .post-content h1, .wf-active .post-content h2, .wf-active .post-content h3{font-family:"Arimo",sans-serif;font-weight:400;font-style:normal}.wf-active .post-content h1, .wf-active .post-content h2, .wf-active .post-content h3{font-family:"Arimo",sans-serif;font-weight:400;font-style:normal}.wf-active .post-content h1{font-style:normal;font-weight:400}.wf-active .post-content h2{font-style:normal;font-weight:400}.wf-active .post-content h3{font-style:normal;font-weight:400}.wf-active .comment-reply-title, .wf-active .comments-title{font-weight:400;font-style:normal}.wf-active .comment-reply-title .fa, .wf-active .comments-title .fa{font-style:normal;font-weight:400}.wf-active .widget-title{font-weight:400;font-style:normal}.wf-active .widget_rss li a{font-family:"Arimo",sans-serif;font-weight:400;font-style:normal}.wf-active .rowling-widget-list .title{font-family:"Arimo",sans-serif;font-weight:400;font-style:normal}.wf-active .post-content div#jp-relatedposts h3.jp-relatedposts-headline{font-family:"Arimo",sans-serif;font-style:normal;font-weight:400}</style>
<script>document.documentElement.className = document.documentElement.className.replace("no-js","js");</script>
<link rel="dns-prefetch" href="https://s0.wp.com/">
<link rel="dns-prefetch" href="https://fonts.googleapis.com/">
<link rel="alternate" type="application/rss+xml" title="microcontrolere » Feed" href="https://microcontrolere.wordpress.com/feed/">
<link rel="alternate" type="application/rss+xml" title="microcontrolere » Comments Feed" href="https://microcontrolere.wordpress.com/comments/feed/">
<link rel="alternate" type="application/rss+xml" title="microcontrolere » MPPT Solar Charger Comments Feed" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/feed/">
	<script type="text/javascript">
		/* <![CDATA[ */
		function addLoadEvent(func) {
			var oldonload = window.onload;
			if (typeof window.onload != 'function') {
				window.onload = func;
			} else {
				window.onload = function () {
					oldonload();
					func();
				}
			}
		}
		/* ]]> */
	</script>
			<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s0.wp.com\/wp-content\/mu-plugins\/wpcom-smileys\/twemoji\/2\/72x72\/","ext":".png","svgUrl":"https:\/\/s0.wp.com\/wp-content\/mu-plugins\/wpcom-smileys\/twemoji\/2\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/s0.wp.com\/wp-includes\/js\/wp-emoji-release.min.js?m=1582709031h&ver=5.4-RC1-47425"}};
			/*! This file is auto-generated */
			!function(e,a,t){var r,n,o,i,p=a.createElement("canvas"),s=p.getContext&&p.getContext("2d");function c(e,t){var a=String.fromCharCode;s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,e),0,0);var r=p.toDataURL();return s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,t),0,0),r===p.toDataURL()}function l(e){if(!s||!s.fillText)return!1;switch(s.textBaseline="top",s.font="600 32px Arial",e){case"flag":return!c([127987,65039,8205,9895,65039],[127987,65039,8203,9895,65039])&&(!c([55356,56826,55356,56819],[55356,56826,8203,55356,56819])&&!c([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]));case"emoji":return!c([55357,56424,55356,57342,8205,55358,56605,8205,55357,56424,55356,57340],[55357,56424,55356,57342,8203,55358,56605,8203,55357,56424,55356,57340])}return!1}function d(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(i=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},o=0;o<i.length;o++)t.supports[i[o]]=l(i[o]),t.supports.everything=t.supports.everything&&t.supports[i[o]],"flag"!==i[o]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[i[o]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(r=t.source||{}).concatemoji?d(r.concatemoji):r.wpemoji&&r.twemoji&&(d(r.twemoji),d(r.wpemoji)))}(window,document,window._wpemojiSettings);
		</script><script src="./microcontrolere.wordpress_files/wp-emoji-release.min.js.tải xuống" type="text/javascript" defer=""></script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
	<link rel="stylesheet" id="all-css-0-1" href="./microcontrolere.wordpress_files/saved_resource(1)" type="text/css" media="all">
<style id="wp-block-library-inline-css">
.has-text-align-justify {
	text-align:justify;
}
</style>
<link crossorigin="anonymous" rel="stylesheet" id="fonts-css" href="./microcontrolere.wordpress_files/css(1)" media="all">
<link rel="stylesheet" id="all-css-2-1" href="./microcontrolere.wordpress_files/saved_resource(2)" type="text/css" media="all">
<link rel="stylesheet" id="print-css-3-1" href="./microcontrolere.wordpress_files/global-print.css" type="text/css" media="print">
<link rel="stylesheet" id="all-css-4-1" href="./microcontrolere.wordpress_files/saved_resource(3)" type="text/css" media="all">
<style id="jetpack-global-styles-frontend-style-inline-css">
:root { --font-headings: unset; --font-base: unset; --font-headings-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif; --font-base-default: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;}
</style>
<script>
var related_posts_js_options = {"post_heading":"h4"};
</script>
<script type="text/javascript" src="./microcontrolere.wordpress_files/saved_resource(4)"></script>
<link rel="stylesheet" id="all-css-0-2" href="./microcontrolere.wordpress_files/style(1).css" type="text/css" media="all">
<!--[if lt IE 8]>
<link rel='stylesheet' id='highlander-comments-ie7-css'  href='https://s0.wp.com/wp-content/mu-plugins/highlander-comments/style-ie7.css?m=1351637563h&#038;ver=20110606' media='all' />
<![endif]-->
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://microcontrolere.wordpress.com/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://s0.wp.com/wp-includes/wlwmanifest.xml"> 
<link rel="prev" title="Cum se incarca bootloader in ATmega 328P folosind Arduino Uno ca programator" href="https://microcontrolere.wordpress.com/2016/08/29/cum-se-incarca-bootloader-in-atmega-328p-folosind-arduino-uno-ca-programator/">
<link rel="next" title="Despre Raspberry Pi" href="https://microcontrolere.wordpress.com/2017/12/09/despre-raspberry-pi/">
<meta name="generator" content="WordPress.com">
<link rel="canonical" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/">
<link rel="shortlink" href="https://wp.me/p4me9O-aG">
<link rel="alternate" type="application/json+oembed" href="https://public-api.wordpress.com/oembed/?format=json&amp;url=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F&amp;for=wpcom-auto-discovery"><link rel="alternate" type="application/xml+oembed" href="https://public-api.wordpress.com/oembed/?format=xml&amp;url=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F&amp;for=wpcom-auto-discovery">
<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="article">
<meta property="og:title" content="MPPT Solar Charger">
<meta property="og:url" content="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/">
<meta property="og:description" content="Now a days the most advance solar charge controller are Maximum Power Point Tracking (MPPT). These controllers are more expensive than the PWM charge controllers, but it has several advantages in c…">
<meta property="article:published_time" content="2016-12-16T20:51:02+00:00">
<meta property="article:modified_time" content="2019-06-04T09:06:22+00:00">
<meta property="og:site_name" content="microcontrolere">
<meta property="og:image" content="https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg">
<meta property="og:image:width" content="616">
<meta property="og:image:height" content="270">
<meta property="og:locale" content="en_US">
<meta name="twitter:text:title" content="MPPT Solar Charger">
<meta name="twitter:image" content="https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg?w=640">
<meta name="twitter:card" content="summary_large_image">
<meta property="fb:app_id" content="249643311490">
<meta property="article:publisher" content="https://www.facebook.com/WordPresscom">

<!-- End Jetpack Open Graph Tags -->
<link rel="shortcut icon" type="image/x-icon" href="https://secure.gravatar.com/blavatar/8681a14e310ca841773d27aba74fbda7?s=32" sizes="16x16">
<link rel="icon" type="image/x-icon" href="https://secure.gravatar.com/blavatar/8681a14e310ca841773d27aba74fbda7?s=32" sizes="16x16">
<link rel="apple-touch-icon-precomposed" href="https://secure.gravatar.com/blavatar/8681a14e310ca841773d27aba74fbda7?s=114">
<link rel="openid.server" href="https://microcontrolere.wordpress.com/?openidserver=1">
<link rel="openid.delegate" href="https://microcontrolere.wordpress.com/">
<link rel="search" type="application/opensearchdescription+xml" href="https://microcontrolere.wordpress.com/osd.xml" title="microcontrolere">
<link rel="search" type="application/opensearchdescription+xml" href="https://s1.wp.com/opensearch.xml" title="WordPress.com">
		<script type="text/javascript">
		function __ATA_CC() {var v = document.cookie.match('(^|;) ?personalized-ads-consent=([^;]*)(;|$)');return v ? 1 : 0;}
		var __ATA_PP = { pt: 1, ht: 0, tn: 'rowling', amp: false, siteid: 8982, blogid: 64402984, consent: __ATA_CC(), flag: 2 };
		</script>
		<script type="text/javascript">
		!function(t){var n={};function e(r){if(n[r])return n[r].exports;var o=n[r]={i:r,l:!1,exports:{}};return t[r].call(o.exports,o,o.exports,e),o.l=!0,o.exports}e.m=t,e.c=n,e.d=function(t,n,r){e.o(t,n)||Object.defineProperty(t,n,{enumerable:!0,get:r})},e.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},e.t=function(t,n){if(1&n&&(t=e(t)),8&n)return t;if(4&n&&"object"==typeof t&&t&&t.__esModule)return t;var r=Object.create(null);if(e.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:t}),2&n&&"string"!=typeof t)for(var o in t)e.d(r,o,function(n){return t[n]}.bind(null,o));return r},e.n=function(t){var n=t&&t.__esModule?function(){return t.default}:function(){return t};return e.d(n,"a",n),n},e.o=function(t,n){return Object.prototype.hasOwnProperty.call(t,n)},e.p="https://c0.pubmine.com/2.2.01576584942509/",e(e.s=164)}({0:function(t,n){t.exports=function(t,n,e){return n in t?Object.defineProperty(t,n,{value:e,enumerable:!0,configurable:!0,writable:!0}):t[n]=e,t}},1:function(t,n){t.exports=function(t,n){if(!(t instanceof n))throw new TypeError("Cannot call a class as a function")}},10:function(t,n,e){"use strict";var r=e(17),o=e(8),i=e(20);t.exports=function(t,n,e){if(!r(t))return e;if(!o(n))return e;try{var u=n.split(".").reduce((function(t,n){return t[n]}),t);return i(u)?e:u}catch(t){return e}}},16:function(t,n,e){"use strict";t.exports=function(){}},164:function(t,n,e){"use strict";e.r(n);var r=e(0),o=e.n(r),i=e(29),u=e.n(i),c=e(16),f=e.n(c),s=e(34),a=e.n(s),p=e(45),l=e(46),d=e(23);function v(t,n){var e=Object.keys(t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(t);n&&(r=r.filter((function(n){return Object.getOwnPropertyDescriptor(t,n).enumerable}))),e.push.apply(e,r)}return e}function m(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},n=function(t){for(var n=1;n<arguments.length;n++){var e=null!=arguments[n]?arguments[n]:{};n%2?v(e,!0).forEach((function(n){o()(t,n,e[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(e)):v(e).forEach((function(n){Object.defineProperty(t,n,Object.getOwnPropertyDescriptor(e,n))}))}return t}({r:(new Date).getTime()},window.__ATA_PP,{},Object(p.a)(t),{us_privacy:Object(l.a)()}),e=a()("//s.pubmine.com/mhead.js",n);u()(e,f.a)}Object(d.b)()?Object(d.a)().then(m,m):m()},17:function(t,n,e){"use strict";t.exports=function(t){var n=typeof t;return"object"===n&&null!=t||"function"===n}},2:function(t,n){function e(t,n){for(var e=0;e<n.length;e++){var r=n[e];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(t,r.key,r)}}t.exports=function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}},20:function(t,n,e){"use strict";t.exports=function(t){return void 0===t}},21:function(t,n,e){"use strict";t.exports=function(t,n){for(var e=0,r=t.length;e<r;e++){var o=t[e];if(n(o,e))return o}return null}},23:function(t,n,e){"use strict";e.d(n,"a",(function(){return p})),e.d(n,"b",(function(){return l}));var r=e(35),o=e.n(r),i=e(10),u=e.n(i),c=e(9),f=e.n(c),s=e(3);function a(t){var n=Date.now();return function(t){return new o.a((function(n,e){if(window.__cmp){var r;window.setTimeout((function(){clearTimeout(r),e("cmp ping timeout")}),t),function t(){window.__cmp("ping",null,(function(o,i){i&&o.cmpLoaded?n():i?r=window.setTimeout(t,50):e("cmp ping returned error with data: ".concat(JSON.stringify(o)))}))}()}else e("CMP is not defined")}))}(t).then((function(){var e=Date.now()-n,r=t-e;return new o.a((function(t,n){window.__cmp("getConsentData",null,(function(e,r){r?t(e):n("cmp getConsentData returned error with data: ".concat(JSON.stringify(e)))})),setTimeout((function(){n("cmp getConsentData timeout")}),r)}))}))}function p(){return a(arguments.length>0&&void 0!==arguments[0]?arguments[0]:500).catch((function(t){return s.a.error(t),"boolean"==typeof(n=u()(window,"__ATA_PP.gdpr_applies"))?{gdprApplies:n}:{};var n}))}function l(){return f()(window.__cmp)}},25:function(t,n,e){"use strict";var r=e(21),o=e(33);t.exports=function(t,n){void 0===n&&(n=document.cookie);var e=n.split("; "),i=r(e,(function(n){return o(n,t+"=")}));return i?i.split("=")[1]:""}},29:function(t,n,e){"use strict";var r=e(16),o=e(9);t.exports=function(t,n,e){var i,u,c=document.createElement("script"),f=n instanceof HTMLElement&&n;if(i=o(n)?n:o(e)?e:r,c.src=t,c.onload=function(){i(void 0)},c.onerror=function(){i("error")},f)u=f;else{var s=document.getElementsByTagName("head");u=s&&0!==s.length?s[0]:document.documentElement}u.appendChild(c)}},3:function(t,n,e){"use strict";var r=e(1),o=e.n(r),i=e(2),u=e.n(i),c=e(0),f=e.n(c),s=function(){function t(){o()(this,t)}return u()(t,null,[{key:"configure",value:function(n){t.config=n}},{key:"error",value:function(t){function n(n,e){return t.apply(this,arguments)}return n.toString=function(){return t.toString()},n}((function(t,n){this.config&&this.config.onError?this.config.onError(t,n):window.console&&console.log(t,n)}))}]),t}();f()(s,"config",void 0),n.a=s},33:function(t,n,e){"use strict";t.exports=function(t,n){return t.indexOf(n)>-1}},34:function(t,n,e){"use strict";var r=e(33),o=e(76);t.exports=function(t,n){var e=o(n);return 0===e.length?t:t+(r(t,"?")?"&":"?")+e}},35:function(t,n,e){"use strict";var r,o=e(75),i=e(9);!function(t){t.REJECTED="rejected",t.RESOLVED="resolved",t.PENDING="pending"}(r||(r={}));var u=function(){function t(t,n){var e=this;this.status=r.PENDING,this.emitter=new o,this.onFulfilled=function(t){e.status===r.PENDING&&(e.status=r.RESOLVED,e.emitter.emit(r.RESOLVED,[t]))},this.onRejected=function(t){e.status===r.PENDING&&(e.status=r.REJECTED,e.emitter.emit(r.REJECTED,[t]))};var i=function(){return t(e.onFulfilled,e.onRejected)};n?i():setTimeout(i,0)}return t.resolve=function(n){return new t((function(t){t(n)}))},t.reject=function(n){return new t((function(t,e){e(n)}))},t.prototype.then=function(n,e){var o=this;return new t((function(u,c){o.emitter.on(r.RESOLVED,(function(e){if(i(n)){var r=n(e);r instanceof t?r.then(u,c):u(r)}else u(e)})),o.emitter.on(r.REJECTED,(function(n){if(i(e)){var r=e(n);r instanceof t?r.then(u,c):u(r)}else c(n)}))}),!0)},t.prototype.catch=function(n){var e=this;return new t((function(o){i(n)&&e.emitter.on(r.REJECTED,(function(e){var r=n(e);r instanceof t?r.then(o):o(r)})),e.emitter.on(r.RESOLVED,o)}),!0)},t}();t.exports=u},38:function(t,n,e){"use strict";t.exports=function(t){return"string"==typeof t&&t.length>0}},45:function(t,n,e){"use strict";e.d(n,"a",(function(){return i}));var r=e(8),o=e.n(r);function i(t){var n=t.gdprApplies,e=t.consentData;return{gdpr:"boolean"==typeof n?Number(n):void 0,gdpr_consent:o()(e)?e:void 0}}},46:function(t,n,e){"use strict";e.d(n,"a",(function(){return f}));var r=e(25),o=e.n(r),i=e(38),u=e.n(i),c="usprivacy";function f(){var t=o()(c);return u()(t)?t:null}},56:function(t,n,e){"use strict";t.exports=function(t){return null===t}},75:function(t,n,e){"use strict";var r=function(){function t(){this.events={}}return t.prototype.on=function(t,n){if(this.events[t]){if(-1!==(e=this.events[t]).indexOf(n))throw new Error('This handler has already been subcribed for "'+t+'" event');e.push(n)}else{var e;(e=[]).push(n),this.events[t]=e}},t.prototype.off=function(t,n){var e=this.events[t],r=e.indexOf(n);-1!==r&&e.splice(r,1)},t.prototype.emit=function(t,n){void 0===n&&(n=[]);var e=this.events[t];e&&e.map((function(t){n?t.apply(void 0,n):t()}))},t}();t.exports=r},76:function(t,n,e){"use strict";var r=e(56),o=e(20);t.exports=function(t){var n=Object.keys(t),e=[];return n.forEach((function(n){var i=t[n];r(i)||o(i)||e.push(n+"="+encodeURIComponent(t[n]))})),e.join("&")}},8:function(t,n,e){"use strict";t.exports=function(t){return"string"==typeof t}},9:function(t,n,e){"use strict";t.exports=function(t){return"function"==typeof t}}});
		</script><script src="./microcontrolere.wordpress_files/mhead.js.tải xuống"></script><meta name="application-name" content="microcontrolere"><meta name="msapplication-window" content="width=device-width;height=device-height"><meta name="msapplication-tooltip" content="Aplicatii si proiecte pentru incepatori"><meta name="msapplication-task" content="name=Subscribe;action-uri=https://microcontrolere.wordpress.com/feed/;icon-uri=https://secure.gravatar.com/blavatar/8681a14e310ca841773d27aba74fbda7?s=16"><meta name="msapplication-task" content="name=Sign up for a free blog;action-uri=http://wordpress.com/signup/;icon-uri=https://s0.wp.com/i/favicon.ico"><meta name="msapplication-task" content="name=WordPress.com Support;action-uri=http://support.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico"><meta name="msapplication-task" content="name=WordPress.com Forums;action-uri=http://forums.wordpress.com/;icon-uri=https://s0.wp.com/i/favicon.ico"><meta name="description" content="Now a days the most advance solar charge controller are Maximum Power Point Tracking (MPPT). These controllers are more expensive than the PWM charge controllers, but it has several advantages in compare to. The MPPT charge controllers are used for extracting the maximum available power from solar panels for charging battery under certain conditions. Of…">
<link rel="amphtml" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/amp/">
<link rel="stylesheet" type="text/css" href="./microcontrolere.wordpress_files/shCore.css"><link rel="stylesheet" type="text/css" href="./microcontrolere.wordpress_files/shThemeDefault.css"><style type="text/css"></style><script charset="utf-8" src="./microcontrolere.wordpress_files/rate.php"></script><link rel="stylesheet" type="text/css" id="gravatar-card-css" href="./microcontrolere.wordpress_files/hovercard.min.css"><link rel="stylesheet" type="text/css" id="gravatar-card-services-css" href="./microcontrolere.wordpress_files/services.min.css"><link type="text/css" rel="stylesheet" charset="UTF-8" href="./microcontrolere.wordpress_files/translateelement.css"><style type="text/css" id="pd_popup_holder_style_7462246_post_662">#pd_popup_holder_7462246_post_662 { position:absolute; display:none; width:350px; height:auto; top:0px; left:0px; z-index:10000; border:solid 1px #CCC; background-color:white; padding:0px 15px;font-family:Arial,Sans;box-shadow: -10px 10px 20px rgba(0, 0, 0, .5);-webkit-box-shadow: 0px 0px 6px rgba(0, 0, 0, .25);-moz-box-shadow: 0px 0px 6px rgba(0, 0, 0, .25); }</style></head>

	<body class="post-template-default single single-post postid-662 single-format-standard customizer-styles-applied has-featured-image has-site-logo highlander-enabled highlander-light">

		<a class="skip-link screen-reader-text" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#main">Skip to content</a>

		
			<nav class="top-nav">

				<div class="section-inner clear-fix">

					<ul class="header-top-menu">

						<li id="menu-item-874" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-874"><a href="https://microcontrolere.wordpress.com/demoboard/">Microchip</a>
<ul class="sub-menu">
	<li id="menu-item-905" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-905"><a href="https://microcontrolere.wordpress.com/2014/02/17/cuprins/">Despre microcontrolere</a></li>
	<li id="menu-item-909" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-909"><a href="https://microcontrolere.wordpress.com/2017/12/09/aplicatii-2/">Aplicatii microcontrolere</a></li>
</ul>
</li>
<li id="menu-item-873" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-873"><a href="https://microcontrolere.wordpress.com/arduino/">Arduino</a>
<ul class="sub-menu">
	<li id="menu-item-898" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-898"><a href="https://microcontrolere.wordpress.com/arduino/cuvant-inainte/">Despre Arduino</a></li>
	<li id="menu-item-901" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-901"><a href="https://microcontrolere.wordpress.com/2017/12/09/aplicatii/">Aplicatii Arduino</a></li>
</ul>
</li>
<li id="menu-item-877" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-877"><a href="https://microcontrolere.wordpress.com/raspberry-pi/">Raspberry Pi</a>
<ul class="sub-menu">
	<li id="menu-item-892" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-892"><a href="https://microcontrolere.wordpress.com/2017/12/09/despre-raspberry-pi/">Despre Raspberry Pi</a></li>
	<li id="menu-item-917" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-917"><a href="https://microcontrolere.wordpress.com/2017/12/09/aplicatii-raspberry-pi/">Aplicatii Raspberry Pi</a></li>
</ul>
</li>

					</ul> <!-- /header-top-menu -->

					<ul class="social-menu">

						<li id="menu-item-151" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-151"><a class="search-toggle" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#"><span class="screen-reader-text">Search</span></a></li>
					</ul> <!-- /social-menu -->

				</div> <!-- /section-inner -->

			</nav> <!-- /top-nav -->

		
		<div class="search-container">

			<div class="section-inner">

				
<form method="get" class="search-form" action="https://microcontrolere.wordpress.com/">
	<label>
		<span class="screen-reader-text">Search for:</span>
		<input type="search" class="search-field" placeholder="Search" value="" name="s" title="Search for:">
	</label>
	<button type="submit" class="search-button"><span class="fa fw fa-search"></span><span class="screen-reader-text">Search</span></button>
</form>

			</div> <!-- /section-inner -->

		</div> <!-- /search-container -->

		<header class="header-wrapper">

			<div class="header">

				<div class="section-inner">

					
						<a href="https://microcontrolere.wordpress.com/" class="site-logo-link" rel="home" itemprop="url"><img width="196" height="80" src="./microcontrolere.wordpress_files/embedded-systems.jpg" class="site-logo attachment-rowling_site_logo" alt="" data-size="rowling_site_logo" itemprop="logo" srcset="https://microcontrolere.files.wordpress.com/2016/01/embedded-systems.jpg?w=196 196w, https://microcontrolere.files.wordpress.com/2016/01/embedded-systems.jpg?w=392 392w, https://microcontrolere.files.wordpress.com/2016/01/embedded-systems.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2016/01/embedded-systems.jpg?w=300 300w" sizes="(max-width: 196px) 100vw, 196px" data-attachment-id="472" data-permalink="https://microcontrolere.wordpress.com/embedded-systems/" data-orig-file="https://microcontrolere.files.wordpress.com/2016/01/embedded-systems.jpg" data-orig-size="980,400" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="embedded-Systems" data-image-description="" data-medium-file="https://microcontrolere.files.wordpress.com/2016/01/embedded-systems.jpg?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2016/01/embedded-systems.jpg?w=616"></a>
						<h2 class="site-title">
							<a href="https://microcontrolere.wordpress.com/" title="microcontrolere — Aplicatii si proiecte pentru incepatori" rel="home">microcontrolere</a>
						</h2>

													<h4 class="site-description">Aplicatii si proiecte pentru incepatori</h4>
						
					
					
				</div> <!-- /section-inner -->

			</div> <!-- /header -->

			
		</header> <!-- /header-wrapper -->

<div class="wrapper section-inner">

	<main id="main" class="content">

	
		
		
			<article id="post-662" class="single clear-fix post-662 post type-post status-publish format-standard has-post-thumbnail hentry category-arduino tag-arduino-mppt-charger tag-mppt-solar-charger tag-po-algorithm tag-schematic-diagram-mppt-solar-charger fallback-thumbnail">

				<header class="post-header">

											<p class="post-categories"><a href="https://microcontrolere.wordpress.com/category/arduino/" rel="category tag">Arduino</a></p>
					
					<h1 class="post-title">MPPT Solar Charger</h1>
				</header> <!-- /post-header -->

				
					<figure class="post-image clear-fix">

						<img width="616" height="270" src="./microcontrolere.wordpress_files/lcd111.jpg" class="attachment-rowling-post-image size-rowling-post-image wp-post-image" alt="" srcset="https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg 616w, https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg?w=300 300w" sizes="(max-width: 616px) 100vw, 616px" data-attachment-id="861" data-permalink="https://microcontrolere.wordpress.com/lcd11/" data-orig-file="https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg" data-orig-size="616,270" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;1&quot;}" data-image-title="lcd11" data-image-description="" data-medium-file="https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2016/12/lcd111.jpg?w=616">
						
					</figure> <!-- /post-image -->

				
				<div class="post-meta">

					<span class="post-meta-date">Date: <a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/">16/12/2016</a></span><span class="post-meta-author">Author: <a href="https://microcontrolere.wordpress.com/author/asmlektor/">asmlektor</a></span> 
											<span class="post-comments">
							<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#comments"><span class="fa fw fa-comment"></span>228<span class="resp"> Comments</span></a>						</span>
					
					
				</div> <!-- /post-meta -->

				<div class="post-inner">

					
						<div class="post-content">

							<p>Now a days the most advance solar charge controller are Maximum Power Point Tracking (MPPT). These controllers are more expensive than the PWM charge controllers, but it has several advantages in compare to. The MPPT charge controllers are used for extracting the maximum available power from solar panels for charging battery under certain conditions.<br>
Of corse, you can buy one because to build one require some basic knowledge of electronics.<br>
MPPT circuit is based around a synchronous buck converter circuit.<br>
I shall not insist upon it. There are lot of knowledge on <a href="http://www.learnabout-electronics.org/PSU/psu33.php">this site</a>. A good job was made by Julian Ilett, who put a lot of youtube tutorials waiting for you.</p>
<p>First you can try one of that kind of converters and after a little encouragement and success you cant start an new project if you don`t keep reading the last one of these:</p>
<p>– Tim Nolan web archive page, with <a href="http://web.archive.org/web/20130430163911/http://www.timnolan.com/index.php?page=arduino-ppt-solar-charger">folowing link</a></p>
<p>–<a href="http://www.instructables.com/id/Arduino-powered-Solar-Battery-Charger/">Arduino powered solar battery charger</a></p>
<p>–<a href="http://www.instructables.com/id/ARDUINO-SOLAR-CHARGE-CONTROLLER-Version-20/?ALLSTEPS">Arduino solar charge controller</a></p>
<p>–<a href="http://www.electronicslovers.com/2015/09/arduino-based-mppt-solar-charge.html">Arduino based MPPT solar charger controller</a></p>
<p>I thanks to all of them for sharing their knowledge. The first one is Tim Nolan who initiated this adventure. And I think you will not be the last who will try.<br>
Now I can not tell you “Abandon all hope, ye who enter here.” but will not be so easy and you may try that just one more time in your life.<br>
All of these enthusiasts was inspired me to build one, and finish this project.</p>
<p>In <a href="http://www.instructables.com/id/ARDUINO-SOLAR-CHARGE-CONTROLLER-Version-30/">this page</a> deba168 wrote on 29.07.2016: “<em>I am no more working on this project due to some issues. This controller is not working.</em>”</p>
<p>I think you wrong. Your project is living. Look at here. I have nothing to complain. I just made some little changes, et voila…</p>
<p><a href="https://microcontrolere.files.wordpress.com/2019/04/schema-3-1.png"><img class="aligncenter size-full wp-image-992" src="./microcontrolere.wordpress_files/schema-3-1.png" alt="" width="616" height="423"></a></p>
<p>In the next image are the waveforms of input signals for the MOSFET`s and the output signal :</p>
<p><img data-attachment-id="718" data-permalink="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/oscilloscope/" data-orig-file="https://microcontrolere.files.wordpress.com/2016/12/oscilloscope.jpg" data-orig-size="388,706" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="oscilloscope" data-image-description="" data-medium-file="https://microcontrolere.files.wordpress.com/2016/12/oscilloscope.jpg?w=165" data-large-file="https://microcontrolere.files.wordpress.com/2016/12/oscilloscope.jpg?w=388" class="alignnone size-full wp-image-718 aligncenter" src="./microcontrolere.wordpress_files/oscilloscope.jpg" alt="oscilloscope" srcset="https://microcontrolere.files.wordpress.com/2016/12/oscilloscope.jpg 388w, https://microcontrolere.files.wordpress.com/2016/12/oscilloscope.jpg?w=82 82w, https://microcontrolere.files.wordpress.com/2016/12/oscilloscope.jpg?w=165 165w" sizes="(max-width: 388px) 100vw, 388px"></p>
<p style="text-align:center;"><strong>The waveforms are for 5V/div amplitude and 5 us/div timebase.<br>
</strong></p>
<p style="text-align:left;">And this is the image of my functional MPPT Solar Charger powered by an Mono Crystalline Silicon PV Module, with a maximum power of 50W (maximum 21,5V / 3,5A) , for charging a 12 V lead acid battery:</p>
<p><img src="./microcontrolere.wordpress_files/final.jpg" alt=""></p>
<p>The Arduino code is from from MPPT solar charger build around Tim Nolans open source MPPT solar prototype project updated by Debiasish Dutta in his website, <span id="result_box" class="short_text" lang="en">that I made <span class="">a couple of changes:</span></span></p>
<p>Arduino code:</p>
<div><div id="highlighter_624632" class="syntaxhighlighter  css"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td class="gutter"><div class="line number1 index0 alt2">1</div><div class="line number2 index1 alt1">2</div><div class="line number3 index2 alt2">3</div><div class="line number4 index3 alt1">4</div><div class="line number5 index4 alt2">5</div><div class="line number6 index5 alt1">6</div><div class="line number7 index6 alt2">7</div><div class="line number8 index7 alt1">8</div><div class="line number9 index8 alt2">9</div><div class="line number10 index9 alt1">10</div><div class="line number11 index10 alt2">11</div><div class="line number12 index11 alt1">12</div><div class="line number13 index12 alt2">13</div><div class="line number14 index13 alt1">14</div><div class="line number15 index14 alt2">15</div><div class="line number16 index15 alt1">16</div><div class="line number17 index16 alt2">17</div><div class="line number18 index17 alt1">18</div><div class="line number19 index18 alt2">19</div><div class="line number20 index19 alt1">20</div><div class="line number21 index20 alt2">21</div><div class="line number22 index21 alt1">22</div><div class="line number23 index22 alt2">23</div><div class="line number24 index23 alt1">24</div><div class="line number25 index24 alt2">25</div><div class="line number26 index25 alt1">26</div><div class="line number27 index26 alt2">27</div><div class="line number28 index27 alt1">28</div><div class="line number29 index28 alt2">29</div><div class="line number30 index29 alt1">30</div><div class="line number31 index30 alt2">31</div><div class="line number32 index31 alt1">32</div><div class="line number33 index32 alt2">33</div><div class="line number34 index33 alt1">34</div><div class="line number35 index34 alt2">35</div><div class="line number36 index35 alt1">36</div><div class="line number37 index36 alt2">37</div><div class="line number38 index37 alt1">38</div><div class="line number39 index38 alt2">39</div><div class="line number40 index39 alt1">40</div><div class="line number41 index40 alt2">41</div><div class="line number42 index41 alt1">42</div><div class="line number43 index42 alt2">43</div><div class="line number44 index43 alt1">44</div><div class="line number45 index44 alt2">45</div><div class="line number46 index45 alt1">46</div><div class="line number47 index46 alt2">47</div><div class="line number48 index47 alt1">48</div><div class="line number49 index48 alt2">49</div><div class="line number50 index49 alt1">50</div><div class="line number51 index50 alt2">51</div><div class="line number52 index51 alt1">52</div><div class="line number53 index52 alt2">53</div><div class="line number54 index53 alt1">54</div><div class="line number55 index54 alt2">55</div><div class="line number56 index55 alt1">56</div><div class="line number57 index56 alt2">57</div><div class="line number58 index57 alt1">58</div><div class="line number59 index58 alt2">59</div><div class="line number60 index59 alt1">60</div><div class="line number61 index60 alt2">61</div><div class="line number62 index61 alt1">62</div><div class="line number63 index62 alt2">63</div><div class="line number64 index63 alt1">64</div><div class="line number65 index64 alt2">65</div><div class="line number66 index65 alt1">66</div><div class="line number67 index66 alt2">67</div><div class="line number68 index67 alt1">68</div><div class="line number69 index68 alt2">69</div><div class="line number70 index69 alt1">70</div><div class="line number71 index70 alt2">71</div><div class="line number72 index71 alt1">72</div><div class="line number73 index72 alt2">73</div><div class="line number74 index73 alt1">74</div><div class="line number75 index74 alt2">75</div><div class="line number76 index75 alt1">76</div><div class="line number77 index76 alt2">77</div><div class="line number78 index77 alt1">78</div><div class="line number79 index78 alt2">79</div><div class="line number80 index79 alt1">80</div><div class="line number81 index80 alt2">81</div><div class="line number82 index81 alt1">82</div><div class="line number83 index82 alt2">83</div><div class="line number84 index83 alt1">84</div><div class="line number85 index84 alt2">85</div><div class="line number86 index85 alt1">86</div><div class="line number87 index86 alt2">87</div><div class="line number88 index87 alt1">88</div><div class="line number89 index88 alt2">89</div><div class="line number90 index89 alt1">90</div><div class="line number91 index90 alt2">91</div><div class="line number92 index91 alt1">92</div><div class="line number93 index92 alt2">93</div><div class="line number94 index93 alt1">94</div><div class="line number95 index94 alt2">95</div><div class="line number96 index95 alt1">96</div><div class="line number97 index96 alt2">97</div><div class="line number98 index97 alt1">98</div><div class="line number99 index98 alt2">99</div><div class="line number100 index99 alt1">100</div><div class="line number101 index100 alt2">101</div><div class="line number102 index101 alt1">102</div><div class="line number103 index102 alt2">103</div><div class="line number104 index103 alt1">104</div><div class="line number105 index104 alt2">105</div><div class="line number106 index105 alt1">106</div><div class="line number107 index106 alt2">107</div><div class="line number108 index107 alt1">108</div><div class="line number109 index108 alt2">109</div><div class="line number110 index109 alt1">110</div><div class="line number111 index110 alt2">111</div><div class="line number112 index111 alt1">112</div><div class="line number113 index112 alt2">113</div><div class="line number114 index113 alt1">114</div><div class="line number115 index114 alt2">115</div><div class="line number116 index115 alt1">116</div><div class="line number117 index116 alt2">117</div><div class="line number118 index117 alt1">118</div><div class="line number119 index118 alt2">119</div><div class="line number120 index119 alt1">120</div><div class="line number121 index120 alt2">121</div><div class="line number122 index121 alt1">122</div><div class="line number123 index122 alt2">123</div><div class="line number124 index123 alt1">124</div><div class="line number125 index124 alt2">125</div><div class="line number126 index125 alt1">126</div><div class="line number127 index126 alt2">127</div><div class="line number128 index127 alt1">128</div><div class="line number129 index128 alt2">129</div><div class="line number130 index129 alt1">130</div><div class="line number131 index130 alt2">131</div><div class="line number132 index131 alt1">132</div><div class="line number133 index132 alt2">133</div><div class="line number134 index133 alt1">134</div><div class="line number135 index134 alt2">135</div><div class="line number136 index135 alt1">136</div><div class="line number137 index136 alt2">137</div><div class="line number138 index137 alt1">138</div><div class="line number139 index138 alt2">139</div><div class="line number140 index139 alt1">140</div><div class="line number141 index140 alt2">141</div><div class="line number142 index141 alt1">142</div><div class="line number143 index142 alt2">143</div><div class="line number144 index143 alt1">144</div><div class="line number145 index144 alt2">145</div><div class="line number146 index145 alt1">146</div><div class="line number147 index146 alt2">147</div><div class="line number148 index147 alt1">148</div><div class="line number149 index148 alt2">149</div><div class="line number150 index149 alt1">150</div><div class="line number151 index150 alt2">151</div><div class="line number152 index151 alt1">152</div><div class="line number153 index152 alt2">153</div><div class="line number154 index153 alt1">154</div><div class="line number155 index154 alt2">155</div><div class="line number156 index155 alt1">156</div><div class="line number157 index156 alt2">157</div><div class="line number158 index157 alt1">158</div><div class="line number159 index158 alt2">159</div><div class="line number160 index159 alt1">160</div><div class="line number161 index160 alt2">161</div><div class="line number162 index161 alt1">162</div><div class="line number163 index162 alt2">163</div><div class="line number164 index163 alt1">164</div><div class="line number165 index164 alt2">165</div><div class="line number166 index165 alt1">166</div><div class="line number167 index166 alt2">167</div><div class="line number168 index167 alt1">168</div><div class="line number169 index168 alt2">169</div><div class="line number170 index169 alt1">170</div><div class="line number171 index170 alt2">171</div><div class="line number172 index171 alt1">172</div><div class="line number173 index172 alt2">173</div><div class="line number174 index173 alt1">174</div><div class="line number175 index174 alt2">175</div><div class="line number176 index175 alt1">176</div><div class="line number177 index176 alt2">177</div><div class="line number178 index177 alt1">178</div><div class="line number179 index178 alt2">179</div><div class="line number180 index179 alt1">180</div><div class="line number181 index180 alt2">181</div><div class="line number182 index181 alt1">182</div><div class="line number183 index182 alt2">183</div><div class="line number184 index183 alt1">184</div><div class="line number185 index184 alt2">185</div><div class="line number186 index185 alt1">186</div><div class="line number187 index186 alt2">187</div><div class="line number188 index187 alt1">188</div><div class="line number189 index188 alt2">189</div><div class="line number190 index189 alt1">190</div><div class="line number191 index190 alt2">191</div><div class="line number192 index191 alt1">192</div><div class="line number193 index192 alt2">193</div><div class="line number194 index193 alt1">194</div><div class="line number195 index194 alt2">195</div><div class="line number196 index195 alt1">196</div><div class="line number197 index196 alt2">197</div><div class="line number198 index197 alt1">198</div><div class="line number199 index198 alt2">199</div><div class="line number200 index199 alt1">200</div><div class="line number201 index200 alt2">201</div><div class="line number202 index201 alt1">202</div><div class="line number203 index202 alt2">203</div><div class="line number204 index203 alt1">204</div><div class="line number205 index204 alt2">205</div><div class="line number206 index205 alt1">206</div><div class="line number207 index206 alt2">207</div><div class="line number208 index207 alt1">208</div><div class="line number209 index208 alt2">209</div><div class="line number210 index209 alt1">210</div><div class="line number211 index210 alt2">211</div><div class="line number212 index211 alt1">212</div><div class="line number213 index212 alt2">213</div><div class="line number214 index213 alt1">214</div><div class="line number215 index214 alt2">215</div><div class="line number216 index215 alt1">216</div><div class="line number217 index216 alt2">217</div><div class="line number218 index217 alt1">218</div><div class="line number219 index218 alt2">219</div><div class="line number220 index219 alt1">220</div><div class="line number221 index220 alt2">221</div><div class="line number222 index221 alt1">222</div><div class="line number223 index222 alt2">223</div><div class="line number224 index223 alt1">224</div><div class="line number225 index224 alt2">225</div><div class="line number226 index225 alt1">226</div><div class="line number227 index226 alt2">227</div><div class="line number228 index227 alt1">228</div><div class="line number229 index228 alt2">229</div><div class="line number230 index229 alt1">230</div><div class="line number231 index230 alt2">231</div><div class="line number232 index231 alt1">232</div><div class="line number233 index232 alt2">233</div><div class="line number234 index233 alt1">234</div><div class="line number235 index234 alt2">235</div><div class="line number236 index235 alt1">236</div><div class="line number237 index236 alt2">237</div><div class="line number238 index237 alt1">238</div><div class="line number239 index238 alt2">239</div><div class="line number240 index239 alt1">240</div><div class="line number241 index240 alt2">241</div><div class="line number242 index241 alt1">242</div><div class="line number243 index242 alt2">243</div><div class="line number244 index243 alt1">244</div><div class="line number245 index244 alt2">245</div><div class="line number246 index245 alt1">246</div><div class="line number247 index246 alt2">247</div><div class="line number248 index247 alt1">248</div><div class="line number249 index248 alt2">249</div><div class="line number250 index249 alt1">250</div><div class="line number251 index250 alt2">251</div><div class="line number252 index251 alt1">252</div><div class="line number253 index252 alt2">253</div><div class="line number254 index253 alt1">254</div><div class="line number255 index254 alt2">255</div><div class="line number256 index255 alt1">256</div><div class="line number257 index256 alt2">257</div><div class="line number258 index257 alt1">258</div><div class="line number259 index258 alt2">259</div><div class="line number260 index259 alt1">260</div><div class="line number261 index260 alt2">261</div><div class="line number262 index261 alt1">262</div><div class="line number263 index262 alt2">263</div><div class="line number264 index263 alt1">264</div><div class="line number265 index264 alt2">265</div><div class="line number266 index265 alt1">266</div><div class="line number267 index266 alt2">267</div><div class="line number268 index267 alt1">268</div><div class="line number269 index268 alt2">269</div><div class="line number270 index269 alt1">270</div><div class="line number271 index270 alt2">271</div><div class="line number272 index271 alt1">272</div><div class="line number273 index272 alt2">273</div><div class="line number274 index273 alt1">274</div><div class="line number275 index274 alt2">275</div><div class="line number276 index275 alt1">276</div><div class="line number277 index276 alt2">277</div><div class="line number278 index277 alt1">278</div><div class="line number279 index278 alt2">279</div><div class="line number280 index279 alt1">280</div><div class="line number281 index280 alt2">281</div><div class="line number282 index281 alt1">282</div><div class="line number283 index282 alt2">283</div><div class="line number284 index283 alt1">284</div><div class="line number285 index284 alt2">285</div><div class="line number286 index285 alt1">286</div><div class="line number287 index286 alt2">287</div><div class="line number288 index287 alt1">288</div><div class="line number289 index288 alt2">289</div><div class="line number290 index289 alt1">290</div><div class="line number291 index290 alt2">291</div><div class="line number292 index291 alt1">292</div><div class="line number293 index292 alt2">293</div><div class="line number294 index293 alt1">294</div><div class="line number295 index294 alt2">295</div><div class="line number296 index295 alt1">296</div><div class="line number297 index296 alt2">297</div><div class="line number298 index297 alt1">298</div><div class="line number299 index298 alt2">299</div><div class="line number300 index299 alt1">300</div><div class="line number301 index300 alt2">301</div><div class="line number302 index301 alt1">302</div><div class="line number303 index302 alt2">303</div><div class="line number304 index303 alt1">304</div><div class="line number305 index304 alt2">305</div><div class="line number306 index305 alt1">306</div><div class="line number307 index306 alt2">307</div><div class="line number308 index307 alt1">308</div><div class="line number309 index308 alt2">309</div><div class="line number310 index309 alt1">310</div><div class="line number311 index310 alt2">311</div><div class="line number312 index311 alt1">312</div><div class="line number313 index312 alt2">313</div><div class="line number314 index313 alt1">314</div><div class="line number315 index314 alt2">315</div><div class="line number316 index315 alt1">316</div><div class="line number317 index316 alt2">317</div><div class="line number318 index317 alt1">318</div><div class="line number319 index318 alt2">319</div><div class="line number320 index319 alt1">320</div><div class="line number321 index320 alt2">321</div><div class="line number322 index321 alt1">322</div><div class="line number323 index322 alt2">323</div><div class="line number324 index323 alt1">324</div><div class="line number325 index324 alt2">325</div><div class="line number326 index325 alt1">326</div><div class="line number327 index326 alt2">327</div><div class="line number328 index327 alt1">328</div><div class="line number329 index328 alt2">329</div><div class="line number330 index329 alt1">330</div><div class="line number331 index330 alt2">331</div><div class="line number332 index331 alt1">332</div><div class="line number333 index332 alt2">333</div><div class="line number334 index333 alt1">334</div><div class="line number335 index334 alt2">335</div><div class="line number336 index335 alt1">336</div><div class="line number337 index336 alt2">337</div><div class="line number338 index337 alt1">338</div><div class="line number339 index338 alt2">339</div><div class="line number340 index339 alt1">340</div><div class="line number341 index340 alt2">341</div><div class="line number342 index341 alt1">342</div><div class="line number343 index342 alt2">343</div><div class="line number344 index343 alt1">344</div><div class="line number345 index344 alt2">345</div><div class="line number346 index345 alt1">346</div><div class="line number347 index346 alt2">347</div><div class="line number348 index347 alt1">348</div><div class="line number349 index348 alt2">349</div><div class="line number350 index349 alt1">350</div><div class="line number351 index350 alt2">351</div><div class="line number352 index351 alt1">352</div><div class="line number353 index352 alt2">353</div><div class="line number354 index353 alt1">354</div><div class="line number355 index354 alt2">355</div><div class="line number356 index355 alt1">356</div><div class="line number357 index356 alt2">357</div><div class="line number358 index357 alt1">358</div><div class="line number359 index358 alt2">359</div><div class="line number360 index359 alt1">360</div><div class="line number361 index360 alt2">361</div><div class="line number362 index361 alt1">362</div><div class="line number363 index362 alt2">363</div><div class="line number364 index363 alt1">364</div><div class="line number365 index364 alt2">365</div><div class="line number366 index365 alt1">366</div><div class="line number367 index366 alt2">367</div><div class="line number368 index367 alt1">368</div><div class="line number369 index368 alt2">369</div><div class="line number370 index369 alt1">370</div><div class="line number371 index370 alt2">371</div><div class="line number372 index371 alt1">372</div><div class="line number373 index372 alt2">373</div><div class="line number374 index373 alt1">374</div><div class="line number375 index374 alt2">375</div><div class="line number376 index375 alt1">376</div><div class="line number377 index376 alt2">377</div><div class="line number378 index377 alt1">378</div><div class="line number379 index378 alt2">379</div><div class="line number380 index379 alt1">380</div><div class="line number381 index380 alt2">381</div><div class="line number382 index381 alt1">382</div><div class="line number383 index382 alt2">383</div><div class="line number384 index383 alt1">384</div><div class="line number385 index384 alt2">385</div><div class="line number386 index385 alt1">386</div><div class="line number387 index386 alt2">387</div><div class="line number388 index387 alt1">388</div><div class="line number389 index388 alt2">389</div><div class="line number390 index389 alt1">390</div><div class="line number391 index390 alt2">391</div><div class="line number392 index391 alt1">392</div><div class="line number393 index392 alt2">393</div><div class="line number394 index393 alt1">394</div><div class="line number395 index394 alt2">395</div><div class="line number396 index395 alt1">396</div><div class="line number397 index396 alt2">397</div><div class="line number398 index397 alt1">398</div><div class="line number399 index398 alt2">399</div><div class="line number400 index399 alt1">400</div><div class="line number401 index400 alt2">401</div><div class="line number402 index401 alt1">402</div><div class="line number403 index402 alt2">403</div><div class="line number404 index403 alt1">404</div><div class="line number405 index404 alt2">405</div><div class="line number406 index405 alt1">406</div><div class="line number407 index406 alt2">407</div><div class="line number408 index407 alt1">408</div><div class="line number409 index408 alt2">409</div><div class="line number410 index409 alt1">410</div><div class="line number411 index410 alt2">411</div><div class="line number412 index411 alt1">412</div><div class="line number413 index412 alt2">413</div><div class="line number414 index413 alt1">414</div><div class="line number415 index414 alt2">415</div><div class="line number416 index415 alt1">416</div><div class="line number417 index416 alt2">417</div><div class="line number418 index417 alt1">418</div><div class="line number419 index418 alt2">419</div><div class="line number420 index419 alt1">420</div><div class="line number421 index420 alt2">421</div><div class="line number422 index421 alt1">422</div><div class="line number423 index422 alt2">423</div><div class="line number424 index423 alt1">424</div><div class="line number425 index424 alt2">425</div><div class="line number426 index425 alt1">426</div><div class="line number427 index426 alt2">427</div><div class="line number428 index427 alt1">428</div><div class="line number429 index428 alt2">429</div><div class="line number430 index429 alt1">430</div><div class="line number431 index430 alt2">431</div><div class="line number432 index431 alt1">432</div><div class="line number433 index432 alt2">433</div><div class="line number434 index433 alt1">434</div><div class="line number435 index434 alt2">435</div><div class="line number436 index435 alt1">436</div><div class="line number437 index436 alt2">437</div><div class="line number438 index437 alt1">438</div><div class="line number439 index438 alt2">439</div><div class="line number440 index439 alt1">440</div><div class="line number441 index440 alt2">441</div><div class="line number442 index441 alt1">442</div><div class="line number443 index442 alt2">443</div><div class="line number444 index443 alt1">444</div><div class="line number445 index444 alt2">445</div><div class="line number446 index445 alt1">446</div><div class="line number447 index446 alt2">447</div><div class="line number448 index447 alt1">448</div><div class="line number449 index448 alt2">449</div><div class="line number450 index449 alt1">450</div><div class="line number451 index450 alt2">451</div><div class="line number452 index451 alt1">452</div><div class="line number453 index452 alt2">453</div><div class="line number454 index453 alt1">454</div><div class="line number455 index454 alt2">455</div><div class="line number456 index455 alt1">456</div><div class="line number457 index456 alt2">457</div><div class="line number458 index457 alt1">458</div><div class="line number459 index458 alt2">459</div><div class="line number460 index459 alt1">460</div><div class="line number461 index460 alt2">461</div><div class="line number462 index461 alt1">462</div><div class="line number463 index462 alt2">463</div><div class="line number464 index463 alt1">464</div><div class="line number465 index464 alt2">465</div><div class="line number466 index465 alt1">466</div><div class="line number467 index466 alt2">467</div><div class="line number468 index467 alt1">468</div><div class="line number469 index468 alt2">469</div><div class="line number470 index469 alt1">470</div><div class="line number471 index470 alt2">471</div><div class="line number472 index471 alt1">472</div><div class="line number473 index472 alt2">473</div><div class="line number474 index473 alt1">474</div><div class="line number475 index474 alt2">475</div><div class="line number476 index475 alt1">476</div><div class="line number477 index476 alt2">477</div><div class="line number478 index477 alt1">478</div><div class="line number479 index478 alt2">479</div><div class="line number480 index479 alt1">480</div><div class="line number481 index480 alt2">481</div><div class="line number482 index481 alt1">482</div><div class="line number483 index482 alt2">483</div><div class="line number484 index483 alt1">484</div><div class="line number485 index484 alt2">485</div><div class="line number486 index485 alt1">486</div><div class="line number487 index486 alt2">487</div><div class="line number488 index487 alt1">488</div><div class="line number489 index488 alt2">489</div><div class="line number490 index489 alt1">490</div><div class="line number491 index490 alt2">491</div><div class="line number492 index491 alt1">492</div><div class="line number493 index492 alt2">493</div><div class="line number494 index493 alt1">494</div><div class="line number495 index494 alt2">495</div><div class="line number496 index495 alt1">496</div></td><td class="code"><div class="container"><div class="line number1 index0 alt2"><code class="css plain">//ARDUINO MPPT SOLAR CHARGE CONTROLLER (Version</code><code class="css value">-3</code><code class="css plain">)</code></div><div class="line number2 index1 alt1"><code class="css plain">//Author: Debasish Dutta/deba</code><code class="css value">168</code></div><div class="line number3 index2 alt2"><code class="css plain">//&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; www.opengreenenergy.in</code></div><div class="line number4 index3 alt1"><code class="css plain">// This </code><code class="css value">code</code> <code class="css plain">was wrote for an arduino Nano based Solar MPPT charge controller.</code></div><div class="line number5 index4 alt2"><code class="css plain">// This </code><code class="css value">code</code> <code class="css plain">is a modified version of sample </code><code class="css value">code</code> <code class="css plain">from www.timnolan.com</code></div><div class="line number6 index5 alt1"><code class="css plain">// updated </code><code class="css value">06</code><code class="css plain">/</code><code class="css value">07</code><code class="css plain">/</code><code class="css value">2015</code></div><div class="line number7 index6 alt2"><code class="css plain">// Adapted for Arduino Pro mini on my project on </code><code class="css value">11</code><code class="css plain">/</code><code class="css value">2016</code></div><div class="line number8 index7 alt1">&nbsp;</div><div class="line number9 index8 alt2"><code class="css plain">#include </code><code class="css string">"TimerOne.h"</code></div><div class="line number10 index9 alt1"><code class="css plain">#include </code><code class="css string">"LiquidCrystal_I2C.h"</code></div><div class="line number11 index10 alt2"><code class="css plain">#include </code><code class="css string">"Wire.h"</code>&nbsp;</div><div class="line number12 index11 alt1">&nbsp;</div><div class="line number13 index12 alt2"><code class="css plain">// A</code><code class="css value">0</code> <code class="css plain">- Voltage divider (solar)</code></div><div class="line number14 index13 alt1"><code class="css plain">// A</code><code class="css value">1</code> <code class="css plain">- ACS </code><code class="css value">712</code> <code class="css plain">Out</code></div><div class="line number15 index14 alt2"><code class="css plain">// A</code><code class="css value">2</code> <code class="css plain">- Voltage divider (battery)</code></div><div class="line number16 index15 alt1"><code class="css plain">// A</code><code class="css value">4</code> <code class="css plain">- LCD SDA</code></div><div class="line number17 index16 alt2"><code class="css plain">// A</code><code class="css value">5</code> <code class="css plain">- LCD SCL</code></div><div class="line number18 index17 alt1"><code class="css plain">// D</code><code class="css value">5</code> <code class="css plain">- LCD back control button</code></div><div class="line number19 index18 alt2"><code class="css plain">// D</code><code class="css value">6</code> <code class="css plain">- Load Control</code></div><div class="line number20 index19 alt1"><code class="css plain">// D</code><code class="css value">8</code> <code class="css plain">- </code><code class="css value">2104</code> <code class="css plain">MOSFET driver SD</code></div><div class="line number21 index20 alt2"><code class="css plain">// D</code><code class="css value">9</code> <code class="css plain">- </code><code class="css value">2104</code> <code class="css plain">MOSFET driver IN</code></div><div class="line number22 index21 alt1"><code class="css plain">// D</code><code class="css value">11</code><code class="css plain">- Green LED</code></div><div class="line number23 index22 alt2"><code class="css plain">// D</code><code class="css value">12</code><code class="css plain">- Blue LED</code></div><div class="line number24 index23 alt1"><code class="css plain">// D</code><code class="css value">13</code><code class="css plain">- Red LED</code></div><div class="line number25 index24 alt2">&nbsp;</div><div class="line number26 index25 alt1"><code class="css value">#def</code><code class="css plain">ine LOAD_ALGORITHM </code><code class="css value">0</code></div><div class="line number27 index26 alt2"><code class="css value">#def</code><code class="css plain">ine SOL_VOLTS_CHAN </code><code class="css value">0</code></div><div class="line number28 index27 alt1"><code class="css value">#def</code><code class="css plain">ine BAT_VOLTS_CHAN </code><code class="css value">1</code></div><div class="line number29 index28 alt2"><code class="css value">#def</code><code class="css plain">ine SOL_AMPS_CHAN </code><code class="css value">2</code></div><div class="line number30 index29 alt1"><code class="css value">#def</code><code class="css plain">ine AVG_NUM </code><code class="css value">8</code></div><div class="line number31 index30 alt2"><code class="css value">#def</code><code class="css plain">ine SOL_VOLTS_SCALE </code><code class="css value">0.024900275</code></div><div class="line number32 index31 alt1"><code class="css value">#def</code><code class="css plain">ine BAT_VOLTS_SCALE </code><code class="css value">0.024926075</code></div><div class="line number33 index32 alt2"><code class="css value">#def</code><code class="css plain">ine SOL_AMPS_SCALE&nbsp; </code><code class="css value">0.024506081</code></div><div class="line number34 index33 alt1"><code class="css value">#def</code><code class="css plain">ine PWM_PIN </code><code class="css value">9</code></div><div class="line number35 index34 alt2"><code class="css value">#def</code><code class="css plain">ine PWM_ENABLE_PIN </code><code class="css value">8</code></div><div class="line number36 index35 alt1"><code class="css value">#def</code><code class="css plain">ine PWM_FULL </code><code class="css value">1023</code></div><div class="line number37 index36 alt2"><code class="css value">#def</code><code class="css plain">ine PWM_MAX </code><code class="css value">100</code></div><div class="line number38 index37 alt1"><code class="css value">#def</code><code class="css plain">ine PWM_MIN </code><code class="css value">60</code></div><div class="line number39 index38 alt2"><code class="css value">#def</code><code class="css plain">ine PWM_START </code><code class="css value">90</code></div><div class="line number40 index39 alt1"><code class="css value">#def</code><code class="css plain">ine PWM_INC </code><code class="css value">1</code></div><div class="line number41 index40 alt2"><code class="css value">#def</code><code class="css plain">ine TRUE </code><code class="css value">1</code></div><div class="line number42 index41 alt1"><code class="css value">#def</code><code class="css plain">ine FALSE </code><code class="css value">0</code></div><div class="line number43 index42 alt2"><code class="css value">#def</code><code class="css plain">ine ON TRUE</code></div><div class="line number44 index43 alt1"><code class="css value">#def</code><code class="css plain">ine OFF FALSE</code></div><div class="line number45 index44 alt2"><code class="css value">#def</code><code class="css plain">ine TURN_ON_MOSFETS digitalWrite(PWM_ENABLE_PIN, HIGH)</code></div><div class="line number46 index45 alt1"><code class="css value">#def</code><code class="css plain">ine TURN_OFF_MOSFETS digitalWrite(PWM_ENABLE_PIN, LOW)</code></div><div class="line number47 index46 alt2"><code class="css value">#def</code><code class="css plain">ine ONE_SECOND </code><code class="css value">50000</code></div><div class="line number48 index47 alt1"><code class="css value">#def</code><code class="css plain">ine LOW_SOL_WATTS </code><code class="css value">5.00</code></div><div class="line number49 index48 alt2"><code class="css value">#def</code><code class="css plain">ine MIN_SOL_WATTS </code><code class="css value">1.00</code></div><div class="line number50 index49 alt1"><code class="css value">#def</code><code class="css plain">ine MIN_BAT_VOLTS </code><code class="css value">11.00</code></div><div class="line number51 index50 alt2"><code class="css value">#def</code><code class="css plain">ine MAX_BAT_VOLTS </code><code class="css value">14.10</code></div><div class="line number52 index51 alt1"><code class="css value">#def</code><code class="css plain">ine BATT_FLOAT </code><code class="css value">13.60</code></div><div class="line number53 index52 alt2"><code class="css value">#def</code><code class="css plain">ine HIGH_BAT_VOLTS </code><code class="css value">13.00</code></div><div class="line number54 index53 alt1"><code class="css value">#def</code><code class="css plain">ine LVD </code><code class="css value">11.5</code></div><div class="line number55 index54 alt2"><code class="css value">#def</code><code class="css plain">ine OFF_NUM </code><code class="css value">9</code></div><div class="line number56 index55 alt1"><code class="css value">#def</code><code class="css plain">ine LED_GREEN </code><code class="css value">11</code></div><div class="line number57 index56 alt2"><code class="css value">#def</code><code class="css plain">ine LED_BLUE </code><code class="css value">12</code></div><div class="line number58 index57 alt1"><code class="css value">#def</code><code class="css plain">ine LED_RED </code><code class="css value">13</code></div><div class="line number59 index58 alt2"><code class="css value">#def</code><code class="css plain">ine LOAD_PIN </code><code class="css value">6</code></div><div class="line number60 index59 alt1"><code class="css value">#def</code><code class="css plain">ine BACK_LIGHT_PIN </code><code class="css value">5</code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div><div class="line number61 index60 alt2">&nbsp;</div><div class="line number62 index61 alt1"><code class="css plain">byte battery_icons[</code><code class="css value">6</code><code class="css plain">][</code><code class="css value">8</code><code class="css plain">]=</code></div><div class="line number63 index62 alt2"><code class="css plain">{{</code></div><div class="line number64 index63 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01110</code><code class="css plain">,</code></div><div class="line number65 index64 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11011</code><code class="css plain">,</code></div><div class="line number66 index65 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number67 index66 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number68 index67 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number69 index68 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number70 index69 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number71 index70 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number72 index71 alt1"><code class="css plain">},</code></div><div class="line number73 index72 alt2"><code class="css plain">{</code></div><div class="line number74 index73 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01110</code><code class="css plain">,</code></div><div class="line number75 index74 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11011</code><code class="css plain">,</code></div><div class="line number76 index75 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number77 index76 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number78 index77 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number79 index78 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number80 index79 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number81 index80 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number82 index81 alt1"><code class="css plain">},</code></div><div class="line number83 index82 alt2"><code class="css plain">{</code></div><div class="line number84 index83 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01110</code><code class="css plain">,</code></div><div class="line number85 index84 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11011</code><code class="css plain">,</code></div><div class="line number86 index85 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number87 index86 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10001</code><code class="css plain">,</code></div><div class="line number88 index87 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number89 index88 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number90 index89 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number91 index90 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number92 index91 alt1"><code class="css plain">},</code></div><div class="line number93 index92 alt2"><code class="css plain">{</code></div><div class="line number94 index93 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01110</code><code class="css plain">,</code></div><div class="line number95 index94 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11011</code><code class="css plain">,</code></div><div class="line number96 index95 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number97 index96 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number98 index97 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number99 index98 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number100 index99 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number101 index100 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number102 index101 alt1"><code class="css plain">},</code></div><div class="line number103 index102 alt2"><code class="css plain">{</code></div><div class="line number104 index103 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01110</code><code class="css plain">,</code></div><div class="line number105 index104 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number106 index105 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number107 index106 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number108 index107 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number109 index108 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number110 index109 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number111 index110 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number112 index111 alt1"><code class="css plain">},</code></div><div class="line number113 index112 alt2"><code class="css plain">{</code></div><div class="line number114 index113 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01110</code><code class="css plain">,</code></div><div class="line number115 index114 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number116 index115 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number117 index116 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number118 index117 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number119 index118 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number120 index119 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number121 index120 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number122 index121 alt1"><code class="css plain">}};</code></div><div class="line number123 index122 alt2"><code class="css value">#def</code><code class="css plain">ine SOLAR_ICON </code><code class="css value">6</code></div><div class="line number124 index123 alt1"><code class="css plain">byte solar_icon[</code><code class="css value">8</code><code class="css plain">] =</code></div><div class="line number125 index124 alt2"><code class="css plain">{</code></div><div class="line number126 index125 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number127 index126 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number128 index127 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number129 index128 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number130 index129 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number131 index130 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number132 index131 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11111</code><code class="css plain">,</code></div><div class="line number133 index132 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code></div><div class="line number134 index133 alt1"><code class="css plain">};</code></div><div class="line number135 index134 alt2"><code class="css value">#def</code><code class="css plain">ine PWM_ICON </code><code class="css value">7</code></div><div class="line number136 index135 alt1"><code class="css plain">byte _PWM_icon[</code><code class="css value">8</code><code class="css plain">]=</code></div><div class="line number137 index136 alt2"><code class="css plain">{</code></div><div class="line number138 index137 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">11101</code><code class="css plain">,</code></div><div class="line number139 index138 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number140 index139 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number141 index140 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number142 index141 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number143 index142 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10101</code><code class="css plain">,</code></div><div class="line number144 index143 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10111</code><code class="css plain">,</code></div><div class="line number145 index144 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number146 index145 alt1"><code class="css plain">};</code></div><div class="line number147 index146 alt2"><code class="css plain">byte backslash_char[</code><code class="css value">8</code><code class="css plain">]=</code></div><div class="line number148 index147 alt1"><code class="css plain">{</code></div><div class="line number149 index148 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10000</code><code class="css plain">,</code></div><div class="line number150 index149 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">10000</code><code class="css plain">,</code></div><div class="line number151 index150 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01000</code><code class="css plain">,</code></div><div class="line number152 index151 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">01000</code><code class="css plain">,</code></div><div class="line number153 index152 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00100</code><code class="css plain">,</code></div><div class="line number154 index153 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00100</code><code class="css plain">,</code></div><div class="line number155 index154 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00010</code><code class="css plain">,</code></div><div class="line number156 index155 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">0</code><code class="css plain">b</code><code class="css value">00000</code><code class="css plain">,</code></div><div class="line number157 index156 alt2"><code class="css plain">};</code></div><div class="line number158 index157 alt1"><code class="css plain">float sol_amps;</code></div><div class="line number159 index158 alt2"><code class="css plain">float sol_volts;</code></div><div class="line number160 index159 alt1"><code class="css plain">float bat_volts;</code></div><div class="line number161 index160 alt2"><code class="css plain">float sol_watts;</code></div><div class="line number162 index161 alt1"><code class="css plain">float old_sol_watts = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number163 index162 alt2"><code class="css plain">unsigned int seconds = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number164 index163 alt1"><code class="css plain">unsigned int prev_seconds = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number165 index164 alt2"><code class="css plain">unsigned int interrupt_counter = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number166 index165 alt1"><code class="css plain">unsigned long time = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number167 index166 alt2"><code class="css plain">int delta = PWM_INC;</code></div><div class="line number168 index167 alt1"><code class="css plain">int pwm = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number169 index168 alt2"><code class="css plain">int back_light_pin_State = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number170 index169 alt1"><code class="css plain">boolean load_status = false;</code></div><div class="line number171 index170 alt2"><code class="css plain">enum charger_mode {off, on, bulk, bat_float} charger_state;</code></div><div class="line number172 index171 alt1"><code class="css plain">LiquidCrystal_I</code><code class="css value">2</code><code class="css plain">C lcd(</code><code class="css value">0</code><code class="css plain">x</code><code class="css value">27</code><code class="css plain">, </code><code class="css value">2</code><code class="css plain">, </code><code class="css value">1</code><code class="css plain">, </code><code class="css value">0</code><code class="css plain">, </code><code class="css value">4</code><code class="css plain">, </code><code class="css value">5</code><code class="css plain">, </code><code class="css value">6</code><code class="css plain">, </code><code class="css value">7</code><code class="css plain">, </code><code class="css value">3</code><code class="css plain">, POSITIVE);&nbsp; </code></div><div class="line number173 index172 alt2">&nbsp;</div><div class="line number174 index173 alt1"><code class="css plain">void setup()</code></div><div class="line number175 index174 alt2"><code class="css plain">{</code></div><div class="line number176 index175 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">pinMode(PWM_ENABLE_PIN, OUTPUT);</code></div><div class="line number177 index176 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">TURN_OFF_MOSFETS;</code></div><div class="line number178 index177 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">charger_state = off;</code></div><div class="line number179 index178 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.begin(</code><code class="css value">20</code><code class="css plain">,</code><code class="css value">4</code><code class="css plain">);</code></div><div class="line number180 index179 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.backlight();</code></div><div class="line number181 index180 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">for (int batchar = </code><code class="css value">0</code><code class="css plain">; batchar &lt; </code><code class="css value">6</code><code class="css plain">; ++batchar)</code></div><div class="line number182 index181 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number183 index182 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">lcd.createChar(batchar, battery_icons[batchar]);</code></div><div class="line number184 index183 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number185 index184 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.createChar(PWM_ICON,_PWM_icon);</code></div><div class="line number186 index185 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.createChar(SOLAR_ICON,solar_icon);</code></div><div class="line number187 index186 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.createChar(</code><code class="css string">'\\'</code><code class="css plain">, backslash_char);</code></div><div class="line number188 index187 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">pinMode(LED_RED, OUTPUT);</code></div><div class="line number189 index188 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">pinMode(LED_GREEN, OUTPUT);</code></div><div class="line number190 index189 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">pinMode(LED_BLUE, OUTPUT);</code></div><div class="line number191 index190 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Timer</code><code class="css value">1</code><code class="css plain">.initialize(</code><code class="css value">20</code><code class="css plain">);</code></div><div class="line number192 index191 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Timer</code><code class="css value">1</code><code class="css plain">.pwm(PWM_PIN, </code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number193 index192 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Timer</code><code class="css value">1</code><code class="css plain">.attachInterrupt(callback);</code></div><div class="line number194 index193 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.begin(</code><code class="css value">9600</code><code class="css plain">);</code></div><div class="line number195 index194 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">pwm = PWM_START;</code></div><div class="line number196 index195 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">pinMode(BACK_LIGHT_PIN, INPUT);</code></div><div class="line number197 index196 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">pinMode(LOAD_PIN,OUTPUT);</code></div><div class="line number198 index197 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">digitalWrite(LOAD_PIN,LOW);</code></div><div class="line number199 index198 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">digitalWrite(BACK_LIGHT_PIN,LOW);</code></div><div class="line number200 index199 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">0</code><code class="css plain">, </code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number201 index200 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"SOL"</code><code class="css plain">);</code></div><div class="line number202 index201 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">4</code><code class="css plain">, </code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number203 index202 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.write(SOLAR_ICON);</code></div><div class="line number204 index203 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">8</code><code class="css plain">, </code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number205 index204 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"BAT"</code><code class="css plain">);</code></div><div class="line number206 index205 alt1"><code class="css plain">}</code></div><div class="line number207 index206 alt2">&nbsp;</div><div class="line number208 index207 alt1"><code class="css plain">void loop()</code></div><div class="line number209 index208 alt2"><code class="css plain">{</code></div><div class="line number210 index209 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">read_data();</code></div><div class="line number211 index210 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">run_charger();</code></div><div class="line number212 index211 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">// print_data();</code></div><div class="line number213 index212 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">load_control();</code></div><div class="line number214 index213 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">led_output();</code></div><div class="line number215 index214 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd_display();</code></div><div class="line number216 index215 alt1"><code class="css plain">}</code></div><div class="line number217 index216 alt2">&nbsp;</div><div class="line number218 index217 alt1"><code class="css plain">int read_adc(int channel)</code></div><div class="line number219 index218 alt2"><code class="css plain">{</code></div><div class="line number220 index219 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">int sum = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number221 index220 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">int temp;</code></div><div class="line number222 index221 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">int i;</code></div><div class="line number223 index222 alt2">&nbsp;</div><div class="line number224 index223 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">for (i=</code><code class="css value">0</code><code class="css plain">; i&lt;AVG_NUM; i++) { temp = analogRead(channel); sum += temp; delayMicroseconds(</code><code class="css value">50</code><code class="css plain">); } return(sum / AVG_NUM); } void read_data(void) { sol_amps = (read_adc(SOL_AMPS_CHAN) * SOL_AMPS_SCALE </code><code class="css value">-13.51</code><code class="css plain">); sol_volts = read_adc(SOL_VOLTS_CHAN) * SOL_VOLTS_SCALE; bat_volts = read_adc(BAT_VOLTS_CHAN) * BAT_VOLTS_SCALE; sol_watts = sol_amps * sol_volts ; } void callback() { if (interrupt_counter++ &gt; ONE_SECOND)</code></div><div class="line number225 index224 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number226 index225 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">interrupt_counter = </code><code class="css value">0</code><code class="css plain">;</code></div><div class="line number227 index226 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">seconds++;</code></div><div class="line number228 index227 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number229 index228 alt2"><code class="css plain">}</code></div><div class="line number230 index229 alt1">&nbsp;</div><div class="line number231 index230 alt2"><code class="css plain">void set_pwm_duty(void)</code></div><div class="line number232 index231 alt1"><code class="css plain">{</code></div><div class="line number233 index232 alt2">&nbsp;</div><div class="line number234 index233 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (pwm &gt; PWM_MAX)</code></div><div class="line number235 index234 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number236 index235 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pwm = PWM_MAX;</code></div><div class="line number237 index236 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number238 index237 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else if (pwm &lt; PWM_MIN)</code></div><div class="line number239 index238 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number240 index239 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pwm = PWM_MIN;</code></div><div class="line number241 index240 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number242 index241 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (pwm &lt; PWM_MAX)</code></div><div class="line number243 index242 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number244 index243 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">Timer</code><code class="css value">1</code><code class="css plain">.pwm(PWM_PIN,(PWM_FULL * (long)pwm / </code><code class="css value">100</code><code class="css plain">), </code><code class="css value">20</code><code class="css plain">);</code></div><div class="line number245 index244 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number246 index245 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else if (pwm == PWM_MAX)</code></div><div class="line number247 index246 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number248 index247 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">Timer</code><code class="css value">1</code><code class="css plain">.pwm(PWM_PIN,(PWM_FULL - </code><code class="css value">1</code><code class="css plain">), </code><code class="css value">20</code><code class="css plain">);</code></div><div class="line number249 index248 alt2"><code class="css plain">}</code></div><div class="line number250 index249 alt1"><code class="css plain">}&nbsp;&nbsp; </code></div><div class="line number251 index250 alt2">&nbsp;</div><div class="line number252 index251 alt1"><code class="css plain">void run_charger(void)</code></div><div class="line number253 index252 alt2"><code class="css plain">{</code></div><div class="line number254 index253 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">static</code> <code class="css plain">int off_count = OFF_NUM;</code></div><div class="line number255 index254 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">switch (charger_state)</code></div><div class="line number256 index255 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number257 index256 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">case on:</code></div><div class="line number258 index257 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">if (sol_watts &lt; MIN_SOL_WATTS) { charger_state = off; off_count = OFF_NUM; TURN_OFF_MOSFETS; } else if (bat_volts &gt; (BATT_FLOAT - </code><code class="css value">0.1</code><code class="css plain">))</code></div><div class="line number259 index258 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number260 index259 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">charger_state = bat_float;</code></div><div class="line number261 index260 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number262 index261 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">else if (sol_watts &lt; LOW_SOL_WATTS)</code></div><div class="line number263 index262 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number264 index263 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pwm = PWM_MAX;</code></div><div class="line number265 index264 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">set_pwm_duty();</code></div><div class="line number266 index265 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number267 index266 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">else</code></div><div class="line number268 index267 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number269 index268 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pwm = ((bat_volts * </code><code class="css value">10</code><code class="css plain">) / (sol_volts / </code><code class="css value">10</code><code class="css plain">)) + </code><code class="css value">5</code><code class="css plain">;</code></div><div class="line number270 index269 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">charger_state = bulk;</code></div><div class="line number271 index270 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number272 index271 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">break;</code></div><div class="line number273 index272 alt2">&nbsp;</div><div class="line number274 index273 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">case bulk:</code></div><div class="line number275 index274 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">if (sol_watts &lt; MIN_SOL_WATTS) { charger_state = off; off_count = OFF_NUM; TURN_OFF_MOSFETS; } else if (bat_volts &gt; BATT_FLOAT)</code></div><div class="line number276 index275 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number277 index276 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">charger_state = bat_float;</code></div><div class="line number278 index277 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number279 index278 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">else if (sol_watts &lt; LOW_SOL_WATTS) { charger_state = on; TURN_ON_MOSFETS; } else { if (old_sol_watts &gt;= sol_watts)</code></div><div class="line number280 index279 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number281 index280 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">delta = -delta;</code></div><div class="line number282 index281 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number283 index282 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pwm += delta;</code></div><div class="line number284 index283 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">old_sol_watts = sol_watts;</code></div><div class="line number285 index284 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">set_pwm_duty();</code></div><div class="line number286 index285 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number287 index286 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">break;</code></div><div class="line number288 index287 alt1">&nbsp;</div><div class="line number289 index288 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">case bat_float:</code></div><div class="line number290 index289 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">if (sol_watts &lt; MIN_SOL_WATTS) { charger_state = off; off_count = OFF_NUM; TURN_OFF_MOSFETS; set_pwm_duty(); } else if (bat_volts &gt; BATT_FLOAT)</code></div><div class="line number291 index290 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number292 index291 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">TURN_OFF_MOSFETS;</code></div><div class="line number293 index292 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pwm = PWM_MAX;</code></div><div class="line number294 index293 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">set_pwm_duty();</code></div><div class="line number295 index294 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number296 index295 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">else if (bat_volts &lt; BATT_FLOAT)</code></div><div class="line number297 index296 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number298 index297 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pwm = PWM_MAX;</code></div><div class="line number299 index298 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">set_pwm_duty();</code></div><div class="line number300 index299 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">TURN_ON_MOSFETS;</code></div><div class="line number301 index300 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">if (bat_volts &lt; (BATT_FLOAT - </code><code class="css value">0.1</code><code class="css plain">)) { charger_state = bulk; } } break; case off: TURN_OFF_MOSFETS; if (off_count &gt; </code><code class="css value">0</code><code class="css plain">)</code></div><div class="line number302 index301 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number303 index302 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">off_count--;</code></div><div class="line number304 index303 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number305 index304 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">else if ((bat_volts &gt; BATT_FLOAT) &amp;&amp; (sol_volts &gt; bat_volts))</code></div><div class="line number306 index305 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number307 index306 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">charger_state = bat_float;</code></div><div class="line number308 index307 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">TURN_ON_MOSFETS;</code></div><div class="line number309 index308 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number310 index309 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">else if ((bat_volts &gt; MIN_BAT_VOLTS) &amp;&amp; (bat_volts &lt; BATT_FLOAT) &amp;&amp; (sol_volts &gt; bat_volts))</code></div><div class="line number311 index310 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number312 index311 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">charger_state = bulk;</code></div><div class="line number313 index312 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">TURN_ON_MOSFETS;</code></div><div class="line number314 index313 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number315 index314 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">break;</code></div><div class="line number316 index315 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">default:</code></div><div class="line number317 index316 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">TURN_OFF_MOSFETS;</code></div><div class="line number318 index317 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">break;</code></div><div class="line number319 index318 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number320 index319 alt1"><code class="css plain">}</code></div><div class="line number321 index320 alt2">&nbsp;</div><div class="line number322 index321 alt1"><code class="css plain">void load_control()</code></div><div class="line number323 index322 alt2"><code class="css plain">{</code></div><div class="line number324 index323 alt1"><code class="css plain">#if LOAD_ALGORITHM == </code><code class="css value">0</code></div><div class="line number325 index324 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">load_on(sol_watts &lt; MIN_SOL_WATTS &amp;&amp; bat_volts &gt; LVD);</code></div><div class="line number326 index325 alt1"><code class="css plain">#else</code></div><div class="line number327 index326 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">load_on(sol_watts &gt; MIN_SOL_WATTS &amp;&amp; bat_volts &gt; BATT_FLOAT);</code></div><div class="line number328 index327 alt1"><code class="css plain">#endif</code></div><div class="line number329 index328 alt2"><code class="css plain">}</code></div><div class="line number330 index329 alt1">&nbsp;</div><div class="line number331 index330 alt2"><code class="css plain">void load_on(boolean new_status)</code></div><div class="line number332 index331 alt1"><code class="css plain">{</code></div><div class="line number333 index332 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (load_status != new_status)</code></div><div class="line number334 index333 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number335 index334 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">load_status = new_status;</code></div><div class="line number336 index335 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">digitalWrite(LOAD_PIN, new_status ? HIGH : LOW);</code></div><div class="line number337 index336 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number338 index337 alt1"><code class="css plain">}</code></div><div class="line number339 index338 alt2">&nbsp;</div><div class="line number340 index339 alt1"><code class="css plain">void print_data(void)&nbsp; // you can skip this part)</code></div><div class="line number341 index340 alt2"><code class="css plain">{</code></div><div class="line number342 index341 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(seconds,DEC);</code></div><div class="line number343 index342 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number344 index343 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"Charging = "</code><code class="css plain">);</code></div><div class="line number345 index344 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (charger_state == on) Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"on&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number346 index345 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else if (charger_state == off) Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"off&nbsp; "</code><code class="css plain">);</code></div><div class="line number347 index346 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else if (charger_state == bulk) Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"bulk "</code><code class="css plain">);</code></div><div class="line number348 index347 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else if (charger_state == bat_float) Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"float"</code><code class="css plain">);</code></div><div class="line number349 index348 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number350 index349 alt1">&nbsp;</div><div class="line number351 index350 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"pwm = "</code><code class="css plain">);</code></div><div class="line number352 index351 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if(charger_state == off)</code></div><div class="line number353 index352 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css value">0</code><code class="css plain">,DEC);</code></div><div class="line number354 index353 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else</code></div><div class="line number355 index354 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(pwm,DEC);</code></div><div class="line number356 index355 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number357 index356 alt2">&nbsp;</div><div class="line number358 index357 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"Current (panel) = "</code><code class="css plain">);</code></div><div class="line number359 index358 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(sol_amps);</code></div><div class="line number360 index359 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number361 index360 alt2">&nbsp;</div><div class="line number362 index361 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"Voltage (panel) = "</code><code class="css plain">);</code></div><div class="line number363 index362 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(sol_volts);</code></div><div class="line number364 index363 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number365 index364 alt2">&nbsp;</div><div class="line number366 index365 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"Power (panel) = "</code><code class="css plain">);</code></div><div class="line number367 index366 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(sol_volts);</code></div><div class="line number368 index367 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number369 index368 alt2">&nbsp;</div><div class="line number370 index369 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"Battery Voltage = "</code><code class="css plain">);</code></div><div class="line number371 index370 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(bat_volts);</code></div><div class="line number372 index371 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number373 index372 alt2">&nbsp;</div><div class="line number374 index373 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">Serial.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"\n\r"</code><code class="css plain">);</code></div><div class="line number375 index374 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">//delay(</code><code class="css value">1000</code><code class="css plain">);</code></div><div class="line number376 index375 alt1"><code class="css plain">}</code></div><div class="line number377 index376 alt2">&nbsp;</div><div class="line number378 index377 alt1"><code class="css plain">void light_led(char pin)</code></div><div class="line number379 index378 alt2"><code class="css plain">{</code></div><div class="line number380 index379 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">static</code> <code class="css plain">char last_lit;</code></div><div class="line number381 index380 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (last_lit == pin)</code></div><div class="line number382 index381 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">return;</code></div><div class="line number383 index382 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (last_lit != </code><code class="css value">0</code><code class="css plain">)</code></div><div class="line number384 index383 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">digitalWrite(last_lit, HIGH);</code></div><div class="line number385 index384 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">digitalWrite(pin, LOW);</code></div><div class="line number386 index385 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">last_lit = pin;</code></div><div class="line number387 index386 alt2"><code class="css plain">}</code></div><div class="line number388 index387 alt1">&nbsp;</div><div class="line number389 index388 alt2"><code class="css plain">void led_output(void)</code></div><div class="line number390 index389 alt1"><code class="css plain">{</code></div><div class="line number391 index390 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">static</code> <code class="css plain">char last_lit;</code></div><div class="line number392 index391 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if(bat_volts &gt; </code><code class="css value">14.1</code> <code class="css plain">)</code></div><div class="line number393 index392 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">light_led(LED_BLUE);</code></div><div class="line number394 index393 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else if(bat_volts &gt; </code><code class="css value">11.9</code><code class="css plain">)</code></div><div class="line number395 index394 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">light_led(LED_GREEN);</code></div><div class="line number396 index395 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else</code></div><div class="line number397 index396 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">light_led(LED_RED);</code></div><div class="line number398 index397 alt1"><code class="css plain">}</code></div><div class="line number399 index398 alt2"><code class="css plain">void lcd_display()</code></div><div class="line number400 index399 alt1"><code class="css plain">{</code></div><div class="line number401 index400 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">static</code> <code class="css plain">bool current_backlight_state = </code><code class="css value">-1</code><code class="css plain">;</code></div><div class="line number402 index401 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">back_light_pin_State = digitalRead(BACK_LIGHT_PIN);</code></div><div class="line number403 index402 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (current_backlight_state != back_light_pin_State)</code></div><div class="line number404 index403 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number405 index404 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">current_backlight_state = back_light_pin_State;</code></div><div class="line number406 index405 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">if (back_light_pin_State == HIGH)</code></div><div class="line number407 index406 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">lcd.backlight();</code></div><div class="line number408 index407 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">else</code></div><div class="line number409 index408 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">lcd.noBacklight();</code></div><div class="line number410 index409 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number411 index410 alt2">&nbsp;</div><div class="line number412 index411 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if (back_light_pin_State == HIGH)</code></div><div class="line number413 index412 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">{</code></div><div class="line number414 index413 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">time = millis();</code></div><div class="line number415 index414 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">}</code></div><div class="line number416 index415 alt1">&nbsp;</div><div class="line number417 index416 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">0</code><code class="css plain">, </code><code class="css value">1</code><code class="css plain">);</code></div><div class="line number418 index417 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(sol_volts);</code></div><div class="line number419 index418 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"V "</code><code class="css plain">);</code></div><div class="line number420 index419 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">0</code><code class="css plain">, </code><code class="css value">2</code><code class="css plain">);</code></div><div class="line number421 index420 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(sol_amps);</code></div><div class="line number422 index421 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"A"</code><code class="css plain">);</code></div><div class="line number423 index422 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">0</code><code class="css plain">, </code><code class="css value">3</code><code class="css plain">);</code></div><div class="line number424 index423 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(sol_watts);</code></div><div class="line number425 index424 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"W "</code><code class="css plain">);</code></div><div class="line number426 index425 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">8</code><code class="css plain">, </code><code class="css value">1</code><code class="css plain">);</code></div><div class="line number427 index426 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(bat_volts);</code></div><div class="line number428 index427 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">8</code><code class="css plain">,</code><code class="css value">2</code><code class="css plain">);</code></div><div class="line number429 index428 alt2">&nbsp;</div><div class="line number430 index429 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">if (charger_state == on)</code></div><div class="line number431 index430 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"on&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number432 index431 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">else if (charger_state == off)</code></div><div class="line number433 index432 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"off&nbsp; "</code><code class="css plain">);</code></div><div class="line number434 index433 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">else if (charger_state == bulk)</code></div><div class="line number435 index434 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"bulk "</code><code class="css plain">);</code></div><div class="line number436 index435 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">else if (charger_state == bat_float)</code></div><div class="line number437 index436 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">{</code></div><div class="line number438 index437 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp;&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number439 index438 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">8</code><code class="css plain">,</code><code class="css value">2</code><code class="css plain">);</code></div><div class="line number440 index439 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"float"</code><code class="css plain">);</code></div><div class="line number441 index440 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">}</code></div><div class="line number442 index441 alt1">&nbsp;</div><div class="line number443 index442 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">int pct = </code><code class="css value">100.0</code><code class="css plain">*(bat_volts - </code><code class="css value">11.3</code><code class="css plain">)/(</code><code class="css value">12.7</code> <code class="css plain">- </code><code class="css value">11.3</code><code class="css plain">);</code></div><div class="line number444 index443 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">if (pct &lt; </code><code class="css value">0</code><code class="css plain">) pct = </code><code class="css value">0</code><code class="css plain">; else if (pct &gt; </code><code class="css value">100</code><code class="css plain">)</code></div><div class="line number445 index444 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">pct = </code><code class="css value">100</code><code class="css plain">;</code></div><div class="line number446 index445 alt1">&nbsp;</div><div class="line number447 index446 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">12</code><code class="css plain">,</code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number448 index447 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">((char)(pct*</code><code class="css value">5</code><code class="css plain">/</code><code class="css value">100</code><code class="css plain">));</code></div><div class="line number449 index448 alt2">&nbsp;</div><div class="line number450 index449 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">8</code><code class="css plain">,</code><code class="css value">3</code><code class="css plain">);</code></div><div class="line number451 index450 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">pct = pct - (pct%</code><code class="css value">10</code><code class="css plain">);</code></div><div class="line number452 index451 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(pct);</code></div><div class="line number453 index452 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"%&nbsp; "</code><code class="css plain">);</code></div><div class="line number454 index453 alt1">&nbsp;</div><div class="line number455 index454 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">15</code><code class="css plain">,</code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number456 index455 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"PWM"</code><code class="css plain">);</code></div><div class="line number457 index456 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">19</code><code class="css plain">,</code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number458 index457 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.write(PWM_ICON);</code></div><div class="line number459 index458 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">15</code><code class="css plain">,</code><code class="css value">1</code><code class="css plain">);</code></div><div class="line number460 index459 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"&nbsp;&nbsp; "</code><code class="css plain">);</code></div><div class="line number461 index460 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">15</code><code class="css plain">,</code><code class="css value">1</code><code class="css plain">);</code></div><div class="line number462 index461 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">if( charger_state == off)</code></div><div class="line number463 index462 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css value">0</code><code class="css plain">);</code></div><div class="line number464 index463 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">else</code></div><div class="line number465 index464 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(pwm);</code></div><div class="line number466 index465 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"% "</code><code class="css plain">);</code></div><div class="line number467 index466 alt2">&nbsp;</div><div class="line number468 index467 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">15</code><code class="css plain">,</code><code class="css value">2</code><code class="css plain">);</code></div><div class="line number469 index468 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"Load"</code><code class="css plain">);</code></div><div class="line number470 index469 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">lcd.setCursor(</code><code class="css value">15</code><code class="css plain">,</code><code class="css value">3</code><code class="css plain">);</code></div><div class="line number471 index470 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">if (load_status)</code></div><div class="line number472 index471 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">{</code></div><div class="line number473 index472 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"On&nbsp; "</code><code class="css plain">);</code></div><div class="line number474 index473 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">}</code></div><div class="line number475 index474 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">else</code></div><div class="line number476 index475 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">{</code></div><div class="line number477 index476 alt2"><code class="css spaces">&nbsp;&nbsp;&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(</code><code class="css string">"Off "</code><code class="css plain">);</code></div><div class="line number478 index477 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">}</code></div><div class="line number479 index478 alt2"><code class="css spaces">&nbsp;</code><code class="css plain">spinner();</code></div><div class="line number480 index479 alt1"><code class="css spaces">&nbsp;</code><code class="css plain">backLight_timer();</code></div><div class="line number481 index480 alt2"><code class="css plain">}</code></div><div class="line number482 index481 alt1">&nbsp;</div><div class="line number483 index482 alt2"><code class="css plain">void backLight_timer()</code></div><div class="line number484 index483 alt1"><code class="css plain">{</code></div><div class="line number485 index484 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">if((millis() - time) &lt;= </code><code class="css value">15000</code><code class="css plain">)</code></div><div class="line number486 index485 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">lcd.backlight();</code></div><div class="line number487 index486 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">else</code></div><div class="line number488 index487 alt1"><code class="css spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code class="css plain">lcd.noBacklight();</code></div><div class="line number489 index488 alt2"><code class="css plain">}</code></div><div class="line number490 index489 alt1"><code class="css plain">void spinner(void)</code></div><div class="line number491 index490 alt2"><code class="css plain">{</code></div><div class="line number492 index491 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">static</code> <code class="css plain">int cspinner;</code></div><div class="line number493 index492 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css value">static</code> <code class="css plain">char spinner_chars[] = { </code><code class="css string">'*'</code><code class="css plain">,</code><code class="css string">'*'</code><code class="css plain">, </code><code class="css string">'*'</code><code class="css plain">, </code><code class="css string">' '</code><code class="css plain">, </code><code class="css string">' '</code><code class="css plain">};</code></div><div class="line number494 index493 alt1"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">cspinner++;</code></div><div class="line number495 index494 alt2"><code class="css spaces">&nbsp;&nbsp;</code><code class="css plain">lcd.</code><code class="css value">print</code><code class="css plain">(spinner_chars[cspinner%sizeof(spinner_chars)]);</code></div><div class="line number496 index495 alt1"><code class="css plain">}</code></div></div></td></tr></tbody></table></div></div>
<p>And this is the final project image:</p>
<p><a href="https://microcontrolere.files.wordpress.com/2018/10/final.jpg"><img data-attachment-id="946" data-permalink="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/final-3/" data-orig-file="https://microcontrolere.files.wordpress.com/2018/10/final.jpg" data-orig-size="601,451" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="final" data-image-description="" data-medium-file="https://microcontrolere.files.wordpress.com/2018/10/final.jpg?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2018/10/final.jpg?w=601" class="aligncenter size-full wp-image-946" src="./microcontrolere.wordpress_files/final(1).jpg" alt="final" srcset="https://microcontrolere.files.wordpress.com/2018/10/final.jpg 601w, https://microcontrolere.files.wordpress.com/2018/10/final.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2018/10/final.jpg?w=300 300w" sizes="(max-width: 601px) 100vw, 601px"></a></p>
<p>Addendum:</p>
<p>Paul Stoffregen’s – TimerOne.h library for Arduino</p>
<p><a href="https://github.com/PaulStoffregen/TimerOne">PaulStoffregen/TimerOne</a></p>
<p>Newliquidcrystal_1.3.5.zip library for Arduino</p>
<p><a href="https://bitbucket.org/fmalpartida/new-liquidcrystal/downloads/">new-liquidcrystal 1.3.5</a></p>
<p>2006 Nicholas Zambetti – Wire.h library for Arduino</p>
<p><a href="https://bitbucket.org/fmalpartida/new-liquidcrystal/downloads/" rel="nofollow">https://bitbucket.org/fmalpartida/new-liquidcrystal/downloads/</a><a href="https://bitbucket.org/fmalpartida/new-liquidcrystal/downloads/">Nicholas Zambetti – New Liquid Crystal Library</a></p>
<p>and… Done compiling!</p>
<p><a href="https://microcontrolere.files.wordpress.com/2016/12/solar-charger-jpg.png"><img data-attachment-id="950" data-permalink="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/solar-charger-jpg/" data-orig-file="https://microcontrolere.files.wordpress.com/2016/12/solar-charger-jpg.png" data-orig-size="624,543" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="solar charger" data-image-description="" data-medium-file="https://microcontrolere.files.wordpress.com/2016/12/solar-charger-jpg.png?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2016/12/solar-charger-jpg.png?w=616" class="aligncenter size-rowling-post-image-thumb wp-image-950" src="./microcontrolere.wordpress_files/solar-charger-jpg.png" alt="solar charger " width="400" height="200" srcset="https://microcontrolere.files.wordpress.com/2016/12/solar-charger-jpg.png?w=400&amp;h=200&amp;crop=1 400w, https://microcontrolere.files.wordpress.com/2016/12/solar-charger-jpg.png?w=150&amp;h=75&amp;crop=1 150w, https://microcontrolere.files.wordpress.com/2016/12/solar-charger-jpg.png?w=300&amp;h=150&amp;crop=1 300w" sizes="(max-width: 400px) 100vw, 400px"></a></p>
<p>For those who asked me about PCB Layout, I answer that for test and rapidity, I used one of these type of modules except half-bridge IR2104, buck and boost convertors which I have interconnected:</p>
<div data-carousel-extra="{&quot;blog_id&quot;:64402984,&quot;permalink&quot;:&quot;https:\/\/microcontrolere.wordpress.com\/2016\/12\/16\/mppt-solar-charger\/&quot;}" id="gallery-662-1" class="gallery galleryid-662 gallery-columns-4 gallery-size-thumbnail"><figure class="gallery-item">
			<div class="gallery-icon landscape">
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/half-bridge/"><img width="150" height="150" src="./microcontrolere.wordpress_files/half-bridge.jpg" class="attachment-thumbnail size-thumbnail" alt="Half-Bridge IR2104 (electronics-lab)" aria-describedby="gallery-662-1-961" srcset="https://microcontrolere.files.wordpress.com/2019/02/half-bridge.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2019/02/half-bridge.jpg 200w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="961" data-permalink="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/half-bridge/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/02/half-bridge.jpg" data-orig-size="200,200" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="Half-Bridge IR2104 (electronics-lab)" data-image-description="&lt;p&gt;Half-Bridge IR2104 (electronics-lab)&lt;/p&gt;
" data-medium-file="https://microcontrolere.files.wordpress.com/2019/02/half-bridge.jpg?w=200" data-large-file="https://microcontrolere.files.wordpress.com/2019/02/half-bridge.jpg?w=200"></a>
			</div>
				<figcaption class="wp-caption-text gallery-caption" id="gallery-662-1-961">
				Half-Bridge IR2104 (electronics-lab)
				</figcaption></figure><figure class="gallery-item">
			<div class="gallery-icon landscape">
				<a href="https://microcontrolere.wordpress.com/buck-convertor/"><img width="150" height="118" src="./microcontrolere.wordpress_files/buck-convertor.jpg" class="attachment-thumbnail size-thumbnail" alt="buck convertor" aria-describedby="gallery-662-1-960" srcset="https://microcontrolere.files.wordpress.com/2019/02/buck-convertor.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2019/02/buck-convertor.jpg 204w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="960" data-permalink="https://microcontrolere.wordpress.com/buck-convertor/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/02/buck-convertor.jpg" data-orig-size="204,161" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="buck convertor" data-image-description="&lt;p&gt;buck convertor&lt;/p&gt;
" data-medium-file="https://microcontrolere.files.wordpress.com/2019/02/buck-convertor.jpg?w=204" data-large-file="https://microcontrolere.files.wordpress.com/2019/02/buck-convertor.jpg?w=204"></a>
			</div>
				<figcaption class="wp-caption-text gallery-caption" id="gallery-662-1-960">
				buck convertor
				</figcaption></figure><figure class="gallery-item">
			<div class="gallery-icon landscape">
				<a href="https://microcontrolere.wordpress.com/acs712/"><img width="150" height="115" src="./microcontrolere.wordpress_files/acs712.jpg" class="attachment-thumbnail size-thumbnail" alt="ACS712 module" aria-describedby="gallery-662-1-958" srcset="https://microcontrolere.files.wordpress.com/2019/02/acs712.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2019/02/acs712.jpg 262w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="958" data-permalink="https://microcontrolere.wordpress.com/acs712/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/02/acs712.jpg" data-orig-size="262,200" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="ACS712  module" data-image-description="&lt;p&gt;ACS712  module&lt;/p&gt;
" data-medium-file="https://microcontrolere.files.wordpress.com/2019/02/acs712.jpg?w=262" data-large-file="https://microcontrolere.files.wordpress.com/2019/02/acs712.jpg?w=262"></a>
			</div>
				<figcaption class="wp-caption-text gallery-caption" id="gallery-662-1-958">
				ACS712  module
				</figcaption></figure><figure class="gallery-item">
			<div class="gallery-icon landscape">
				<a href="https://microcontrolere.wordpress.com/boost-convertor/"><img width="150" height="150" src="./microcontrolere.wordpress_files/boost-convertor.jpg" class="attachment-thumbnail size-thumbnail" alt="boost convertor" aria-describedby="gallery-662-1-959" srcset="https://microcontrolere.files.wordpress.com/2019/02/boost-convertor.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2019/02/boost-convertor.jpg 204w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="959" data-permalink="https://microcontrolere.wordpress.com/boost-convertor/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/02/boost-convertor.jpg" data-orig-size="204,204" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="boost convertor" data-image-description="&lt;p&gt;boost convertor&lt;/p&gt;
" data-medium-file="https://microcontrolere.files.wordpress.com/2019/02/boost-convertor.jpg?w=204" data-large-file="https://microcontrolere.files.wordpress.com/2019/02/boost-convertor.jpg?w=204"></a>
			</div>
				<figcaption class="wp-caption-text gallery-caption" id="gallery-662-1-959">
				boost convertor
				</figcaption></figure>
		</div>

<p>&nbsp;</p>
<div data-carousel-extra="{&quot;blog_id&quot;:64402984,&quot;permalink&quot;:&quot;https:\/\/microcontrolere.wordpress.com\/2016\/12\/16\/mppt-solar-charger\/&quot;}" id="gallery-662-2" class="gallery galleryid-662 gallery-columns-3 gallery-size-thumbnail"><figure class="gallery-item">
			<div class="gallery-icon landscape">
				<a href="https://microcontrolere.wordpress.com/5v-16x4-lcd/"><img width="150" height="108" src="./microcontrolere.wordpress_files/5v-16x4-lcd.jpg" class="attachment-thumbnail size-thumbnail" alt="5V-16x4 LCD" aria-describedby="gallery-662-2-957" srcset="https://microcontrolere.files.wordpress.com/2019/02/5v-16x4-lcd.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2019/02/5v-16x4-lcd.jpg 277w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="957" data-permalink="https://microcontrolere.wordpress.com/5v-16x4-lcd/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/02/5v-16x4-lcd.jpg" data-orig-size="277,200" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="5V-16×4 LCD" data-image-description="&lt;p&gt;5V-16×4 LCD&lt;/p&gt;
" data-medium-file="https://microcontrolere.files.wordpress.com/2019/02/5v-16x4-lcd.jpg?w=277" data-large-file="https://microcontrolere.files.wordpress.com/2019/02/5v-16x4-lcd.jpg?w=277"></a>
			</div>
				<figcaption class="wp-caption-text gallery-caption" id="gallery-662-2-957">
				5V-16×4 LCD
				</figcaption></figure><figure class="gallery-item">
			<div class="gallery-icon landscape">
				<a href="https://microcontrolere.wordpress.com/pro-mini/"><img width="150" height="85" src="./microcontrolere.wordpress_files/pro-mini.jpg" class="attachment-thumbnail size-thumbnail" alt="Arduino pro mini" aria-describedby="gallery-662-2-963" srcset="https://microcontrolere.files.wordpress.com/2019/02/pro-mini.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2019/02/pro-mini.jpg?w=300 300w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="963" data-permalink="https://microcontrolere.wordpress.com/pro-mini/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/02/pro-mini.jpg" data-orig-size="353,200" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;18&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;NIKON D90&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;1236941921&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;200&quot;,&quot;iso&quot;:&quot;200&quot;,&quot;shutter_speed&quot;:&quot;1.6&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="Arduino pro mini" data-image-description="&lt;p&gt;Arduino pro mini&lt;/p&gt;
" data-medium-file="https://microcontrolere.files.wordpress.com/2019/02/pro-mini.jpg?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2019/02/pro-mini.jpg?w=353"></a>
			</div>
				<figcaption class="wp-caption-text gallery-caption" id="gallery-662-2-963">
				Arduino pro mini
				</figcaption></figure><figure class="gallery-item">
			<div class="gallery-icon landscape">
				<a href="https://microcontrolere.wordpress.com/i2c-lcd/"><img width="150" height="56" src="./microcontrolere.wordpress_files/i2c-lcd.jpg" class="attachment-thumbnail size-thumbnail" alt="I2C-LCD Interface" aria-describedby="gallery-662-2-962" srcset="https://microcontrolere.files.wordpress.com/2019/02/i2c-lcd.jpg?w=150 150w, https://microcontrolere.files.wordpress.com/2019/02/i2c-lcd.jpg?w=300 300w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="962" data-permalink="https://microcontrolere.wordpress.com/i2c-lcd/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/02/i2c-lcd.jpg" data-orig-size="540,200" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="I2C-LCD Interface" data-image-description="&lt;p&gt;I2C-LCD Interface&lt;/p&gt;
" data-medium-file="https://microcontrolere.files.wordpress.com/2019/02/i2c-lcd.jpg?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2019/02/i2c-lcd.jpg?w=540"></a>
			</div>
				<figcaption class="wp-caption-text gallery-caption" id="gallery-662-2-962">
				I2C-LCD Interface
				</figcaption></figure>
		</div>

<p>A good solution for those who need Half-Bridge IR2104 can follow <a href="http://www.electronics-lab.com/project/high-current-discrete-half-bridge-based-ir2104-ir2101/"><strong>this link</strong></a>.</p>
<p>Here is the conventional P&amp;O MPPT algorithm Flowchart:</p>
<p><a href="https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png"><img data-attachment-id="995" data-permalink="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/po-algorithm/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png" data-orig-size="932,726" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="P&amp;amp;O algorithm" data-image-description="" data-medium-file="https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png?w=616" class="aligncenter size-rowling-post-image-thumb wp-image-995" src="./microcontrolere.wordpress_files/po-algorithm.png" alt="P&amp;O algorithm" width="400" height="200" srcset="https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png?w=400&amp;h=200&amp;crop=1 400w, https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png?w=800&amp;h=400&amp;crop=1 800w, https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png?w=150&amp;h=75&amp;crop=1 150w, https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png?w=300&amp;h=150&amp;crop=1 300w, https://microcontrolere.files.wordpress.com/2019/03/po-algorithm.png?w=768&amp;h=384&amp;crop=1 768w" sizes="(max-width: 400px) 100vw, 400px"></a></p>
<p>And a new added: Code Simulation on Proteus (print screen)</p>
<p><a href="https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png"><img data-attachment-id="998" data-permalink="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/code-simulation-on-proteus/" data-orig-file="https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png" data-orig-size="849,547" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="Code simulation on PROTEUS" data-image-description="" data-medium-file="https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png?w=300" data-large-file="https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png?w=616" class="aligncenter size-full wp-image-998" src="./microcontrolere.wordpress_files/code-simulation-on-proteus.png" alt="Code simulation on PROTEUS" width="616" height="397" srcset="https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png?w=616&amp;h=397 616w, https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png?w=150&amp;h=97 150w, https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png?w=300&amp;h=193 300w, https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png?w=768&amp;h=495 768w, https://microcontrolere.files.wordpress.com/2019/04/code-simulation-on-proteus.png 849w" sizes="(max-width: 616px) 100vw, 616px"></a><br>
<span style="color:blue;"><br>
I have come back to this post due to the large number of requests from passionate people wanting to let you know another article published by <em>Debasish Dutta</em>, after a hard work that we each bring little contribution to.<br>
This article is: <a href="https://hackaday.io/project/4613-arduino-mppt-solar-charge-controller?page=2"><strong>here</strong></a><br>
And <a href="https://github.com/aplavins/MPPT_Master/blob/master/MPPT_Code/MPPT_Code.ino"><strong>here</strong></a> repositories with contribution of <em>Adam Plavinsto</em> to this project:Please read carefully the coments of <em>Keith Hungerford</em> to this project.<br>
I tested this code in Proteus. The code perfect matches <strong>on the existing hardware</strong>. The result is a positive one. You can use or not facilities offered by ESP8266.</span></p>
<p><img src="./microcontrolere.wordpress_files/simulation.png" alt="MPPT Solar Charger Simulation">And I must say once again that we are grateful to Tim Nolan.</p>
<p>Update 14/05/2019: code deleted to avoid confusion</p>
<div id="jp-post-flair" class="sharedaddy sd-rating-enabled sd-like-enabled sd-sharing-enabled"><div class="sd-block sd-rating"><h3 class="sd-title">Rate this:</h3><div class="cs-rating pd-rating" id="pd_rating_holder_7462246_post_662" style="display: inline-block;"><div class="rating-icons" id="pd_rate_7462246_post_662" style="float:left;"><div class="rating-star-icon" onmouseout="PDRTJS_7462246_post_662.rebuild();" onclick="PDRTJS_7462246_post_662.rate(1);" onmouseover="PDRTJS_7462246_post_662.hover(1);" id="PDRTJS_7462246_post_662_stars_1" style="background-size: 32px 48px !important; cursor: pointer; width: 16px; height: 16px; line-height: 16px; background: url(https://polldaddy.com/images/ratings/star-yellow-sml.png) top left; float: left; padding: 0px; margin: 0px; margin-right: 1px;">&nbsp;</div><div class="rating-star-icon" onmouseout="PDRTJS_7462246_post_662.rebuild();" onclick="PDRTJS_7462246_post_662.rate(2);" onmouseover="PDRTJS_7462246_post_662.hover(2);" id="PDRTJS_7462246_post_662_stars_2" style="background-size: 32px 48px !important; cursor: pointer; width: 16px; height: 16px; line-height: 16px; background: url(https://polldaddy.com/images/ratings/star-yellow-sml.png) top left; float: left; padding: 0px; margin: 0px; margin-right: 1px;">&nbsp;</div><div class="rating-star-icon" onmouseout="PDRTJS_7462246_post_662.rebuild();" onclick="PDRTJS_7462246_post_662.rate(3);" onmouseover="PDRTJS_7462246_post_662.hover(3);" id="PDRTJS_7462246_post_662_stars_3" style="background-size: 32px 48px !important; cursor: pointer; width: 16px; height: 16px; line-height: 16px; background: url(https://polldaddy.com/images/ratings/star-yellow-sml.png) top left; float: left; padding: 0px; margin: 0px; margin-right: 1px;">&nbsp;</div><div class="rating-star-icon" onmouseout="PDRTJS_7462246_post_662.rebuild();" onclick="PDRTJS_7462246_post_662.rate(4);" onmouseover="PDRTJS_7462246_post_662.hover(4);" id="PDRTJS_7462246_post_662_stars_4" style="background-size: 32px 48px !important; cursor: pointer; width: 16px; height: 16px; line-height: 16px; background: url(https://polldaddy.com/images/ratings/star-yellow-sml.png) top left; float: left; padding: 0px; margin: 0px; margin-right: 1px;">&nbsp;</div><div class="rating-star-icon" onmouseout="PDRTJS_7462246_post_662.rebuild();" onclick="PDRTJS_7462246_post_662.rate(5);" onmouseover="PDRTJS_7462246_post_662.hover(5);" id="PDRTJS_7462246_post_662_stars_5" style="background-size: 32px 48px !important; cursor: pointer; width: 16px; height: 16px; line-height: 16px; background: url(https://polldaddy.com/images/ratings/star-yellow-sml.png) top left; float: left; padding: 0px; margin: 0px; margin-right: 1px;">&nbsp;</div></div><span style="float:left;">&nbsp;</span><div id="rating_info_7462246_post_662" style="display:block;float:left;background:url(https://polldaddy.com/images/ratings/info.png) no-repeat 3px 2px;width:16px;height:16px;cursor:pointer; null " onclick="javascript:PDRTJS_7462246_post_662.togglePopup();return false;"><span style="display:none;">i</span></div><div class="pd_popup_holder" id="pd_popup_holder_7462246_post_662">&nbsp;</div><div class="rating-msg" id="PDRTJS_7462246_post_662_msg" style="float:left; padding-left: 5px; text-align: left; font:normal normal /16px ; color: #;">17 Votes</div><p style="padding: 0px; margin: 0px; clear: both;"></p></div></div><div class="sharedaddy sd-sharing-enabled"><div class="robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing"><h3 class="sd-title">Share this:</h3><div class="sd-content"><ul><li class="share-facebook"><a rel="nofollow noopener noreferrer" data-shared="sharing-facebook-662" class="share-facebook sd-button share-icon" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?share=facebook&amp;nb=1" target="_blank" title="Click to share on Facebook"><span>Facebook</span></a></li><li class="share-pinterest"><a rel="nofollow noopener noreferrer" data-shared="sharing-pinterest-662" class="share-pinterest sd-button share-icon" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?share=pinterest&amp;nb=1" target="_blank" title="Click to share on Pinterest"><span>Pinterest<span class="share-count">366</span></span></a></li><li class="share-linkedin"><a rel="nofollow noopener noreferrer" data-shared="sharing-linkedin-662" class="share-linkedin sd-button share-icon" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?share=linkedin&amp;nb=1" target="_blank" title="Click to share on LinkedIn"><span>LinkedIn</span></a></li><li class="share-end"></li></ul></div></div></div><div class="sharedaddy sd-block sd-like jetpack-likes-widget-wrapper jetpack-likes-widget-loaded" id="like-post-wrapper-64402984-662-5e68d7bda7fd0" data-src="//widgets.wp.com/likes/index.html?ver=20190321#blog_id=64402984&amp;post_id=662&amp;origin=microcontrolere.wordpress.com&amp;obj_id=64402984-662-5e68d7bda7fd0" data-name="like-post-frame-64402984-662-5e68d7bda7fd0"><h3 class="sd-title">Like this:</h3><div class="likes-widget-placeholder post-likes-widget-placeholder" style="height: 55px; display: none;"><span class="button"><span>Like</span></span> <span class="loading">Loading...</span></div><iframe class="post-likes-widget jetpack-likes-widget" name="like-post-frame-64402984-662-5e68d7bda7fd0" height="55px" width="100%" frameborder="0" src="./microcontrolere.wordpress_files/index.html"></iframe><span class="sd-text-color"></span><a class="sd-link-color"></a></div>
<div id="jp-relatedposts" class="jp-relatedposts" style="display: block;">
	<h3 class="jp-relatedposts-headline"><em>Related</em></h3>
<div class="jp-relatedposts-items jp-relatedposts-items-minimal"><p class="jp-relatedposts-post jp-relatedposts-post0" data-post-id="1037" data-post-format="false"><span class="jp-relatedposts-post-title"><a class="jp-relatedposts-post-a" href="https://microcontrolere.wordpress.com/2019/05/22/mppt-charger-ver-2/" title="mppt solar charger ver 2

Because there are many who have difficulty in putting into operation a MPPT charger, which I also have to admit I met, but I have surpassed them, I will bring in the original code to which I have made minor modifications, but that I have studied for a long time.…" data-origin="662" data-position="0">mppt solar charger ver 2</a></span><span class="jp-relatedposts-post-context">In "Arduino"</span></p><p class="jp-relatedposts-post jp-relatedposts-post1" data-post-id="1089" data-post-format="false"><span class="jp-relatedposts-post-title"><a class="jp-relatedposts-post-a" href="https://microcontrolere.wordpress.com/2019/06/19/arduino-current-measure-acs712/" title="Arduino current measure - ACS712

Make the connections show in this diagram: First of all you must known that the VCC for ASC712 is 5V. When there is no current flowing through the IP+ and IP- terminals, the output voltage at Vout of ACS712 is 2500 mV. (0.00A means 2500mV)!! This means that you need…" data-origin="662" data-position="1">Arduino current measure - ACS712</a></span><span class="jp-relatedposts-post-context">In "Arduino"</span></p><p class="jp-relatedposts-post jp-relatedposts-post2" data-post-id="1075" data-post-format="false"><span class="jp-relatedposts-post-title"><a class="jp-relatedposts-post-a" href="https://microcontrolere.wordpress.com/2019/06/19/arduino-voltage-divider-analog-inputs/" title="Arduino voltage divider  Analog inputs

On short: let&#39;s say we want to use Arduino, to measure voltages higher than 5 volts as Arduino&#39;s analog inputs accept. Arduino works only with digital values. Voltage is analog. It is necessary to convert the analog value from input into digital signal. This is done by the Analog read…" data-origin="662" data-position="2">Arduino voltage divider  Analog inputs</a></span><span class="jp-relatedposts-post-context">In "Arduino"</span></p></div></div></div>
							
						</div>

					
					<footer class="post-footer">

						
							<div class="post-tags">

								<a href="https://microcontrolere.wordpress.com/tag/arduino-mppt-charger/" rel="tag">Arduino MPPT Charger</a><a href="https://microcontrolere.wordpress.com/tag/mppt-solar-charger/" rel="tag">MPPT solar charger</a><a href="https://microcontrolere.wordpress.com/tag/po-algorithm/" rel="tag">P&amp;O Algorithm</a><a href="https://microcontrolere.wordpress.com/tag/schematic-diagram-mppt-solar-charger/" rel="tag">Schematic diagram MPPT solar charger</a>
							</div>

						
							<div class="entry-author author-avatar-show">
				<div class="author-avatar">
			<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536.png" class="avatar avatar-100 grav-hashed grav-hijack" height="100" width="100" id="grav-05721d1f49e55e216da8dd72720cffee-0">		</div><!-- .author-avatar -->
		
		<div class="author-heading">
			<h2 class="author-title">Published by <span class="author-name">asmlektor</span></h2>
		</div><!-- .author-heading -->

		<p class="author-bio">
						<a class="author-link" href="https://microcontrolere.wordpress.com/author/asmlektor/" rel="author">
				View all posts by asmlektor			</a>
		</p><!-- .author-bio -->
	</div><!-- .entry-auhtor -->

					</footer>

				</div> <!-- /post-inner -->

			</article> <!-- /post -->

		
	<nav class="navigation post-navigation" role="navigation" aria-label="Posts">
		<h2 class="screen-reader-text">Post navigation</h2>
		<div class="nav-links"><div class="nav-previous"><a href="https://microcontrolere.wordpress.com/2016/08/29/cum-se-incarca-bootloader-in-atmega-328p-folosind-arduino-uno-ca-programator/" rel="prev"><span class="meta-nav" aria-hidden="true">Previous</span> <span class="screen-reader-text">Previous post:</span> <span class="navigation-post-title previous-post-title">Cum se incarca bootloader in ATmega 328P folosind Arduino Uno ca&nbsp;programator</span></a></div><div class="nav-next"><a href="https://microcontrolere.wordpress.com/2017/12/09/despre-raspberry-pi/" rel="next"><span class="meta-nav" aria-hidden="true">Next</span> <span class="screen-reader-text">Next post:</span> <span class="navigation-post-title next-post-title">Despre Raspberry Pi</span></a></div></div>
	</nav>
		
<div id="comments" class="comments-area clear-fix">

	
	<div class="comments-container">

		<div class="comments-inner">

			<a name="comments"></a>

			<div class="comments-title-container clear-fix">

				<h3 class="comments-title">
					228 thoughts on “<span>MPPT Solar Charger</span>”				</h3>

				<p class="comments-title-link">

					<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#respond">Add Comment</a>

				</p>

			</div><!-- /comments-title-link -->

			<div class="comments">

				<ol class="comment-list">
							<li id="comment-14532" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14532" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(1).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-f926372af09b6bb1d0b989ca2de7b106-0">						<b class="fn">Tony</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14532">
							<time datetime="2019-04-28T00:34:01+02:00">
								28/04/2019 at 12:34 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Today I build that exact same circuit that I provided above except used 0.47uF instead of 100nF ceramic capacitor(pin 8-pin 6) and 10uF/25V, ceramic having 82 for pin 1 and pin 4.  I used 12 V for supplying both input and IR2104 (pin 1), I also used Arduino ground pin to connect all ground terminals  to this common pin. Connected 12 Ohms resistance to measure output voltage. I got 0 V until Q3 (3rd MOSFET on the picture above) burned out, actually all MOSFET’s got really hot. I think I should connect 22 Ohms to MOSFET’s gates.</p>
<p>My Arduino code is here:</p>
<p>#include </p>
<p>void setup()<br>
{<br>
  // Initialize the digital pin as an output.<br>
  // Pin 13 has an LED connected on most Arduino boards<br>
  pinMode(9, OUTPUT);<br>
  pinMode(8, OUTPUT);<br>
  digitalWrite(8, HIGH);<br>
  Timer1.initialize(20); // set a timer of length 8uS<br>
  //Timer1.attachInterrupt( timerIsr ); // attach the service routine here</p>
<p>  //Set duty cycle<br>
  //Timer1.pwm(9,256);  // 25% duty cycle<br>
 // Timer1.pwm(9, 512); // 50% duty cycle<br>
  Timer1.pwm(9, 768);  //  75% duty cycle<br>
}</p>
<p>void loop()<br>
{<br>
  // Main code loop<br>
  // TODO: Put your regular (non-ISR) logic here<br>
}</p>
<p>What would be the problem here?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14532#respond" data-commentid="14532" data-postid="662" data-belowelement="div-comment-14532" data-respondelement="respond" aria-label="Reply to Tony">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14535" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14535" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-1">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14535">
							<time datetime="2019-04-28T07:46:12+02:00">
								28/04/2019 at 7:46 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Please stop burning MOSFET transistors. Until you see that software works well, do not insert power transistors. Try to reproduce the below circuit on the breadboard. It also put he LCD on the circuit to see what happens in the simulation. Connect the osciloscope to the pins 8 and 9. After all, you may put the transistors there.<br>
Do not rush. This circuit is not a simple one, which works from the first attempt. I have not burned any transistor or other.  You must connect 22 Ohm resistor to the gate of transistors but this is not the biggest problem there.</p>
<p><img src="./microcontrolere.wordpress_files/sym.png" alt=""></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14535#respond" data-commentid="14535" data-postid="662" data-belowelement="div-comment-14535" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14555" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14555" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-2">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14555">
							<time datetime="2019-05-07T04:13:15+02:00">
								07/05/2019 at 4:13 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I tested this code in proteus. It works impeccably and provides the proper signals for the two MOSFET transistors.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14555#respond" data-commentid="14555" data-postid="662" data-belowelement="div-comment-14555" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14536" class="comment odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14536" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(3).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-53b35c720fc6cb314e64d4bdca7c8f2b-0">						<b class="fn">Wiratama Oryza Tito Fernando</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14536">
							<time datetime="2019-04-28T16:49:15+02:00">
								28/04/2019 at 4:49 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>can u share the clear picture? <a href="./microcontrolere.wordpress_files/simulation.png" rel="nofollow ugc">https://microcontrolere.files.wordpress.com/2019/04/simulation.png?w=616</a></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14536#respond" data-commentid="14536" data-postid="662" data-belowelement="div-comment-14536" data-respondelement="respond" aria-label="Reply to Wiratama Oryza Tito Fernando">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14537" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14537" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-3">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14537">
							<time datetime="2019-04-28T22:24:19+02:00">
								28/04/2019 at 10:24 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I did the simulation at Haris’s request in 31/03/2019. It was just a try. This was a print screen from Proteus and I did not keep the picture.<br>
In my opinion, it does not matter in the construction of the project.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14537#respond" data-commentid="14537" data-postid="662" data-belowelement="div-comment-14537" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14611" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14611" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-4">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14611">
							<time datetime="2019-05-19T15:32:34+02:00">
								19/05/2019 at 3:32 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I tried to simulate in Proteus the code in the TỔNG QUAN VỀ NĂNG LƯỢNG MẶT TRỜI document provided by you. I loaded the code to Ardino on my breadboard and the circuit seams to generate no any PWM signal on pins 5 and 7. I recomad you to try the code from the botom of my article.  If you wish to use I2c LCD on this code , please replace the code from the  lines  with:<br>
Line 15       #include “LiquidCrystal_I2C.h”<br>
Line 102 and Line 103    LiquidCrystal_I2C lcd(0x20 ,2,1,0,4,5,6,7,3, POSITIVE);  //ox20 is the I2C address for PCF8574 for proteus simulation !!!! 0x3F is the normal one.<br>
In your diagram ACS712 Pin 6, named “FILT” must have a CAPACITOR to GND !!!<br>
Your SERVOs are too small for the weight of that pannel. In the event of a strong wind can be damaged.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14611#respond" data-commentid="14611" data-postid="662" data-belowelement="div-comment-14611" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14540" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14540" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(4).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-48aca2c658a9c8374a7b8158a09df5cd-0">						<b class="fn">Oladipo Segun Adewale</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14540">
							<time datetime="2019-05-03T17:47:07+02:00">
								03/05/2019 at 5:47 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>how did you arrive at the solar amps scale you used because this calculation (5/(1024 *0.185) is giving a different result</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14540#respond" data-commentid="14540" data-postid="662" data-belowelement="div-comment-14540" data-respondelement="respond" aria-label="Reply to Oladipo Segun Adewale">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14548" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14548" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-5">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14548">
							<time datetime="2019-05-06T11:00:39+02:00">
								06/05/2019 at 11:00 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>You right. This is an <strong>experimental</strong> calibration value to make 0.00 Amps on LCD, with no load attached.<br>
Same for voltage, because the resistors R1, R2 and R7,R8 are not a precison ones.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14548#respond" data-commentid="14548" data-postid="662" data-belowelement="div-comment-14548" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14545" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14545" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(5).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-b19d7994ba8376b4a1a0afc9ad83446a-0">						<b class="fn">Nhu Thanh</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14545">
							<time datetime="2019-05-05T10:07:41+02:00">
								05/05/2019 at 10:07 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hello Sir,<br>
I made same ones, but it have a problem with my circuit.<br>
I tried checking it over and over again. I don’t know where I did wrong.<br>
 i tried testing it , It is so OKK. but when i connected with circuit, it isnot working.<br>
Can you look at the image link below?<br>
<a href="https://drive.google.com/drive/u/0/folders/1SITm1vfa8qjTlTsyeUdsR56cQ3N7JxNV" rel="nofollow ugc">https://drive.google.com/drive/u/0/folders/1SITm1vfa8qjTlTsyeUdsR56cQ3N7JxNV</a><br>
Can you help me?<br>
Thanks Sir!</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14545#respond" data-commentid="14545" data-postid="662" data-belowelement="div-comment-14545" data-respondelement="respond" aria-label="Reply to Nhu Thanh">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14552" class="comment odd alt depth-2 parent highlander-comment">
			<article id="div-comment-14552" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(5).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-b19d7994ba8376b4a1a0afc9ad83446a-1">						<b class="fn">Nhu Thanh</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14552">
							<time datetime="2019-05-06T14:43:06+02:00">
								06/05/2019 at 2:43 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Sorry, I have uploaded new photo this link. here is my ACS. Power supply from arduino.<br>
<a href="https://drive.google.com/folderview?id=1SITm1vfa8qjTlTsyeUdsR56cQ3N7JxNV" rel="nofollow ugc">https://drive.google.com/folderview?id=1SITm1vfa8qjTlTsyeUdsR56cQ3N7JxNV</a></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14552#respond" data-commentid="14552" data-postid="662" data-belowelement="div-comment-14552" data-respondelement="respond" aria-label="Reply to Nhu Thanh">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14553" class="comment byuser comment-author-asmlektor bypostauthor even depth-3 highlander-comment">
			<article id="div-comment-14553" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-6">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14553">
							<time datetime="2019-05-06T19:45:58+02:00">
								06/05/2019 at 7:45 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>1.I asked that because the ACS712 is a bi-directional, Hall effect current sensing IC. When the current is passed from pins 1 and 2, to pins 3 and 4, the indication is positive. I suspected a wrong connection, but it’s ok.<br>
2.I suspect that no current through AC712.  Please uses a digital multimeter  to check the current flowing through.<br>
3.When there is no current flowing through the device, the output pin must have Vcc /2<br>
4.If the voltage at the output pin is under 2.5V  Arduino is converting  to negative output value.<br>
5. Try separately a simple code like that:<br>
<code><br>
void setup()<br>
{<br>
  Serial.begin(9600);<br>
}<br>
void loop()<br>
{<br>
 float average = 0;<br>
 for(int i = 0; i &lt; 1000; i++)<br>
{<br>
   average = average + (.0264 * analogRead(A0) -13.51); //for the 5A module,<br>
   delay(1);<br>
 }<br>
 Serial.print("Current :");<br>
 Serial.print(average/1000);<br>
 Serial.println("A");<br>
}<br>
</code></p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14560" class="comment odd alt thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14560" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(1).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-f926372af09b6bb1d0b989ca2de7b106-1">						<b class="fn">Tony</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14560">
							<time datetime="2019-05-08T03:28:14+02:00">
								08/05/2019 at 3:28 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hello,<br>
Can I supply IR2104 +12 V from input voltage?<br>
When there is not enough voltage IR2104 won’t work naturally.<br>
Or should I supply +12 V from battery as shown in your schematic.<br>
Thanks</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14560#respond" data-commentid="14560" data-postid="662" data-belowelement="div-comment-14560" data-respondelement="respond" aria-label="Reply to Tony">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14564" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 parent highlander-comment">
			<article id="div-comment-14564" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-7">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14564">
							<time datetime="2019-05-08T17:08:43+02:00">
								08/05/2019 at 5:08 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>To turn it ON strongly the N-channel MOSFET, you need to bring the gate about 10V more positive than the source. So you need a way to generate a more voltage to drive the gate. You need a “high-side MOSFET driver” IC. The IR2104 is the one.<br>
Solar voltage is so variable. I prefered to use battery voltage trhough a boost converter te create a stable 18 Volts to power IR2104 circuit.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14564#respond" data-commentid="14564" data-postid="662" data-belowelement="div-comment-14564" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14566" class="comment odd alt depth-3 parent highlander-comment">
			<article id="div-comment-14566" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(1).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-f926372af09b6bb1d0b989ca2de7b106-2">						<b class="fn">Tony</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14566">
							<time datetime="2019-05-08T18:34:58+02:00">
								08/05/2019 at 6:34 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>So can I power IR2104 +12V input directly from battery without using any power converters? The reason I am asking, I don’t have any room for additional converter on my build.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14567" class="comment byuser comment-author-asmlektor bypostauthor even depth-3 highlander-comment">
			<article id="div-comment-14567" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-8">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14567">
							<time datetime="2019-05-08T19:31:05+02:00">
								08/05/2019 at 7:31 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Yes,  I think you can try that …but is better to add a 100 uF capacitor between pins 1 and 4 localy, and follow the signals on an oscilloscope.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14561" class="comment odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14561" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(5).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-b19d7994ba8376b4a1a0afc9ad83446a-2">						<b class="fn">Nhu Thanh</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14561">
							<time datetime="2019-05-08T06:08:27+02:00">
								08/05/2019 at 6:08 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi Sir,<br>
I tried test is. there is no current flowing through ACS712 and have voltage. Where is power supply for Arduino? GND is connected with all, even GND of arduino?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14561#respond" data-commentid="14561" data-postid="662" data-belowelement="div-comment-14561" data-respondelement="respond" aria-label="Reply to Nhu Thanh">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14565" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14565" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-9">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14565">
							<time datetime="2019-05-08T17:44:20+02:00">
								08/05/2019 at 5:44 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Minus (-) from Solar Pannel is common to GND from Arduino, pin 4 of IR2104 with Source of Q2 (in my diagram) with all GND and all GND convertors and (-) of Battery too.<br>
If still there is no current flow maybe the pin 9 and 8 of Arduino give no signals to IR2104 . I have already posted the waveforms from these pins.<br>
In that case something is wrong somewhere: software or hardware.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14565#respond" data-commentid="14565" data-postid="662" data-belowelement="div-comment-14565" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14576" class="comment byuser comment-author-altikirbes odd alt thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14576" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(6).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-e82d052d283cb97e8345f35fb200bfa9-0">						<b class="fn"><a href="http://gravatar.com/altikirbes" rel="external nofollow ugc" class="url">altikirbes</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14576">
							<time datetime="2019-05-10T19:43:04+02:00">
								10/05/2019 at 7:43 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I want to ask that your schematic is OK? You have 2 mosfet in circuit. You remove Q3 from debasish circuit. But some people have 3 mosfet on their circuit. COuld you confirm that circuit in infront of page is OK?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14576#respond" data-commentid="14576" data-postid="662" data-belowelement="div-comment-14576" data-respondelement="respond" aria-label="Reply to altikirbes">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14578" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14578" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-10">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14578">
							<time datetime="2019-05-11T11:03:45+02:00">
								11/05/2019 at 11:03 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Some people are using 4 MOS-FET transistors. Q3 from debasish circuit is used for connect or disconnect the LOAD (user appliance)from battery, on precise operating conditions, that is correct and that’s why I did not changed the code. (see lines 322-338 and 19). On the other hand, Q1 from other diagrams is used for disconnect the Solar pannel from buck converter circuit.<br>
I have experienced the basic functionality of this circuit and the code, making the necessary changes and adapted to my needs,  to make it functional.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14578#respond" data-commentid="14578" data-postid="662" data-belowelement="div-comment-14578" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14581" class="comment byuser comment-author-altikirbes odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14581" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(6).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-e82d052d283cb97e8345f35fb200bfa9-1">						<b class="fn"><a href="http://gravatar.com/altikirbes" rel="external nofollow ugc" class="url">altikirbes</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14581">
							<time datetime="2019-05-11T22:47:56+02:00">
								11/05/2019 at 10:47 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>There is a problem with no current flow through battery. There is panel voltage that I can read, there is a battery voltage that I can read. Mosfet is on, but there is no current flow. Everything is true. What should I do ?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14581#respond" data-commentid="14581" data-postid="662" data-belowelement="div-comment-14581" data-respondelement="respond" aria-label="Reply to altikirbes">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14584" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 parent highlander-comment">
			<article id="div-comment-14584" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-11">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14584">
							<time datetime="2019-05-12T06:31:29+02:00">
								12/05/2019 at 6:31 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>In a few words:<br>
This is not a very simple project. Knowledge in electronics is important. The existence of an oscilloscope too. Also the correct software and hardware functionality.<br>
1. Check the supply voltage for IR2104 (12-18v).<br>
2. Instead of the solar panel, put an adjustable voltage source. If you adjust the voltage between 11 and 15 volts, the circuit works quite differently.<br>
3. If the battery has a voltage above 14 volts buck converter no longer supplies power to the battery.<br>
4. Please use it an osciloscope. With the naked eye you can not see the output signals from the microcontroller to the IR2104 pin 8 and 9.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14584#respond" data-commentid="14584" data-postid="662" data-belowelement="div-comment-14584" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14585" class="comment byuser comment-author-altikirbes odd alt depth-3 parent highlander-comment">
			<article id="div-comment-14585" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(6).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-e82d052d283cb97e8345f35fb200bfa9-2">						<b class="fn"><a href="http://gravatar.com/altikirbes" rel="external nofollow ugc" class="url">altikirbes</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14585">
							<time datetime="2019-05-12T12:12:21+02:00">
								12/05/2019 at 12:12 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Dear Sir, I will answer the questions,<br>
1- IR2104 voltage ( pin1 for supply) 12.5V<br>
2- I use adjustable voltage source also.circuit works 11-15V supply voltage, but I turn supply source up to 16V, system go into float mode and mosfet is closed. When they blow down to 15V to go into bulk or on mode again, but mosfet dont turn on again.<br>
3- I drop voltage on battery when it exceed 14 volt. But it dont turn back to bulk mode from float mode. Mosfet is off , It cannot open until arduino is resetted.<br>
4- Mosfets works well on “on” and “bulk” mode. But if it is in bulk mode, I get voltage down to initial value ( for voltage source) ( off mode) , then I begin to get supply voltage value up ( to go to on or bulk mode) , mosfet dont turn on. And also I use oscilloscope, Gate signal is correct.  Q1 is on and Q2 is off when buck converter works.</p>
<p>Best regards</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14586" class="comment even depth-3 parent highlander-comment">
			<article id="div-comment-14586" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(5).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-b19d7994ba8376b4a1a0afc9ad83446a-3">						<b class="fn">NhuThanh</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14586">
							<time datetime="2019-05-12T12:23:59+02:00">
								12/05/2019 at 12:23 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hello Sir, i compeleted my circuit with your project. I have a question.<br>
When no solar, Battery voltage : 12,27V , and in LCD : 12,32V … But when i connected it with solar, in LCD: 14,32V but Bat voltage just have 12,43V.<br>
And: Solar Voltage : 18,56V, but in LCD: 13,27V.<br>
What does that happen?</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14593" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-3 highlander-comment">
			<article id="div-comment-14593" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-12">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14593">
							<time datetime="2019-05-14T11:12:16+02:00">
								14/05/2019 at 11:12 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>a. Battery voltage : 12,27V , and in LCD : 12,32V<br>
b. Solar Voltage : 18,56V, but in LCD: 13,27V.<br>
This can happen because the resistive dividers R1, R2 and R7, R8 are not perfect.<br>
You must change slight the numbers in lines 31,32 and 33.<br>
c. But when i connected it with solar, in LCD: 14,32V<br>
If everything is ok an the charger it does his job, the battery voltage will not never increase volttage over MAX_BAT_VOLTS 14.10 (line 51)</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14594" class="comment byuser comment-author-asmlektor bypostauthor even depth-3 highlander-comment">
			<article id="div-comment-14594" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-13">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14594">
							<time datetime="2019-05-14T11:21:06+02:00">
								14/05/2019 at 11:21 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Let me some time to simulate on the breadboard the problem you are facing.<br>
During this time please try the second code i provided. Is Tim Nolan code to whom I added some lines for lcd data. I will return with information.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14601" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-3 highlander-comment">
			<article id="div-comment-14601" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-14">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14601">
							<time datetime="2019-05-16T17:09:11+02:00">
								16/05/2019 at 5:09 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>We made measurements and checks with the new software. I simulated night, morning, afternoon operation with potentiometers using a virtual “battery” with 13.6 volts.<br>
You must follow the following steps:<br>
1. solar voltage zero volts, Battery voltage 13,5v.<br>
2. Increases battery voltage very slowly until it exceeds 13.6 volts<br>
Now from <em>off</em> goes to <em>bulk</em><br>
3. Increases the “solar” voltage until it exceeds 13.6 volts.<br>
The pwm is changing continously from 99% to 60%<br>
4. Increases the solar voltage to 18 volts, then reduce to 0 volts.<br>
When solar voltage and curent go down charger goes to <em>off</em><br>
Follow the oscilloscope on pins 2, 3, 7 and 5.<br>
The operation corresponds with to the software.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14615" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14615" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/photo.jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn">Bach Nguyen</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14615">
							<time datetime="2019-05-21T14:05:13+02:00">
								21/05/2019 at 2:05 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi, I’m building an identical MPPT controller just like you pointed out. But now it is having some problems as follows:<br>
+ Even though the battery and solar is not connected, the tage is stillbattery vol 13Vdc and the current is 25A ???<br>
+ I do not correctly show the index of the ACS712 module<br>
How can i prevent wrong number show up<br>
You can look at my LCD in this link bellow<br>
<a href="https://drive.google.com/open?id=1gJIW4nuo9zSvjwWIdzKY5ySn6WLmnu_B" rel="nofollow ugc">https://drive.google.com/open?id=1gJIW4nuo9zSvjwWIdzKY5ySn6WLmnu_B</a></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14615#respond" data-commentid="14615" data-postid="662" data-belowelement="div-comment-14615" data-respondelement="respond" aria-label="Reply to Bach Nguyen">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14620" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14620" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-15">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14620">
							<time datetime="2019-05-24T07:18:59+02:00">
								24/05/2019 at 7:18 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>First of all: Be shure that the AC712 module is designed for 5 Amps. Second: without input on A0, A1, or A2 is posible to enter some noise.<br>
At the output of AC712 module without no curent bypass through 1,2-3,4 you must mesure 1/2 Volts Pin8.<br>
Be shure the connections are correct. Modify very slightly value in Line 33 (#define SOL_AMPS_SCALE  0.024506081) to obtain 0.00 Amps to LCD display.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14620#respond" data-commentid="14620" data-postid="662" data-belowelement="div-comment-14620" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14623" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14623" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/photo.jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn">Bach Nguyen</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14623">
							<time datetime="2019-05-25T05:43:34+02:00">
								25/05/2019 at 5:43 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi sir, i have some more question about my project<br>
1. When the LCD light turn off, Amp number suddenty change lower<br>
2. My number show on LCD is change rapidly<br>
3. On the LCD screen, char like ” % ” or ” A ” is still save on the LCD although it already hace one on that LCD.<br>
You cant see my video here. I need your help. Thank and regard<br>
<a href="https://drive.google.com/file/d/1lupzTeEADvFBP5Gq3H_9lfNvAgaAtsf5/view?usp=sharing" rel="nofollow ugc">https://drive.google.com/file/d/1lupzTeEADvFBP5Gq3H_9lfNvAgaAtsf5/view?usp=sharing</a></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14623#respond" data-commentid="14623" data-postid="662" data-belowelement="div-comment-14623" data-respondelement="respond" aria-label="Reply to Bach Nguyen">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14627" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14627" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-16">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14627">
							<time datetime="2019-05-26T06:18:10+02:00">
								26/05/2019 at 6:18 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Such a thing can only happen if there is a hardware error somewhere. It is hard for me to tell you where it is. Check all GND connections. Use short wires. Check the power supply for the microcontroller and LCD.<br>
I always check each module separately and then connect them together one by one. For example: I’m trying to understand AC712. I use a sketch for that. Then I add the LCD display updating the code. I’m viewing the information displayed. If it’s ok, I add 10k / 2.2k resistor divider to analog inputs, I’m viewing again the information displayed. Everything step by step. Do not forget to try the code from ver.2</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14627#respond" data-commentid="14627" data-postid="662" data-belowelement="div-comment-14627" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14634" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14634" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/photo.jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn">Bach Nguyen</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14634">
							<time datetime="2019-05-28T06:10:51+02:00">
								28/05/2019 at 6:10 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Sir, can you please tell me when will the load  work and what is it’s principle<br>
Thank you and regard</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14634#respond" data-commentid="14634" data-postid="662" data-belowelement="div-comment-14634" data-respondelement="respond" aria-label="Reply to Bach Nguyen">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14635" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 parent highlander-comment">
			<article id="div-comment-14635" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-17">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14635">
							<time datetime="2019-05-28T18:30:58+02:00">
								28/05/2019 at 6:30 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>If you refer to the functioning of the solar charger described here, then you need to analyze the void subroutine:   <strong> void load_control()</strong><br>
This charger was designed by Debasish_Dutta to provide a battery for street lighting. This means that the load circuit will be connected to the battery only after the night falls and never the day. The Load vill be disconnect when battery voltage will be lower LVD=11.5V<br>
I did not use this circuit, which means that the day it is possible to use the energy accumulated in the battery for the various utilities, radio, tv, dark rooms, etc.<br>
load will ON when night<br>
load will OFF when day<br>
load is ON when bat_volts&gt;LVD<br>
load is OFF when bat_volts&lt;LVD</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14635#respond" data-commentid="14635" data-postid="662" data-belowelement="div-comment-14635" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14636" class="comment even depth-3 parent highlander-comment">
			<article id="div-comment-14636" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/photo.jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn">Bach Nguyen</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14636">
							<time datetime="2019-05-29T09:40:30+02:00">
								29/05/2019 at 9:40 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi sir, i have some more question<br>
1. I have tested the ACS712, and it work fine, but when i connected it to my board and it doesnt raise up any number, it’s just like there is no  battery<br>
2. When i connected with load and number of  Sol_amps raise perfect<br>
Can you tell me what is going on here, solar panel i use is 21.5V 3.5A<br>
Thank you and regard</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14637" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-3 highlander-comment">
			<article id="div-comment-14637" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-18">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14637">
							<time datetime="2019-05-29T13:50:17+02:00">
								29/05/2019 at 1:50 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>If you look at code, you will see that there are strict conditions imposed by the P &amp; O algorithm.<br>
Battery charging occurs only at certain moments and conditions. NOT ALWAYS!<br>
It is very possible that the battery voltage exceeds the value up to which the charge takes place. When you connecting the load, the battery voltage drops to the threshold at which it starts the bulk charging with a lot of curent through ACS712, then float function and at the final it stops.<br>
With the load connected of course lot of curent from solar panel goes to battery as well as to the load.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14655" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14655" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(7).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-0611065d394232348f1661a77287c12e-0">						<b class="fn">asmae</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14655">
							<time datetime="2019-06-02T20:41:13+02:00">
								02/06/2019 at 8:41 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>hi sir;<br>
I have a question<br>
1. how did you calculate pwm from on state to buck state<br>
pwm = ((bat_volts * 10) / (sol_volts / 10)) + 5;  //else if we are making more power than low solar watts figure out what the pwm<br>
        charger_state = bulk;<br>
isnt pwm=vout/vin in buck converter CCM current mode?<br>
2. how to calculate D in DCM Mode?<br>
thank you very much and redards</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14655#respond" data-commentid="14655" data-postid="662" data-belowelement="div-comment-14655" data-respondelement="respond" aria-label="Reply to asmae">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14659" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 parent highlander-comment">
			<article id="div-comment-14659" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-19">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14659">
							<time datetime="2019-06-03T13:31:31+02:00">
								03/06/2019 at 1:31 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>1. how did you calculate pwm from on state<br>
– This is the original code proposed by Tim Nolan and I made no modification to his code regarding operating algorithm that has been taken by all who worked with this code that to me it seems right.<br>
2. how to calculate D in DCM Mode?<br>
A lot of informations about this subject I learned from <a href="https://www.allaboutcircuits.com/technical-articles/discontinuous-conduction-mode-of-simple-converters/" rel="nofollow">HERE</a>.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14659#respond" data-commentid="14659" data-postid="662" data-belowelement="div-comment-14659" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14666" class="comment even depth-3 parent highlander-comment">
			<article id="div-comment-14666" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(7).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-0611065d394232348f1661a77287c12e-1">						<b class="fn">asmae</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14666">
							<time datetime="2019-06-04T12:13:54+02:00">
								04/06/2019 at 12:13 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi sir, I have one more question. is there a need to use the step up or step down converter in the first schematics?/Or what the purpose of these circuits in this schematic? thank you and best regards</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14668" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-3 highlander-comment">
			<article id="div-comment-14668" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-20">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14668">
							<time datetime="2019-06-04T12:25:57+02:00">
								04/06/2019 at 12:25 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>These ones are used to produce voltage needed for Arduino microcontroller (+5V) and for the IR2104 circuit (+18V),  from BATTERY (12 Volts) as you see in the diagram. I gave explanations in the comments.<br>
It is good thing to understand the scheme correctly because the project is not a simple one. Thank you.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14660" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14660" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-0">						<b class="fn">Shawn</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14660">
							<time datetime="2019-06-03T13:57:56+02:00">
								03/06/2019 at 1:57 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>which one of the codes posted is the official one for the proper functionality of this project? Which one is the fully fucntional one?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14660#respond" data-commentid="14660" data-postid="662" data-belowelement="div-comment-14660" data-respondelement="respond" aria-label="Reply to Shawn">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14665" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14665" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-21">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14665">
							<time datetime="2019-06-04T11:14:21+02:00">
								04/06/2019 at 11:14 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>The first version of the code is the one developed by Debiasish Dutta and is functional <a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/">HERE</a> with published diagram.<br>
The second version is Tim Nolan’s original one to which I added LCD display and was tested in the lab and I declare to be functional <a href="https://microcontrolere.wordpress.com/2019/05/22/mppt-charger-ver-2/">HERE</a> with his schematic diagram.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14665#respond" data-commentid="14665" data-postid="662" data-belowelement="div-comment-14665" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14671" class="comment even thread-odd thread-alt depth-1 highlander-comment">
			<article id="div-comment-14671" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-1">						<b class="fn">Shawn</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14671">
							<time datetime="2019-06-04T17:44:26+02:00">
								04/06/2019 at 5:44 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>For demonstration purposes, how can you show that the mppt controller is actually performing it duty? What are some ways you can demonstrate this in a project presentation?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14671#respond" data-commentid="14671" data-postid="662" data-belowelement="div-comment-14671" data-respondelement="respond" aria-label="Reply to Shawn">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14672" class="comment odd alt thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14672" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-2">						<b class="fn">Anthony J</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14672">
							<time datetime="2019-06-04T22:10:34+02:00">
								04/06/2019 at 10:10 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hey sir, i really need your help,Referring to the schematic , what will the connections for the current sensor be if you want to add another current sensor at the battery side(output current of the buck converter)? 1) can you point out how will you connect the current sensor in the circuit?. 2)And what extra coding must be used?. 3)which lines in the coding will the extra codes be placed? Your help would highly appreciated.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14672#respond" data-commentid="14672" data-postid="662" data-belowelement="div-comment-14672" data-respondelement="respond" aria-label="Reply to Anthony J">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14683" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 parent highlander-comment">
			<article id="div-comment-14683" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-22">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14683">
							<time datetime="2019-06-06T15:39:08+02:00">
								06/06/2019 at 3:39 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I regret that I do not have enough time, though please look carefull to the codes and try to understand what that means:<br>
Add line 16<br>
//A3 – ACS 712 Out (bat)<br>
Add line 30<br>
#define BAT_AMPS_CHAN 3<br>
Add line 34<br>
#define BAT_AMPS_SCALE 0.024506081<br>
Add line 161<br>
float bat_amps;<br>
Add line 163<br>
float bat_watts;<br>
The line 224 void read_data(void) change to:<br>
void read_data(void)<br>
{<br>
sol_amps = (read_adc(SOL_AMPS_CHAN) * SOL_AMPS_SCALE -13.51);<br>
sol_volts = read_adc(SOL_VOLTS_CHAN) * SOL_VOLTS_SCALE;<br>
bat_volts = read_adc(BAT_VOLTS_CHAN) * BAT_VOLTS_SCALE;<br>
bat_amps = (read_adc(BAT_AMPS_CHAN) * BAT_AMPS_SCALE – 13.51);<br>
sol_watts = sol_amps * sol_volts ;<br>
bat_watts = bat_amps * bat_volts ; //this is the new line added<br>
}<br>
Change display style by adding line 430 and …<br>
lcd.print(bat_amps);<br>
lcd.print(“A”);<br>
lcd.setCursor(8,2);<br>
lcd.print(bat_watts);<br>
lcd.print(“W”);<br>
etc.<br>
To add another current sensor at the battery side:<br>
<img src="./microcontrolere.wordpress_files/oputput-current-versions.png" alt=""></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14683#respond" data-commentid="14683" data-postid="662" data-belowelement="div-comment-14683" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14684" class="comment odd alt depth-3 parent highlander-comment">
			<article id="div-comment-14684" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-3">						<b class="fn">Anthony J</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14684">
							<time datetime="2019-06-06T18:05:01+02:00">
								06/06/2019 at 6:05 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Thanks alot for the effort you put into this sir! Youre a great help, ill try this and get back to you.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14685" class="comment byuser comment-author-asmlektor bypostauthor even depth-3 highlander-comment">
			<article id="div-comment-14685" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-23">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14685">
							<time datetime="2019-06-06T19:31:02+02:00">
								06/06/2019 at 7:31 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>You’re welcome! Keep in touch.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14689" class="comment odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14689" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/photo.jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn">Bach Nguyen</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14689">
							<time datetime="2019-06-09T08:21:19+02:00">
								09/06/2019 at 8:21 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi sir,<br>
I have tried everthing and read all comment, but my ACS still not working,.<br>
Test Ok, but when i connect it to the charger it’s just not working<br>
Can you have me with that</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14689#respond" data-commentid="14689" data-postid="662" data-belowelement="div-comment-14689" data-respondelement="respond" aria-label="Reply to Bach Nguyen">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14693" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14693" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-24">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14693">
							<time datetime="2019-06-10T07:27:01+02:00">
								10/06/2019 at 7:27 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>That mean there is no current passing through ACS 712. If you have not a oscilloscope put a LED and 330 ohm resistor in pin 9 Arduino. When <strong>charging conditions</strong> are complete (see:void run_charger(void)), then the LED will light. If not there is a problem.<br>
All you can do is to try again and again OR to charge <a href="https://microcontrolere.wordpress.com/2019/05/22/mppt-charger-ver-2/">version 2</a>  software to your Arduino charger and try again with more attention at any step.<br>
To simulate all conditions I have disconected A0 A1 and A2 from Arduino and I have connected a simulator circuit, that helped me so much: <img src="./microcontrolere.wordpress_files/sym.png" alt=""><br>
On LCD display you will see voltage values and you can create different conditions. On the LED at the D9 Output (see above) you can see it lightens louder or slower proportional to PWM value and potentiometers value.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14693#respond" data-commentid="14693" data-postid="662" data-belowelement="div-comment-14693" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14698" class="comment odd alt thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14698" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-4">						<b class="fn">Dj</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14698">
							<time datetime="2019-06-12T17:50:13+02:00">
								12/06/2019 at 5:50 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hey can you point out the main features and operation of this design that enables it to do impedance matching for maximum power transfer for source to load?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14698#respond" data-commentid="14698" data-postid="662" data-belowelement="div-comment-14698" data-respondelement="respond" aria-label="Reply to Dj">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14699" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14699" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-25">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14699">
							<time datetime="2019-06-12T21:06:59+02:00">
								12/06/2019 at 9:06 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Please read the folowing documents: <a href="https://pdfs.semanticscholar.org/4a51/47c800c66d2fa280f9b0bcdd484abf37abf4.pdf" rel="nofollow">(1)</a>,<a href="https://www.iasj.net/iasj?func=fulltext&amp;aId=136807" rel="nofollow">(2)</a>,<a href="http://www.ajer.org/papers/v5(05)/C0505015022.pdf" rel="nofollow">(3)</a>,<a href="https://engineeringtechnologytoday.files.wordpress.com/2014/03/ee-490_a-maximum-powerpoint-tracker.pdf" rel="nofollow">(4)</a>,<a href="https://scholarworks.uark.edu/cgi/viewcontent.cgi?referer=https://www.google.com/&amp;httpsredir=1&amp;article=1037&amp;context=eleguht" rel="nofollow">(5)</a></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14699#respond" data-commentid="14699" data-postid="662" data-belowelement="div-comment-14699" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14702" class="comment odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14702" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-5">						<b class="fn">JG</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14702">
							<time datetime="2019-06-14T16:13:43+02:00">
								14/06/2019 at 4:13 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hey sir, the code posted by adam plavinsto (modification), does it perfectly match the schematic that you posted? Or the schematic that debba have?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14702#respond" data-commentid="14702" data-postid="662" data-belowelement="div-comment-14702" data-respondelement="respond" aria-label="Reply to JG">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14705" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 parent highlander-comment">
			<article id="div-comment-14705" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-26">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14705">
							<time datetime="2019-06-15T06:23:15+02:00">
								15/06/2019 at 6:23 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Your question is justified. It all started with Tim Nolan’s code and scheme. Debasish Dutta resumed the project and made a big contribution to it. Very many continued their work.<br>
Even the code published by Plavin is a slight change to Debasish’s code, tailored to his needs. He also published his scheme. The basic scheme is the one that everyone adjusts to their needs: LCD, LEDs, microcontroller, adding or removing something but making changes in the code.<br>
If you want to use Plavin’s code then use <a href="https://github.com/aplavins/MPPT_Master" rel="nofollow">his schematic</a>.<br>
But his project is designed for street lighting, so you will not have voltage on the load during the day.(See T1 and Q3, R8 and R9) My schematic eliminates this.<br>
If I can help you please let me know.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14705#respond" data-commentid="14705" data-postid="662" data-belowelement="div-comment-14705" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14706" class="comment odd alt depth-3 parent highlander-comment">
			<article id="div-comment-14706" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-6">						<b class="fn">JG</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14706">
							<time datetime="2019-06-15T09:09:46+02:00">
								15/06/2019 at 9:09 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Okay thanks for the reply sir, but how does your load control works? On what conditions is load on and what conditions is it off? And What does each colour of LEDs indicator indicates ?</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14707" class="comment byuser comment-author-asmlektor bypostauthor even depth-3 highlander-comment">
			<article id="div-comment-14707" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-27">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14707">
							<time datetime="2019-06-15T20:05:42+02:00">
								15/06/2019 at 8:05 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Please follow these lines of code:<br>
These lines of code are for Load Control:</p>
<p>void load_control()<br>
{<br>
#if LOAD_ALGORITHM == 0<br>
  load_on(sol_watts &lt; MIN_SOL_WATTS &amp;&amp; bat_volts &gt; LVD);<br>
#else<br>
  load_on(sol_watts &gt; MIN_SOL_WATTS &amp;&amp; bat_volts &gt; BATT_FLOAT);<br>
#endif<br>
}<br>
void load_on(boolean new_status)<br>
{<br>
  if (load_status != new_status)<br>
  {<br>
    load_status = new_status;<br>
    digitalWrite(LOAD_PIN, new_status ? HIGH : LOW);<br>
  }<br>
}<br>
More clearly, the load is supplied with power from the battery, only after dusk</p>
<p>The folowing lines of code are for LEDs:</p>
<p>they make clear how it works<br>
#define LED_GREEN 11<br>
#define LED_BLUE 12<br>
#define LED_RED 13<br>
 pinMode(LED_RED, OUTPUT);<br>
  pinMode(LED_GREEN, OUTPUT);<br>
  pinMode(LED_BLUE, OUTPUT);<br>
void led_output(void)<br>
{<br>
  static char last_lit;<br>
  if(bat_volts &gt; 14.1 )<br>
  light_led(LED_BLUE);<br>
  else if(bat_volts &gt; 11.9)<br>
  light_led(LED_GREEN);<br>
  else<br>
  light_led(LED_RED);</p>
<p>They make clear how LEDs works. If battery voltage &gt;14,1 volts,  LED blue is lightning etc…</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14710" class="comment odd alt thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14710" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-7">						<b class="fn">Handel</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14710">
							<time datetime="2019-06-17T04:24:18+02:00">
								17/06/2019 at 4:24 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hey sir i built the project, and connected the lcd, but even without no solar input, the lcd is displaying values for solar panel voltage and current, how can i fix this?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14710#respond" data-commentid="14710" data-postid="662" data-belowelement="div-comment-14710" data-respondelement="respond" aria-label="Reply to Handel">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14713" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14713" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-28">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14713">
							<time datetime="2019-06-17T10:53:44+02:00">
								17/06/2019 at 10:53 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>This can be imposible. There may be some errors in connection between components on analogue inputs A0, A1 and A2.<br>
1. Try to disconnect everything from A0 (solar voltage input) and A1 (current from solar pannel).<br>
2. Connects a wire between A0 to GND. The value “SOL_VOLTS” indicated on the LCD should be 0.00V.<br>
3. Put 2.5V at entry A1. The value “SOL_AMPS” indicated on the LCD should be 0.00A.<br>
Use shorter connection wires. Check everything again and again. Tell me if these tips helped you.<br>
(2.5V you can have from 5V Arduino module from the middle  two 1K resistors connected in series) </p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14713#respond" data-commentid="14713" data-postid="662" data-belowelement="div-comment-14713" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14716" class="comment odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14716" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-8">						<b class="fn">Handel</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14716">
							<time datetime="2019-06-19T04:58:14+02:00">
								19/06/2019 at 4:58 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Im getting 0volts when i connect A0 to ground, but when i connect the voltage divider setup im getting 3volts without any solar input, and my current is-0.01amps</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14716#respond" data-commentid="14716" data-postid="662" data-belowelement="div-comment-14716" data-respondelement="respond" aria-label="Reply to Handel">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14717" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 parent highlander-comment">
			<article id="div-comment-14717" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-29">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14717">
							<time datetime="2019-06-19T06:02:20+02:00">
								19/06/2019 at 6:02 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I will soon make a tutorial where I will give some explanations there. Please read it.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14717#respond" data-commentid="14717" data-postid="662" data-belowelement="div-comment-14717" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14718" class="comment odd alt depth-3 highlander-comment">
			<article id="div-comment-14718" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-9">						<b class="fn">Handel</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14718">
							<time datetime="2019-06-19T06:08:48+02:00">
								19/06/2019 at 6:08 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Okay thanks alot…hope it will be out soon, im doing this for a project</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14721" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14721" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-10">						<b class="fn">DJ</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14721">
							<time datetime="2019-06-21T15:28:13+02:00">
								21/06/2019 at 3:28 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>is a 12volt ,4.5amps lead acid battery okay for this charge controller? will this battery do any damage to the lm2596 module(buck converter) or the boost converter?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14721#respond" data-commentid="14721" data-postid="662" data-belowelement="div-comment-14721" data-respondelement="respond" aria-label="Reply to DJ">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14767" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14767" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-30">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14767">
							<time datetime="2019-07-08T06:43:17+02:00">
								08/07/2019 at 6:43 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>DC-DC Step-Down Converter LM2596 has an – input voltage from  4.0 to 40V. No problem.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14767#respond" data-commentid="14767" data-postid="662" data-belowelement="div-comment-14767" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14746" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14746" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/JvxpcknJ_normal.jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn"><a href="http://twitter.com/taranclan" rel="external nofollow ugc" class="url">taran agnew (@taranclan)</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14746">
							<time datetime="2019-06-28T18:22:28+02:00">
								28/06/2019 at 6:22 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>can you use a nano instead of a pro mini?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14746#respond" data-commentid="14746" data-postid="662" data-belowelement="div-comment-14746" data-respondelement="respond" aria-label="Reply to taran agnew (@taranclan)">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14748" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14748" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-31">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14748">
							<time datetime="2019-06-28T22:02:24+02:00">
								28/06/2019 at 10:02 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>It is perfect!</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14748#respond" data-commentid="14748" data-postid="662" data-belowelement="div-comment-14748" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14763" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14763" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(7).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-0611065d394232348f1661a77287c12e-2">						<b class="fn">asmae</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14763">
							<time datetime="2019-07-06T16:30:29+02:00">
								06/07/2019 at 4:30 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>hi I checked many time but the step up converter used in this circuit is 28v output volt not 18V see please<br>
<a href="https://www.twovolt.com/2016/08/23/28v-output-from-12v-dc-input-step-up-dc-dc-converter-using-mc34063/" rel="nofollow ugc">https://www.twovolt.com/2016/08/23/28v-output-from-12v-dc-input-step-up-dc-dc-converter-using-mc34063/</a><br>
<a href="http://html.alldatasheet.com/html-pdf/23294/STMICROELECTRONICS/MC34063A/9757/6/MC34063A.html" rel="nofollow ugc">http://html.alldatasheet.com/html-pdf/23294/STMICROELECTRONICS/MC34063A/9757/6/MC34063A.html</a><br>
so this vant be used with IR2104<br>
<a href="http://html.alldatasheet.com/html-pdf/86635/IRF/IR2104/95/2/IR2104.html" rel="nofollow ugc">http://html.alldatasheet.com/html-pdf/86635/IRF/IR2104/95/2/IR2104.html</a>.<br>
what can we use instead? / do you have know any reference of dc-dc boost converter algorithm thank you</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14763#respond" data-commentid="14763" data-postid="662" data-belowelement="div-comment-14763" data-respondelement="respond" aria-label="Reply to asmae">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14766" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14766" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-32">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14766">
							<time datetime="2019-07-07T07:03:58+02:00">
								07/07/2019 at 7:03 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I used a step up converter (12V to 18V) to power up IR2104 only, because the IR2104 supply (aka VCC ) should be above between 10v to 20v. (see PDF). If the top supply is too low then the bootstrapped supply will be too low to generate enough gate voltage to turn on the upside MOSFET.<br>
Step up converter equiped with MC34063 I made it myself. The model from your link is ok because it has a variable resistor, PR1. You must just increase R2 value for a 16-18V output voltage.<br>
Otherwise ou can power up your IR2104 from 12V battery voltage, but I do not recommend.<br>
To produce 5V to power up microcontroller I used a step down converter, same due to the high yield.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14766#respond" data-commentid="14766" data-postid="662" data-belowelement="div-comment-14766" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14776" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14776" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(9).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-5ea6e4ce5ac7f22cb1c9c495a7d9ed84-0">						<b class="fn">Hicham</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14776">
							<time datetime="2019-07-13T13:39:40+02:00">
								13/07/2019 at 1:39 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>hello, the project works for you</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14776#respond" data-commentid="14776" data-postid="662" data-belowelement="div-comment-14776" data-respondelement="respond" aria-label="Reply to Hicham">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14801" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14801" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-33">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14801">
							<time datetime="2019-07-18T19:03:24+02:00">
								18/07/2019 at 7:03 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I learned, tested and worked to this project a few mounth. The image represent the final. After that I tested again for an other project a lot of variants af this project from entire Internet, trying to find something better. All I finded is just original Tim Nolan project, to that I adapted an LCD display. THIS ONE .<br>
You can try it too.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14801#respond" data-commentid="14801" data-postid="662" data-belowelement="div-comment-14801" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14809" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14809" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(9).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-5ea6e4ce5ac7f22cb1c9c495a7d9ed84-1">						<b class="fn">HICHAM EL MAKHROUBI</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14809">
							<time datetime="2019-07-23T16:47:22+02:00">
								23/07/2019 at 4:47 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>hello, there is someone trying to make this project under the proteus isis.<br>
i can’t see the PV panel in the screenshot above</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14809#respond" data-commentid="14809" data-postid="662" data-belowelement="div-comment-14809" data-respondelement="respond" aria-label="Reply to HICHAM EL MAKHROUBI">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14810" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14810" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-34">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14810">
							<time datetime="2019-07-24T19:31:17+02:00">
								24/07/2019 at 7:31 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>You must try to design in Proteus. Then load the hex and Run the simulation. I made this a lot of time. Good luck!<br>
If I can help you more, just tell me what is wrong.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14810#respond" data-commentid="14810" data-postid="662" data-belowelement="div-comment-14810" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14816" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14816" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(8).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-931af2d4fca4422e408f1c7343599dab-11">						<b class="fn">Michael</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14816">
							<time datetime="2019-07-28T01:46:27+02:00">
								28/07/2019 at 1:46 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hey i orderd an lcd display, but it doesnt have the pins vcc,gnd,sda and scl, instead it have vss,vsd,v0,RS,RW,E,D0,D1,D2,D3,D4,D4,D6,D7,A,k on the front side of the display , how do i connect this?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14816#respond" data-commentid="14816" data-postid="662" data-belowelement="div-comment-14816" data-respondelement="respond" aria-label="Reply to Michael">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14817" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14817" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-35">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14817">
							<time datetime="2019-07-28T05:35:00+02:00">
								28/07/2019 at 5:35 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>You need an: <strong> IIC/I2C Serial Interface Adapter Module </strong>For 1602  or 2004 LCD Display.<br>
This allows you to reduce the number of pins used from the microcontroller. The interface has only 4 pins to interconnect with it and all others with LCD display:<img src="./microcontrolere.wordpress_files/lcd.png" alt=""><br>
You must solder them together.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14817#respond" data-commentid="14817" data-postid="662" data-belowelement="div-comment-14817" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14859" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14859" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(10).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-803eb681c6ae271a419dd44297dcf98e-0">						<b class="fn">sfk</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14859">
							<time datetime="2019-08-20T23:44:44+02:00">
								20/08/2019 at 11:44 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Thank you for your work, what can we do to make it higher amps? For example 40 amp<br>
Thanks</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14859#respond" data-commentid="14859" data-postid="662" data-belowelement="div-comment-14859" data-respondelement="respond" aria-label="Reply to sfk">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14868" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14868" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-36">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14868">
							<time datetime="2019-08-24T04:59:03+02:00">
								24/08/2019 at 4:59 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>More power from solar pannels, that means two or more pannel connected to input. Another type of MOSFET transistors with more <strong>Ids</strong> currrent. Of corse a a good mechanical and electrical construction, for such output power.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14868#respond" data-commentid="14868" data-postid="662" data-belowelement="div-comment-14868" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14876" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14876" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(11).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-1a7f30512c63363599932316150f5a56-0">						<b class="fn">amir</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14876">
							<time datetime="2019-08-26T10:52:23+02:00">
								26/08/2019 at 10:52 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>hi sir.<br>
if we dont have any charger, what kind of changes should I apply in arduino codes?<br>
I mean mppt without charger</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14876#respond" data-commentid="14876" data-postid="662" data-belowelement="div-comment-14876" data-respondelement="respond" aria-label="Reply to amir">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14891" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14891" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-37">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14891">
							<time datetime="2019-09-07T05:56:05+02:00">
								07/09/2019 at 5:56 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>MPPT mean Maximum Power Point Tracking is algorithm that included in charge controllers used for extracting maximum available power from PV module under certain conditions.<br>
“… mppt without charger” I dont understand your question.. I am waiting for your reply.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14891#respond" data-commentid="14891" data-postid="662" data-belowelement="div-comment-14891" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14887" class="pingback even thread-even depth-1 highlander-comment">
			<div class="comment-body">
				Pingback: <a href="https://xe1e.pepetronics.com/arduino-mppt-solar-charge-controller-version-3-0/" rel="external nofollow ugc" class="url">ARDUINO MPPT SOLAR CHARGE CONTROLLER (Version-3.0) – XE1E RADIO BLOG</a> 			</div>
		</li><!-- #comment-## -->
		<li id="comment-14899" class="comment odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14899" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(7).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-0611065d394232348f1661a77287c12e-3">						<b class="fn">asmae</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14899">
							<time datetime="2019-09-09T02:40:35+02:00">
								09/09/2019 at 2:40 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi, how did you choose the frequency . is it the same 1/T ?</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14899#respond" data-commentid="14899" data-postid="662" data-belowelement="div-comment-14899" data-respondelement="respond" aria-label="Reply to asmae">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14909" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14909" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-38">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14909">
							<time datetime="2019-09-23T19:36:18+02:00">
								23/09/2019 at 7:36 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Detailed information about how to get frequency and other calculation you can find <a href="https://www.instructables.com/id/ARDUINO-SOLAR-CHARGE-CONTROLLER-Version-30/" rel="nofollow">HERE</a></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14909#respond" data-commentid="14909" data-postid="662" data-belowelement="div-comment-14909" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14911" class="comment odd alt thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14911" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(12).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-7a91244b89e9f9bd61b1a74745b02fa2-0">						<b class="fn">Kenny</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14911">
							<time datetime="2019-10-03T22:17:17+02:00">
								03/10/2019 at 10:17 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi this is great work, do you have pcb file I’d like to try this out for my home solar system</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14911#respond" data-commentid="14911" data-postid="662" data-belowelement="div-comment-14911" data-respondelement="respond" aria-label="Reply to Kenny">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14922" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14922" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-39">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14922">
							<time datetime="2019-10-13T04:36:41+02:00">
								13/10/2019 at 4:36 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I am sorry. I made all circuits on small pieces of perfboard and stayed in that way. You can see that in the image.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14922#respond" data-commentid="14922" data-postid="662" data-belowelement="div-comment-14922" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14914" class="comment odd alt thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14914" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/photo(1).jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn">Perrin Boys</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14914">
							<time datetime="2019-10-08T23:09:36+02:00">
								08/10/2019 at 11:09 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hello sir, can you share PCB file? Im building a test controller for my garage solar system and would like to try this out.  Thanks</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14914#respond" data-commentid="14914" data-postid="662" data-belowelement="div-comment-14914" data-respondelement="respond" aria-label="Reply to Perrin Boys">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14923" class="comment byuser comment-author-asmlektor bypostauthor even depth-2 highlander-comment">
			<article id="div-comment-14923" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-40">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14923">
							<time datetime="2019-10-13T04:37:08+02:00">
								13/10/2019 at 4:37 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I am sorry. I made all circuits on small pieces of perfboard and stayed in that way. You can see that in the image.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14923#respond" data-commentid="14923" data-postid="662" data-belowelement="div-comment-14923" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14915" class="comment odd alt thread-even depth-1 highlander-comment">
			<article id="div-comment-14915" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(7).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-0611065d394232348f1661a77287c12e-4">						<b class="fn">asmae</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14915">
							<time datetime="2019-10-08T23:48:57+02:00">
								08/10/2019 at 11:48 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi Sir,<br>
do you have a link to algorithm of dc-dc boost converter. thank you</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14915#respond" data-commentid="14915" data-postid="662" data-belowelement="div-comment-14915" data-respondelement="respond" aria-label="Reply to asmae">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-14917" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14917" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(13).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-2d4916bc1ec75d86b86282d6da4e2b24-0">						<b class="fn">Simsan Liu</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14917">
							<time datetime="2019-10-10T13:31:49+02:00">
								10/10/2019 at 1:31 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi Sir,</p>
<p>I build a buck converter circuit with reference to the above schematic. I face a problem as below: </p>
<p>When I change the PWM of pin 9 to above 990, such as change the PWM to 991(96.67%), the input voltage is 12.5V but the output is only 10.9V and the voltages of  IR2014 driver are Vcc:15V Vb:14.3V, Ho :12.8V, Vs:10.9V, Lo:0V.</p>
<p>On the other hand, when I change PWM of pin 9 to /below 990  the converter is working as well and  I get Vout=Vin x Duty cycle,  the voltages of  IR2014 driver are Vcc:15V Vb: 24.3V, Ho: 23.1V, Vs: 12.1V, Lo: 0.02V. and the 1K resistor become very hot (parallel with R5)</p>
<p>It would be highly appreciated if you can give me some advice to fix the problem, thank you.</p>
<p>The test code attached hereto:</p>
<p>void setup()<br>
{<br>
  // Initialize the digital pin as an output.<br>
  // Pin 13 has an LED connected on most Arduino boards<br>
  pinMode(13, OUTPUT);<br>
  pinMode(9, OUTPUT);<br>
  pinMode(8, OUTPUT);<br>
  digitalWrite(8, HIGH);<br>
  Timer1.initialize(20); // set a timer of length 8uS<br>
  //Timer1.attachInterrupt( timerIsr ); // attach the service routine here</p>
<p> // Set duty cycle<br>
  //Timer1.pwm(9,255.75); // 25% duty cycle<br>
 //Timer1.pwm(9, 512); //50% duty cycle<br>
 //Timer1.pwm(9, 767.25); // 75% duty cycle<br>
 Timer1.pwm(9, 991);</p>
<p>}</p>
<p>void loop()<br>
{<br>
  // Main code loop<br>
  // TODO: Put your regular (non-ISR) logic here<br>
}</p>
<p>/// ————————–<br>
/// Custom ISR Timer Routine<br>
/// ————————–<br>
void timerIsr()<br>
{<br>
    // Toggle LED<br>
    //digitalWrite( 13, digitalRead( 13 ) ^ 1 );<br>
}</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14917#respond" data-commentid="14917" data-postid="662" data-belowelement="div-comment-14917" data-respondelement="respond" aria-label="Reply to Simsan Liu">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14924" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14924" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-41">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14924">
							<time datetime="2019-10-13T07:50:36+02:00">
								13/10/2019 at 7:50 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>At the VB, HO, VS and LO outputs  are impulses. (See output signals). There are not continuous voltage. You must use oscilloscope to see what is happened there.<br>
Even for testing purposes, the input voltage  is and must be upper to 12.4V.<br>
With a effective voltage of  23.1V  on Ho pin, I think  is normal that 1K resistor become very hot.his is not a ideal buck convertor.<br>
Given a particular input voltage, there are limita-tions that prevent the duty cycle from covering the entirerange from 0 to 100%<br>
Maybe L3 inductance are not apropriate.<br>
“There’s a gap between theory and practice, and it’s an annoying gap”. <img draggable="false" role="img" class="emoji" alt="🙂" src="./microcontrolere.wordpress_files/1f642.svg"></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14924#respond" data-commentid="14924" data-postid="662" data-belowelement="div-comment-14924" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14947" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14947" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(14).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-7e02ea8f8c7e9b384352f9fb71b182d1-0">						<b class="fn">reza</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14947">
							<time datetime="2019-11-15T11:30:41+02:00">
								15/11/2019 at 11:30 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hi sir,<br>
how the circuit if applied to solar panels with a capacity of 100 WP?<br>
thank you <img draggable="false" role="img" class="emoji" alt="🙂" src="./microcontrolere.wordpress_files/1f642.svg"></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14947#respond" data-commentid="14947" data-postid="662" data-belowelement="div-comment-14947" data-respondelement="respond" aria-label="Reply to reza">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-14952" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-14952" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-42">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14952">
							<time datetime="2019-11-24T05:16:46+02:00">
								24/11/2019 at 5:16 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>100 Wp solar panels is rated as 22 V and 4.5 Amps.  I think this circuit is ideal for this kind of panel.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14952#respond" data-commentid="14952" data-postid="662" data-belowelement="div-comment-14952" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14970" class="comment even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14970" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(15).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-c7b975470526246895c0d0c056dcc8f4-0">						<b class="fn">Giang</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14970">
							<time datetime="2019-12-20T14:50:48+02:00">
								20/12/2019 at 2:50 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Hello sir, I’m very interested in this project, and I’m already made it. But i have a question. How can we know P&amp;O algorithm are running correctly and how can we calculate the efficiency of this converter circuit? Thank you so much!</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14970#respond" data-commentid="14970" data-postid="662" data-belowelement="div-comment-14970" data-respondelement="respond" aria-label="Reply to Giang">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-15013" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-15013" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-43">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-15013">
							<time datetime="2020-01-19T16:17:43+02:00">
								19/01/2020 at 4:17 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>OK. Just make the mathematical operation:<br>
Input power/ Output power,  for different Input voltages. </p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=15013#respond" data-commentid="15013" data-postid="662" data-belowelement="div-comment-15013" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14982" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-14982" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/photo(2).jpg" class="avatar avatar-32" height="32" width="32">						<b class="fn">Roar Nygård</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14982">
							<time datetime="2020-01-04T18:27:28+02:00">
								04/01/2020 at 6:27 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Thank you for making this great article! I want to build this MPPT solar charger using Arduino and want to charge some (6 pieces?) 18650 Li-ion batteries, 3000mAh each. How should I rewrite your code and are there any other hardware setup you prefer when using Lithium batteries? I want to use these batteries: <a href="https://www.aliexpress.com/item/32793701336.html" rel="nofollow ugc">https://www.aliexpress.com/item/32793701336.html</a></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14982#respond" data-commentid="14982" data-postid="662" data-belowelement="div-comment-14982" data-respondelement="respond" aria-label="Reply to Roar Nygård">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-15012" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-15012" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-44">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-15012">
							<time datetime="2020-01-19T15:55:07+02:00">
								19/01/2020 at 3:55 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Please read my old replies to the same problem. Charging the 18650 Li-ion batteries it is a lot more complicated. The charger must take control to any one element to measure voltage (who must not exceed 4,2 volts), temperature etc. . Else you must use a “4S 30A Li-ion Lithium Battery 18650 charger protection board PCB” – Search on the web please! </p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=15012#respond" data-commentid="15012" data-postid="662" data-belowelement="div-comment-15012" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-14999" class="comment byuser comment-author-rc1997258 even thread-odd thread-alt depth-1 parent highlander-comment">
			<article id="div-comment-14999" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(16).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-ba7ed574a9c2a48e798161c9ad623436-0">						<b class="fn">rc1997258</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-14999">
							<time datetime="2020-01-14T07:25:22+02:00">
								14/01/2020 at 7:25 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>What all changes are required if I want to use a 48 volt solar panel and 24v battery?? Please help me I wanted to build this project</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=14999#respond" data-commentid="14999" data-postid="662" data-belowelement="div-comment-14999" data-respondelement="respond" aria-label="Reply to rc1997258">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-15011" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 highlander-comment">
			<article id="div-comment-15011" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-45">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-15011">
							<time datetime="2020-01-19T15:42:53+02:00">
								19/01/2020 at 3:42 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>You must change the value from lines 50 to 54:<br>
#define MIN_BAT_VOLTS <strong>11.00</strong><br>
#define MAX_BAT_VOLTS <strong>14.10</strong><br>
#define BATT_FLOAT <strong>13.60</strong><br>
#define HIGH_BAT_VOLTS <strong>13.00</strong><br>
#define LVD <strong>11.5</strong></p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=15011#respond" data-commentid="15011" data-postid="662" data-belowelement="div-comment-15011" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
		<li id="comment-15023" class="comment even thread-even depth-1 parent highlander-comment">
			<article id="div-comment-15023" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(17).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-4c2edf6bf368ae9f65494e343fc35757-0">						<b class="fn">Vyshakk</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-15023">
							<time datetime="2020-01-24T17:29:16+02:00">
								24/01/2020 at 5:29 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Sir ,<br>
Is this project completely working. I was trying to make a solar charge controller for a month now and i haven’t got any output yet. If this circuit worked for you , i would like to try this.<br>
Please give a reply for this sir.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=15023#respond" data-commentid="15023" data-postid="662" data-belowelement="div-comment-15023" data-respondelement="respond" aria-label="Reply to Vyshakk">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-15024" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-2 parent highlander-comment">
			<article id="div-comment-15024" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-46">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-15024">
							<time datetime="2020-01-25T09:45:13+02:00">
								25/01/2020 at 9:45 am							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>I spent a lot of time documenting and experimenting for this project. This is its final and functional form. This is not an easy project. If the operations described in the above material exceed your comfort zone from the point of view of the technical skills, please call qualified personnel to perform the operations.</p>
				</div><!-- .comment-content -->

				<div class="reply"><a rel="nofollow" class="comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/?replytocom=15024#respond" data-commentid="15024" data-postid="662" data-belowelement="div-comment-15024" data-respondelement="respond" aria-label="Reply to asmlektor">Reply</a></div>			</article><!-- .comment-body -->
		<ol class="children">
		<li id="comment-15030" class="comment even depth-3 parent highlander-comment">
			<article id="div-comment-15030" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(17).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-4c2edf6bf368ae9f65494e343fc35757-1">						<b class="fn">Vyshakh p</b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-15030">
							<time datetime="2020-02-06T17:22:13+02:00">
								06/02/2020 at 5:22 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Sir , the program is not able to compile.<br>
Its showing some kind of error like empty character contant in the third last line. Can you please help me.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
		<li id="comment-15036" class="comment byuser comment-author-asmlektor bypostauthor odd alt depth-3 highlander-comment">
			<article id="div-comment-15036" class="comment-body">
				<footer class="comment-meta">
					<div class="comment-author vcard">
						<img alt="" src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(2).png" class="avatar avatar-32 grav-hashed grav-hijack" height="32" width="32" id="grav-05721d1f49e55e216da8dd72720cffee-47">						<b class="fn"><a href="https://microcontrolere.wordpress.com/" rel="external nofollow ugc" class="url">asmlektor</a></b> <span class="says">says:</span>					</div><!-- .comment-author -->

					<div class="comment-metadata">
						<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-2/#comment-15036">
							<time datetime="2020-02-15T12:21:45+02:00">
								15/02/2020 at 12:21 pm							</time>
						</a>
											</div><!-- .comment-metadata -->

									</footer><!-- .comment-meta -->

				<div class="comment-content">
					<p>Please tell me more about your error. Write here complete error line from Arduino IDE software.</p>
				</div><!-- .comment-content -->

							</article><!-- .comment-body -->
		</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
</ol><!-- .children -->
</li><!-- #comment-## -->
				</ol><!-- .comment-list -->

				
	<nav class="navigation comment-navigation" role="navigation" aria-label="Comments">
		<h2 class="screen-reader-text">Comments navigation</h2>
		<div class="nav-links"><div class="nav-previous"><a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/comment-page-1/#comments">Older comments</a></div></div>
	</nav>
			</div> <!-- /comments -->

		</div> <!-- /comments-inner -->

	</div> <!-- /comments-container -->

		<div id="respond" class="comment-respond js">
		<h3 id="reply-title" class="comment-reply-title">Leave a Reply <small><a rel="nofollow" id="cancel-comment-reply-link" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#respond" style="display:none;">Cancel reply</a></small></h3><form action="https://microcontrolere.wordpress.com/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate=""><input type="hidden" id="highlander_comment_nonce" name="highlander_comment_nonce" value="41c5e8d226"><input type="hidden" name="_wp_http_referer" value="/2016/12/16/mppt-solar-charger/">
<input type="hidden" name="hc_post_as" id="hc_post_as" value="guest">

<div class="comment-form-field comment-textarea">
	
	<div id="comment-form-comment"><textarea aria-hidden="true" tabindex="-1" style="position: absolute; top: -999px; left: 0px; right: auto; bottom: auto; border: 0px; padding: 0px; box-sizing: content-box; overflow-wrap: break-word; overflow: hidden; transition: none 0s ease 0s; height: 0px !important; min-height: 0px !important; font-family: &quot;PT Serif&quot;, serif; font-size: 14px; font-weight: 400; font-style: normal; letter-spacing: 0px; text-transform: none; text-decoration: none solid rgba(0, 0, 0, 0.7); word-spacing: 0px; text-indent: 0px; line-height: 19.6px; width: 585.234px;" class="autosizejs "></textarea><textarea id="comment" name="comment" title="Enter your comment here..." placeholder="Enter your comment here..." style="height: 39px; overflow: hidden; overflow-wrap: break-word; resize: none;"></textarea></div>
</div>

<div id="comment-form-identity" style="display: none;">
	<div id="comment-form-nascar">
		<p>Fill in your details below or click an icon to log in:</p>
		<ul>
			<li class="selected" style="display:none;">
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#comment-form-guest" id="postas-guest" class="nascar-signin-link" title="Login via Guest">
									</a>
			</li>
			<li>
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#comment-form-load-service:WordPress.com" id="postas-wordpress" class="nascar-signin-link" title="Login via WordPress.com">
					<svg xmlns="http://www.w3.org/2000/svg" role="presentation" viewBox="0 0 24 24"><rect x="0" fill="none" width="24" height="24"></rect><g><path fill="#0087be" d="M12.158 12.786l-2.698 7.84c.806.236 1.657.365 2.54.365 1.047 0 2.05-.18 2.986-.51-.024-.037-.046-.078-.065-.123l-2.762-7.57zM3.008 12c0 3.56 2.07 6.634 5.068 8.092L3.788 8.342c-.5 1.117-.78 2.354-.78 3.658zm15.06-.454c0-1.112-.398-1.88-.74-2.48-.456-.74-.883-1.368-.883-2.11 0-.825.627-1.595 1.51-1.595.04 0 .078.006.116.008-1.598-1.464-3.73-2.36-6.07-2.36-3.14 0-5.904 1.613-7.512 4.053.21.008.41.012.58.012.94 0 2.395-.114 2.395-.114.484-.028.54.684.057.74 0 0-.487.058-1.03.086l3.275 9.74 1.968-5.902-1.4-3.838c-.485-.028-.944-.085-.944-.085-.486-.03-.43-.77.056-.742 0 0 1.484.114 2.368.114.94 0 2.397-.114 2.397-.114.486-.028.543.684.058.74 0 0-.488.058-1.03.086l3.25 9.665.897-2.997c.456-1.17.684-2.137.684-2.907zm1.82-3.86c.04.286.06.593.06.924 0 .912-.17 1.938-.683 3.22l-2.746 7.94c2.672-1.558 4.47-4.454 4.47-7.77 0-1.564-.4-3.033-1.1-4.314zM12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10z"></path></g></svg>				</a>
			</li>
			<li>
			<iframe id="googleplus-sign-in" name="googleplus-sign-in" src="./microcontrolere.wordpress_files/saved_resource(10).html" width="24" height="24" scrolling="no" allowtransparency="true" seamless="seamless" frameborder="0"></iframe>
			</li>
			<li>
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#comment-form-load-service:Twitter" id="postas-twitter" class="nascar-signin-link" title="Login via Twitter">
					<svg xmlns="http://www.w3.org/2000/svg" role="presentation" viewBox="0 0 24 24"><rect x="0" fill="none" width="24" height="24"></rect><g><path fill="#1DA1F2" d="M22.23 5.924c-.736.326-1.527.547-2.357.646.847-.508 1.498-1.312 1.804-2.27-.793.47-1.67.812-2.606.996C18.325 4.498 17.258 4 16.078 4c-2.266 0-4.103 1.837-4.103 4.103 0 .322.036.635.106.935-3.41-.17-6.433-1.804-8.457-4.287-.353.607-.556 1.312-.556 2.064 0 1.424.724 2.68 1.825 3.415-.673-.022-1.305-.207-1.86-.514v.052c0 1.988 1.415 3.647 3.293 4.023-.344.095-.707.145-1.08.145-.265 0-.522-.026-.773-.074.522 1.63 2.038 2.817 3.833 2.85-1.404 1.1-3.174 1.757-5.096 1.757-.332 0-.66-.02-.98-.057 1.816 1.164 3.973 1.843 6.29 1.843 7.547 0 11.675-6.252 11.675-11.675 0-.178-.004-.355-.012-.53.802-.578 1.497-1.3 2.047-2.124z"></path></g></svg>				</a>
			</li>
			<li>
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#comment-form-load-service:Facebook" id="postas-facebook" class="nascar-signin-link" title="Login via Facebook">
					<svg xmlns="http://www.w3.org/2000/svg" role="presentation" viewBox="0 0 24 24"><rect x="0" fill="none" width="24" height="24"></rect><g><path fill="#3B5998" d="M20.007 3H3.993C3.445 3 3 3.445 3 3.993v16.013c0 .55.445.994.993.994h8.62v-6.97H10.27V11.31h2.346V9.31c0-2.325 1.42-3.59 3.494-3.59.993 0 1.847.073 2.096.106v2.43h-1.438c-1.128 0-1.346.537-1.346 1.324v1.734h2.69l-.35 2.717h-2.34V21h4.587c.548 0 .993-.445.993-.993V3.993c0-.548-.445-.993-.993-.993z"></path></g></svg>				</a>
			</li>
		</ul>
	</div>

	<div id="comment-form-guest" class="comment-form-service selected">
		<div class="comment-form-padder">
			<div class="comment-form-avatar">
<a href="https://gravatar.com/site/signup/" target="_blank">				<img src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(18).png" alt="Gravatar" width="25" class="no-grav">
</a>			</div>

				<div class="comment-form-fields">
				<div class="comment-form-field comment-form-email">
					<label for="email">Email <span class="required">(required)</span> <span class="nopublish">(Address never made public)</span></label>
					<div class="comment-form-input"><input id="email" name="email" type="email" value=""></div>
				</div>
				<div class="comment-form-field comment-form-author">
					<label for="author">Name <span class="required">(required)</span></label>
					<div class="comment-form-input"><input id="author" name="author" type="text" value=""></div>
				</div>
				<div class="comment-form-field comment-form-url">
					<label for="url">Website</label>
					<div class="comment-form-input"><input id="url" name="url" type="url" value=""></div>
				</div>
			</div>
			
		</div>
	</div>

	<div id="comment-form-wordpress" class="comment-form-service">
		<div class="comment-form-padder">
			<div class="comment-form-avatar">
				<img src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(18).png" alt="WordPress.com Logo" width="25" class="no-grav">
			</div>

				<div class="comment-form-fields">
				<input type="hidden" name="wp_avatar" id="wordpress-avatar" class="comment-meta-wordpress" value="">
				<input type="hidden" name="wp_user_id" id="wordpress-user_id" class="comment-meta-wordpress" value="">
				<input type="hidden" name="wp_access_token" id="wordpress-access_token" class="comment-meta-wordpress" value="">
						<p class="comment-form-posting-as pa-wordpress">
			<strong></strong>
			You are commenting using your WordPress.com account.			<span class="comment-form-log-out">
				(&nbsp;<a href="javascript:HighlanderComments.doExternalLogout( &#39;wordpress&#39; );">Log&nbsp;Out</a>&nbsp;/&nbsp;
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#" onclick="javascript:HighlanderComments.switchAccount();return false;">Change</a>&nbsp;)
			</span>
			<span class="pa-icon"><svg xmlns="http://www.w3.org/2000/svg" role="presentation" viewBox="0 0 24 24"><rect x="0" fill="none" width="24" height="24"></rect><g><path fill="#0087be" d="M12.158 12.786l-2.698 7.84c.806.236 1.657.365 2.54.365 1.047 0 2.05-.18 2.986-.51-.024-.037-.046-.078-.065-.123l-2.762-7.57zM3.008 12c0 3.56 2.07 6.634 5.068 8.092L3.788 8.342c-.5 1.117-.78 2.354-.78 3.658zm15.06-.454c0-1.112-.398-1.88-.74-2.48-.456-.74-.883-1.368-.883-2.11 0-.825.627-1.595 1.51-1.595.04 0 .078.006.116.008-1.598-1.464-3.73-2.36-6.07-2.36-3.14 0-5.904 1.613-7.512 4.053.21.008.41.012.58.012.94 0 2.395-.114 2.395-.114.484-.028.54.684.057.74 0 0-.487.058-1.03.086l3.275 9.74 1.968-5.902-1.4-3.838c-.485-.028-.944-.085-.944-.085-.486-.03-.43-.77.056-.742 0 0 1.484.114 2.368.114.94 0 2.397-.114 2.397-.114.486-.028.543.684.058.74 0 0-.488.058-1.03.086l3.25 9.665.897-2.997c.456-1.17.684-2.137.684-2.907zm1.82-3.86c.04.286.06.593.06.924 0 .912-.17 1.938-.683 3.22l-2.746 7.94c2.672-1.558 4.47-4.454 4.47-7.77 0-1.564-.4-3.033-1.1-4.314zM12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10z"></path></g></svg></span>
		</p>
					</div>
	
		</div>
	</div>

	<div id="comment-form-googleplus" class="comment-form-service">
		<div class="comment-form-padder">
			<div class="comment-form-avatar">
				<img src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(18).png" alt="Google photo" width="25" class="no-grav">
			</div>

				<div class="comment-form-fields">
				<input type="hidden" name="googleplus_avatar" id="googleplus-avatar" class="comment-meta-googleplus" value="">
				<input type="hidden" name="googleplus_user_id" id="googleplus-user_id" class="comment-meta-googleplus" value="">
				<input type="hidden" name="googleplus_access_token" id="googleplus-access_token" class="comment-meta-googleplus" value="">
						<p class="comment-form-posting-as pa-googleplus">
			<strong></strong>
			You are commenting using your Google account.			<span class="comment-form-log-out">
				(&nbsp;<a href="javascript:HighlanderComments.doExternalLogout( &#39;googleplus&#39; );">Log&nbsp;Out</a>&nbsp;/&nbsp;
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#" onclick="javascript:HighlanderComments.switchAccount();return false;">Change</a>&nbsp;)
			</span>
			<span class="pa-icon"><svg xmlns="http://www.w3.org/2000/svg" role="presentation" x="0px" y="0px" viewBox="0 0 60 60"><path fill="#519bf7" d="M56.3,30c0,-1.6 -0.2,-3.4 -0.6,-5h-3.1H42.2H30v10.6h14.8C44,39.3 42,42 39.1,43.9l8.8,6.8C53,46 56.3,39 56.3,30z"></path><path fill="#3db366" d="M30,57.5c6.7,0 13.1,-2.4 17.9,-6.8l-8.8,-6.8c-2.5,1.6 -5.6,2.4 -9.1,2.4c-7.2,0 -13.3,-4.7 -15.4,-11.2l-9.3,7.1C9.8,51.3 19.1,57.5 30,57.5z"></path><path fill="#fdc600" d="M5.3,42.2l9.3,-7.1c-0.5,-1.6 -0.8,-3.3 -0.8,-5.1s0.3,-3.5 0.8,-5.1l-9.3,-7.1C3.5,21.5 2.5,25.6 2.5,30S3.5,38.5 5.3,42.2z"></path><path fill="#f15b44" d="M40.1,17.4l8,-8C43.3,5.1 37,2.5 30,2.5C19.1,2.5 9.8,8.7 5.3,17.8l9.3,7.1c2.1,-6.5 8.2,-11.1 15.4,-11.1C33.9,13.7 37.4,15.1 40.1,17.4z"></path></svg></span>
		</p>
					</div>
	
		</div>
	</div>

	<div id="comment-form-twitter" class="comment-form-service">
		<div class="comment-form-padder">
			<div class="comment-form-avatar">
				<img src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(18).png" alt="Twitter picture" width="25" class="no-grav">
			</div>

				<div class="comment-form-fields">
				<input type="hidden" name="twitter_avatar" id="twitter-avatar" class="comment-meta-twitter" value="">
				<input type="hidden" name="twitter_user_id" id="twitter-user_id" class="comment-meta-twitter" value="">
				<input type="hidden" name="twitter_access_token" id="twitter-access_token" class="comment-meta-twitter" value="">
						<p class="comment-form-posting-as pa-twitter">
			<strong></strong>
			You are commenting using your Twitter account.			<span class="comment-form-log-out">
				(&nbsp;<a href="javascript:HighlanderComments.doExternalLogout( &#39;twitter&#39; );">Log&nbsp;Out</a>&nbsp;/&nbsp;
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#" onclick="javascript:HighlanderComments.switchAccount();return false;">Change</a>&nbsp;)
			</span>
			<span class="pa-icon"><svg xmlns="http://www.w3.org/2000/svg" role="presentation" viewBox="0 0 24 24"><rect x="0" fill="none" width="24" height="24"></rect><g><path fill="#1DA1F2" d="M22.23 5.924c-.736.326-1.527.547-2.357.646.847-.508 1.498-1.312 1.804-2.27-.793.47-1.67.812-2.606.996C18.325 4.498 17.258 4 16.078 4c-2.266 0-4.103 1.837-4.103 4.103 0 .322.036.635.106.935-3.41-.17-6.433-1.804-8.457-4.287-.353.607-.556 1.312-.556 2.064 0 1.424.724 2.68 1.825 3.415-.673-.022-1.305-.207-1.86-.514v.052c0 1.988 1.415 3.647 3.293 4.023-.344.095-.707.145-1.08.145-.265 0-.522-.026-.773-.074.522 1.63 2.038 2.817 3.833 2.85-1.404 1.1-3.174 1.757-5.096 1.757-.332 0-.66-.02-.98-.057 1.816 1.164 3.973 1.843 6.29 1.843 7.547 0 11.675-6.252 11.675-11.675 0-.178-.004-.355-.012-.53.802-.578 1.497-1.3 2.047-2.124z"></path></g></svg></span>
		</p>
					</div>
	
		</div>
	</div>

	<div id="comment-form-facebook" class="comment-form-service">
		<div class="comment-form-padder">
			<div class="comment-form-avatar">
				<img src="./microcontrolere.wordpress_files/ad516503a11cd5ca435acc9bb6523536(18).png" alt="Facebook photo" width="25" class="no-grav">
			</div>

				<div class="comment-form-fields">
				<input type="hidden" name="fb_avatar" id="facebook-avatar" class="comment-meta-facebook" value="">
				<input type="hidden" name="fb_user_id" id="facebook-user_id" class="comment-meta-facebook" value="">
				<input type="hidden" name="fb_access_token" id="facebook-access_token" class="comment-meta-facebook" value="">
						<p class="comment-form-posting-as pa-facebook">
			<strong></strong>
			You are commenting using your Facebook account.			<span class="comment-form-log-out">
				(&nbsp;<a href="javascript:HighlanderComments.doExternalLogout( &#39;facebook&#39; );">Log&nbsp;Out</a>&nbsp;/&nbsp;
				<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#" onclick="javascript:HighlanderComments.switchAccount();return false;">Change</a>&nbsp;)
			</span>
			<span class="pa-icon"><svg xmlns="http://www.w3.org/2000/svg" role="presentation" viewBox="0 0 24 24"><rect x="0" fill="none" width="24" height="24"></rect><g><path fill="#3B5998" d="M20.007 3H3.993C3.445 3 3 3.445 3 3.993v16.013c0 .55.445.994.993.994h8.62v-6.97H10.27V11.31h2.346V9.31c0-2.325 1.42-3.59 3.494-3.59.993 0 1.847.073 2.096.106v2.43h-1.438c-1.128 0-1.346.537-1.346 1.324v1.734h2.69l-.35 2.717h-2.34V21h4.587c.548 0 .993-.445.993-.993V3.993c0-.548-.445-.993-.993-.993z"></path></g></svg></span>
		</p>
					</div>
	
		</div>
	</div>


	<div id="comment-form-load-service" class="comment-form-service">
		<div class="comment-form-posting-as-cancel"><a href="javascript:HighlanderComments.cancelExternalWindow();">Cancel</a></div>
		<p>Connecting to %s</p>
	</div>

</div>

<script type="text/javascript">
var highlander_expando_javascript = function(){
	var input = document.createElement( 'input' ),
	    comment = jQuery( '#comment' );

	if ( 'placeholder' in input ) {
		comment.attr( 'placeholder', jQuery( '.comment-textarea label' ).remove().text() );
	}

	// Expando Mode: start small, then auto-resize on first click + text length
	jQuery( '#comment-form-identity' ).hide();
	jQuery( '#comment-form-subscribe' ).hide();
	jQuery( '#commentform .form-submit' ).hide();

	comment.css( { 'height':'10px' } ).one( 'focus', function() {
		var timer = setInterval( HighlanderComments.resizeCallback, 10 )
		jQuery( this ).animate( { 'height': HighlanderComments.initialHeight } ).delay( 100 ).queue( function(n) { clearInterval( timer ); HighlanderComments.resizeCallback(); n(); } );
		jQuery( '#comment-form-identity' ).slideDown();
		jQuery( '#comment-form-subscribe' ).slideDown();
		jQuery( '#commentform .form-submit' ).slideDown();
	});
}
jQuery(document).ready( highlander_expando_javascript );
</script>

<div id="comment-form-subscribe" style="display: none;">
	<p class="comment-subscription-form"><input type="checkbox" name="subscribe" id="subscribe" value="subscribe" style="width: auto;"> <label class="subscribe-label" id="subscribe-label" for="subscribe" style="display: inline;">Notify me of new comments via email.</label></p><p class="post-subscription-form"><input type="checkbox" name="subscribe_blog" id="subscribe_blog" value="subscribe" style="width: auto;"> <label class="subscribe-label" id="subscribe-blog-label" for="subscribe_blog" style="display: inline;">Notify me of new posts via email.</label></p></div>




<p class="form-submit" style="display: none;"><input name="submit" type="submit" id="comment-submit" class="submit" value="Post Comment"> <input type="hidden" name="comment_post_ID" value="662" id="comment_post_ID">
<input type="hidden" name="comment_parent" id="comment_parent" value="0">
</p><p style="display: none;"><input type="hidden" id="akismet_comment_nonce" name="akismet_comment_nonce" value="032205e3a0"></p>
<input type="hidden" name="genseq" value="1583929277">
<p style="display: none;"></p><input type="hidden" id="ak_js" name="ak_js" value="1583929282255"></form>	</div><!-- #respond -->
	<div style="clear: both"></div>
</div><!-- #comments -->
		
	
	</main> <!-- /content -->

	
<div class="sidebar">
			<aside id="recent-posts-2" class="widget widget_recent_entries"><div class="widget-content">		<h3 class="widget-title">Recent Posts</h3>		<ul>
											<li>
					<a href="https://microcontrolere.wordpress.com/2019/06/19/arduino-current-measure-acs712/">Arduino current measure –&nbsp;ACS712</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2019/06/19/arduino-voltage-divider-analog-inputs/">Arduino voltage divider Analog&nbsp;inputs</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2019/05/22/mppt-charger-ver-2/">mppt solar charger ver&nbsp;2</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2019/04/22/positive-was-not-declared-in-this-scope-error-resolved/">‘POSITIVE’ was not declared in this scope  – error&nbsp;resolved</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2019/04/01/arduino-and-i2c-lcd-in-proteus/">Arduino and I2C LCD in&nbsp;Proteus</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2019/03/15/how-to-quickly-check-the-lcd-via-i2c-synchronous-serial/">How to quickly check the LCD via I2C synchronous&nbsp;serial</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2017/12/09/aplicatii-raspberry-pi/">Aplicatii Raspberry Pi</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2017/12/09/aplicatii-2/">Aplicatii microcontrolere</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2017/12/09/aplicatii/">Aplicatii Arduino</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2017/12/09/despre-raspberry-pi/">Despre Raspberry Pi</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/" aria-current="page">MPPT Solar Charger</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2016/08/29/cum-se-incarca-bootloader-in-atmega-328p-folosind-arduino-uno-ca-programator/">Cum se incarca bootloader in ATmega 328P folosind Arduino Uno ca&nbsp;programator</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2016/08/10/arduino-uno/">Arduino UNO</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2016/07/27/weather-station-with-lcd5110/">Weather station with&nbsp;LCD5110</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2014/03/06/experiment-5-independent-switches/">Experiment 5 – independent&nbsp;switches</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2014/03/03/experiment-4-switches/">Experiment 4 –&nbsp;Switches</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2014/02/26/experiment-3-knight-rider/">Experiment 3 – Knight&nbsp;Rider</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2014/02/26/experiment-2-blinking-led/">Experiment 2 – Blinking&nbsp;LED</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2014/02/22/experiment-1-aprinderea-unui-led/">Experiment 1 – Aprinderea unui&nbsp;LED</a>
									</li>
											<li>
					<a href="https://microcontrolere.wordpress.com/2014/02/20/development-board/">Development board</a>
									</li>
					</ul>
		</div><div class="clear"></div></aside><aside id="meta-4" class="widget widget_meta"><div class="widget-content"><h3 class="widget-title">Meta</h3>			<ul>
			<li><a href="https://wordpress.com/start?ref=wplogin">Register</a></li>			<li><a href="https://microcontrolere.wordpress.com/wp-login.php">Log in</a></li>
			<li><a href="https://microcontrolere.wordpress.com/feed/">Entries feed</a></li>
			<li><a href="https://microcontrolere.wordpress.com/comments/feed/">Comments feed</a></li>
			<li><a href="https://wordpress.com/" title="Powered by WordPress, state-of-the-art semantic personal publishing platform.">WordPress.com</a></li>			</ul>
			</div><div class="clear"></div></aside><aside id="blog-stats-2" class="widget widget_blog-stats"><div class="widget-content"><h3 class="widget-title">Blog Stats</h3>		<ul>
			<li>83,179 hits</li>
		</ul>
		</div><div class="clear"></div></aside><aside id="custom_html-2" class="widget_text widget widget_custom_html"><div class="widget_text widget-content"><h3 class="widget-title">Visitors</h3><div class="textwidget custom-html-widget"><a href="https://info.flagcounter.com/1UPv"><img src="./microcontrolere.wordpress_files/saved_resource(5)" alt="Flag Counter" border="0"></a></div></div><div class="clear"></div></aside></div>

	<div class="clear"></div>

</div> <!-- /wrapper -->


<footer class="site-footer">

	<div class="section-inner">
		<a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#" class="to-the-top" title="To the top"><div class="fa fw fa-arrow-up"></div></a>
		<p class="copyright">© 2020 <a href="https://microcontrolere.wordpress.com/" title="microcontrolere — Aplicatii si proiecte pentru incepatori" rel="home">microcontrolere</a></p>
		<p class="attribution"><a href="https://wordpress.com/?ref=footer_blog" rel="nofollow">Blog at WordPress.com.</a></p>
	</div>

</footer> <!-- /site-footer -->

<!--  -->
<script src="./microcontrolere.wordpress_files/gprofiles.js.tải xuống"></script>
<script>
var WPGroHo = {"my_hash":""};
</script>
<script type="text/javascript" src="./microcontrolere.wordpress_files/wpgroho.js.tải xuống"></script>

	<script>
		//initialize and attach hovercards to all gravatars
		jQuery( document ).ready( function( $ ) {

			if (typeof Gravatar === "undefined"){
				return;
			}

			if ( typeof Gravatar.init !== "function" ) {
				return;
			}			

			Gravatar.profile_cb = function( hash, id ) {
				WPGroHo.syncProfileData( hash, id );
			};
			Gravatar.my_hash = WPGroHo.my_hash;
			Gravatar.init( 'body', '#wp-admin-bar-my-account' );
		});
	</script>

		<div style="display:none">
	<div class="grofile-hash-map-05721d1f49e55e216da8dd72720cffee">
	</div>
	<div class="grofile-hash-map-f926372af09b6bb1d0b989ca2de7b106">
	</div>
	<div class="grofile-hash-map-05721d1f49e55e216da8dd72720cffee">
	</div>
	<div class="grofile-hash-map-53b35c720fc6cb314e64d4bdca7c8f2b">
	</div>
	<div class="grofile-hash-map-48aca2c658a9c8374a7b8158a09df5cd">
	</div>
	<div class="grofile-hash-map-b19d7994ba8376b4a1a0afc9ad83446a">
	</div>
	<div class="grofile-hash-map-e82d052d283cb97e8345f35fb200bfa9">
	</div>
	<div class="grofile-hash-map-0d17bee465c864f06206b7f7e936f65b">
	</div>
	<div class="grofile-hash-map-0611065d394232348f1661a77287c12e">
	</div>
	<div class="grofile-hash-map-931af2d4fca4422e408f1c7343599dab">
	</div>
	<div class="grofile-hash-map-acba83681da6be795ede13c2ed225c2d">
	</div>
	<div class="grofile-hash-map-5ea6e4ce5ac7f22cb1c9c495a7d9ed84">
	</div>
	<div class="grofile-hash-map-803eb681c6ae271a419dd44297dcf98e">
	</div>
	<div class="grofile-hash-map-1a7f30512c63363599932316150f5a56">
	</div>
	<div class="grofile-hash-map-7a91244b89e9f9bd61b1a74745b02fa2">
	</div>
	<div class="grofile-hash-map-2d4916bc1ec75d86b86282d6da4e2b24">
	</div>
	<div class="grofile-hash-map-7e02ea8f8c7e9b384352f9fb71b182d1">
	</div>
	<div class="grofile-hash-map-c7b975470526246895c0d0c056dcc8f4">
	</div>
	<div class="grofile-hash-map-ee221e54864ba6f2c7f5495028dcf30a">
	</div>
	<div class="grofile-hash-map-ba7ed574a9c2a48e798161c9ad623436">
	</div>
	<div class="grofile-hash-map-4c2edf6bf368ae9f65494e343fc35757">
	</div>
	</div>
<script>
var HighlanderComments = {"loggingInText":"Logging In\u2026","submittingText":"Posting Comment\u2026","postCommentText":"Post Comment","connectingToText":"Connecting to %s","commentingAsText":"%1$s: You are commenting using your %2$s account.","logoutText":"Log Out","loginText":"Log In","connectURL":"https:\/\/microcontrolere.wordpress.com\/public.api\/connect\/?action=request","logoutURL":"https:\/\/microcontrolere.wordpress.com\/wp-login.php?action=logout&_wpnonce=d6b558acd0","homeURL":"https:\/\/microcontrolere.wordpress.com\/","postID":"662","gravDefault":"mystery","enterACommentError":"Please enter a comment","enterEmailError":"Please enter your email address here","invalidEmailError":"Invalid email address","enterAuthorError":"Please enter your name here","gravatarFromEmail":"This picture will show whenever you leave a comment. Click to customize it.","logInToExternalAccount":"Log in to use details from one of these accounts.","change":"Change","changeAccount":"Change Account","comment_registration":"","userIsLoggedIn":"","isJetpack":"","text_direction":"ltr"};
</script>
<script type="text/javascript" src="./microcontrolere.wordpress_files/saved_resource(6)"></script>

	<div id="carousel-reblog-box">
		<form action="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#" name="carousel-reblog">
			<textarea id="carousel-reblog-content" name="carousel-reblog-content" placeholder="Add your thoughts here... (optional)"></textarea>
			<label for="carousel-reblog-to-blog-id" id="carousel-reblog-lblogid">Post to</label>
			<select name="carousel-reblog-to-blog-id" id="carousel-reblog-to-blog-id">
						</select>

			<div class="submit">
				<span class="canceltext"><a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/#" class="cancel">Cancel</a></span>
				<input type="submit" name="carousel-reblog-submit" class="button" id="carousel-reblog-submit" value="Reblog Post">
				<input type="hidden" id="carousel-reblog-blog-id" value="64402984">
				<input type="hidden" id="carousel-reblog-blog-url" value="https://microcontrolere.wordpress.com">
				<input type="hidden" id="carousel-reblog-blog-title" value="microcontrolere">
				<input type="hidden" id="carousel-reblog-post-url" value="">
				<input type="hidden" id="carousel-reblog-post-title" value="">
			</div>

			<input type="hidden" id="_wpnonce" name="_wpnonce" value="98f480363d"><input type="hidden" name="_wp_http_referer" value="/2016/12/16/mppt-solar-charger/">		</form>

		<div class="arrow"></div>
	</div>

	<script type="text/javascript">
		window.WPCOM_sharing_counts = {"https:\/\/microcontrolere.wordpress.com\/2016\/12\/16\/mppt-solar-charger\/":662};
	</script>
						<script type="text/javascript" src="./microcontrolere.wordpress_files/saved_resource(7)"></script>
<script type="text/javascript">
	(function(){
		var corecss = document.createElement('link');
		var themecss = document.createElement('link');
		var corecssurl = "https://s0.wp.com/wp-content/plugins/syntaxhighlighter/syntaxhighlighter3/styles/shCore.css?ver=3.0.9b";
		if ( corecss.setAttribute ) {
				corecss.setAttribute( "rel", "stylesheet" );
				corecss.setAttribute( "type", "text/css" );
				corecss.setAttribute( "href", corecssurl );
		} else {
				corecss.rel = "stylesheet";
				corecss.href = corecssurl;
		}
		document.head.appendChild( corecss );
		var themecssurl = "https://s0.wp.com/wp-content/plugins/syntaxhighlighter/syntaxhighlighter3/styles/shThemeDefault.css?m=1363304414h&amp;ver=3.0.9b";
		if ( themecss.setAttribute ) {
				themecss.setAttribute( "rel", "stylesheet" );
				themecss.setAttribute( "type", "text/css" );
				themecss.setAttribute( "href", themecssurl );
		} else {
				themecss.rel = "stylesheet";
				themecss.href = themecssurl;
		}
		document.head.appendChild( themecss );
	})();
	SyntaxHighlighter.config.strings.expandSource = '+ expand source';
	SyntaxHighlighter.config.strings.help = '?';
	SyntaxHighlighter.config.strings.alert = 'SyntaxHighlighter\n\n';
	SyntaxHighlighter.config.strings.noBrush = 'Can\'t find brush for: ';
	SyntaxHighlighter.config.strings.brushNotHtmlScript = 'Brush wasn\'t configured for html-script option: ';
	SyntaxHighlighter.defaults['pad-line-numbers'] = false;
	SyntaxHighlighter.defaults['toolbar'] = false;
	SyntaxHighlighter.all();

	// Infinite scroll support
	if ( typeof( jQuery ) !== 'undefined' ) {
		jQuery( function( $ ) {
			$( document.body ).on( 'post-load', function() {
				SyntaxHighlighter.highlight();
			} );
		} );
	}
</script>
<link rel="stylesheet" id="all-css-0-3" href="./microcontrolere.wordpress_files/saved_resource(8)" type="text/css" media="all">
<script>
var actionbardata = {"siteID":"64402984","siteName":"microcontrolere","siteURL":"http:\/\/microcontrolere.wordpress.com","icon":"<img alt='' src='https:\/\/secure.gravatar.com\/blavatar\/8681a14e310ca841773d27aba74fbda7?s=50&d=https%3A%2F%2Fs0.wp.com%2Fi%2Flogo%2Fwpcom-gray-white.png' class='avatar avatar-50' height='50' width='50' \/>","canManageOptions":"","canCustomizeSite":"","isFollowing":"","themeSlug":"pub\/rowling","signupURL":"https:\/\/wordpress.com\/start\/","loginURL":"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F&signup_flow=account","themeURL":"https:\/\/wordpress.com\/theme\/rowling\/","xhrURL":"https:\/\/microcontrolere.wordpress.com\/wp-admin\/admin-ajax.php","nonce":"b45447f8dc","isSingular":"1","isFolded":"","isLoggedIn":"","isMobile":"","subscribeNonce":"<input type=\"hidden\" id=\"_wpnonce\" name=\"_wpnonce\" value=\"f994535f79\" \/>","referer":"https:\/\/microcontrolere.wordpress.com\/2016\/12\/16\/mppt-solar-charger\/","canFollow":"1","feedID":"18176635","statusMessage":"","customizeLink":"https:\/\/microcontrolere.wordpress.com\/wp-admin\/customize.php?url=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F","postID":"662","shortlink":"https:\/\/wp.me\/p4me9O-aG","canEditPost":"","editLink":"https:\/\/wordpress.com\/post\/microcontrolere.wordpress.com\/662","statsLink":"https:\/\/wordpress.com\/stats\/post\/662\/microcontrolere.wordpress.com","i18n":{"view":"View site","follow":"Follow","following":"Following","edit":"Edit","login":"Log in","signup":"Sign up","customize":"Customize","report":"Report this content","themeInfo":"Get theme: Rowling","shortlink":"Copy shortlink","copied":"Copied","followedText":"New posts from this site will now appear in your <a href=\"https:\/\/wordpress.com\/read\">Reader<\/a>","foldBar":"Collapse this bar","unfoldBar":"Expand this bar","editSubs":"Manage subscriptions","viewReader":"View site in Reader","viewReadPost":"View post in Reader","subscribe":"Sign me up","enterEmail":"Enter your email address","followers":"","alreadyUser":"Already have a WordPress.com account? <a href=\"https:\/\/wordpress.com\/log-in?redirect_to=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F&signup_flow=account\">Log in now.<\/a>","stats":"Stats"}};
</script>
<script>
var jetpackCarouselStrings = {"widths":[370,700,1000,1200,1400,2000],"is_logged_in":"","lang":"en","ajaxurl":"https:\/\/microcontrolere.wordpress.com\/wp-admin\/admin-ajax.php","nonce":"f97d2bc64a","display_exif":"1","display_geo":"1","single_image_gallery":"1","single_image_gallery_media_file":"","background_color":"black","comment":"Comment","post_comment":"Post Comment","write_comment":"Write a Comment...","loading_comments":"Loading Comments...","download_original":"View full size <span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>","no_comment_text":"Please be sure to submit some text with your comment.","no_comment_email":"Please provide an email address to comment.","no_comment_author":"Please provide your name to comment.","comment_post_error":"Sorry, but there was an error posting your comment. Please try again later.","comment_approved":"Your comment was approved.","comment_unapproved":"Your comment is in moderation.","camera":"Camera","aperture":"Aperture","shutter_speed":"Shutter Speed","focal_length":"Focal Length","copyright":"Copyright","comment_registration":"0","require_name_email":"1","login_url":"https:\/\/microcontrolere.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F","blog_id":"64402984","meta_data":["camera","aperture","shutter_speed","focal_length","copyright"],"local_comments_commenting_as":"<fieldset><label for=\"email\">Email (Required)<\/label> <input type=\"text\" name=\"email\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-email-field\" \/><\/fieldset><fieldset><label for=\"author\">Name (Required)<\/label> <input type=\"text\" name=\"author\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-author-field\" \/><\/fieldset><fieldset><label for=\"url\">Website<\/label> <input type=\"text\" name=\"url\" class=\"jp-carousel-comment-form-field jp-carousel-comment-form-text-field\" id=\"jp-carousel-comment-form-url-field\" \/><\/fieldset>","reblog":"Reblog","reblogged":"Reblogged","reblog_add_thoughts":"Add your thoughts here... (optional)","reblogging":"Reblogging...","post_reblog":"Post Reblog","stats_query_args":"blog=64402984&v=wpcom&tz=2&user_id=0&subd=microcontrolere","is_public":"1","reblog_enabled":""};
</script>
<script type="text/javascript" src="./microcontrolere.wordpress_files/saved_resource(9)"></script><div class="widget widget_eu_cookie_law_widget" style="display: block;">
</div><div id="actionbar" class="actnbr-pub-rowling actnbr-has-follow actnbr-hidden"><ul><li class="actnbr-btn actnbr-hidden"> 			    	<a class="actnbr-action actnbr-actn-follow" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/"><svg class="gridicon gridicon__follow" height="24px" width="24px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g><path d="M23 16v2h-3v3h-2v-3h-3v-2h3v-3h2v3h3zM20 2v9h-4v3h-3v4H4c-1.1 0-2-.9-2-2V2h18zM8 13v-1H4v1h4zm3-3H4v1h7v-1zm0-2H4v1h7V8zm7-4H4v2h14V4z"></path></g></svg><span>Follow</span></a> 			    	<div class="actnbr-popover tip tip-top-left actnbr-notice"> 			    		<div class="tip-arrow"></div> 			    		<div class="tip-inner actnbr-follow-bubble"></div> 			    	</div> 			    </li><li class="actnbr-ellipsis actnbr-hidden"> 			  <svg class="gridicon gridicon__ellipsis" height="24" width="24" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g><circle cx="5" cy="12" r="2"></circle><circle cx="19" cy="12" r="2"></circle><circle cx="12" cy="12" r="2"></circle></g></svg> 			  <div class="actnbr-popover tip tip-top-left actnbr-more"> 			  	<div class="tip-arrow"></div> 			  	<div class="tip-inner"> 				  <ul> 				    <li class="actnbr-sitename actnbr-hidden"><a href="http://microcontrolere.wordpress.com/"><img alt="" src="./microcontrolere.wordpress_files/8681a14e310ca841773d27aba74fbda7.png" class="avatar avatar-50" height="50" width="50"> microcontrolere</a></li> 				   	<li class="actnbr-folded-customize actnbr-hidden"><a href="https://microcontrolere.wordpress.com/wp-admin/customize.php?url=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F"><svg class="gridicon gridicon__customize" height="20px" width="20px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g><path d="M2 6c0-1.505.78-3.08 2-4 0 .845.69 2 2 2 1.657 0 3 1.343 3 3 0 .386-.08.752-.212 1.09.74.594 1.476 1.19 2.19 1.81L8.9 11.98c-.62-.716-1.214-1.454-1.807-2.192C6.753 9.92 6.387 10 6 10c-2.21 0-4-1.79-4-4zm12.152 6.848l1.34-1.34c.607.304 1.283.492 2.008.492 2.485 0 4.5-2.015 4.5-4.5 0-.725-.188-1.4-.493-2.007L18 9l-2-2 3.507-3.507C18.9 3.188 18.225 3 17.5 3 15.015 3 13 5.015 13 7.5c0 .725.188 1.4.493 2.007L3 20l2 2 6.848-6.848c1.885 1.928 3.874 3.753 5.977 5.45l1.425 1.148 1.5-1.5-1.15-1.425c-1.695-2.103-3.52-4.092-5.448-5.977z" data-reactid=".2.1.1:0.1b.0"></path></g></svg><span>Customize<span></span></span></a></li> 				    <li class="actnbr-folded-follow actnbr-hidden"><a class="actnbr-action actnbr-actn-follow" href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/"><svg class="gridicon gridicon__follow" height="24px" width="24px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g><path d="M23 16v2h-3v3h-2v-3h-3v-2h3v-3h2v3h3zM20 2v9h-4v3h-3v4H4c-1.1 0-2-.9-2-2V2h18zM8 13v-1H4v1h4zm3-3H4v1h7v-1zm0-2H4v1h7V8zm7-4H4v2h14V4z"></path></g></svg><span>Follow</span></a></li> 					<li class="actnbr-signup actnbr-hidden"><a href="https://wordpress.com/start/">Sign up</a></li> 				    <li class="actnbr-login actnbr-hidden"><a href="https://wordpress.com/log-in?redirect_to=https%3A%2F%2Fmicrocontrolere.wordpress.com%2F2016%2F12%2F16%2Fmppt-solar-charger%2F&amp;signup_flow=account">Log in</a></li> 				     				    <li class="actnbr-shortlink actnbr-hidden"><a href="https://wp.me/p4me9O-aG">Copy shortlink</a></li> 				    <li class="flb-report actnbr-hidden"><a href="http://en.wordpress.com/abuse/">Report this content</a></li> 				     				     				    <li class="actnbr-subs actnbr-hidden"><a href="https://subscribe.wordpress.com/">Manage subscriptions</a></li> 				    <li class="actnbr-fold actnbr-hidden"><a href="https://microcontrolere.wordpress.com/2016/12/16/mppt-solar-charger/">Collapse this bar</a></li> 			      </ul> 			    </div> 		      </div> 		    </li> 	      </ul></div>
<script type="text/javascript">
( 'fetch' in window ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-fetch.min.js?m=1573572739h&#038;ver=3.0.0"></scr' + 'ipt>' );( document.contains ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-node-contains.min.js?m=1540208548h&#038;ver=3.26.0-0"></scr' + 'ipt>' );( window.FormData && window.FormData.prototype.keys ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-formdata.min.js?m=1550600082h&#038;ver=3.0.12"></scr' + 'ipt>' );( Element.prototype.matches && Element.prototype.closest ) || document.write( '<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-element-closest.min.js?m=1540208548h&#038;ver=2.0.2"></scr' + 'ipt>' );
</script>
<script>
<!--//--><![CDATA[//><!--
PDRTJS_settings_7462246_post_662={"id":7462246,"unique_id":"wp-post-662","title":"MPPT%20Solar%20Charger","permalink":"https:\/\/microcontrolere.wordpress.com\/2016\/12\/16\/mppt-solar-charger\/","item_id":"_post_662"}; if ( typeof PDRTJS_RATING !== 'undefined' ){if ( typeof PDRTJS_7462246_post_662 == 'undefined' ){PDRTJS_7462246_post_662 = new PDRTJS_RATING( PDRTJS_settings_7462246_post_662 );}}
//--><!]]>
</script>
<script src="./microcontrolere.wordpress_files/rating.js.tải xuống"></script>
<script>
var sharing_js_options = {"lang":"en","counts":"1","is_stats_active":"1"};
</script>
<script type="text/javascript" src="./microcontrolere.wordpress_files/sharing.js.tải xuống"></script>
<script type="text/javascript">
var windowOpen;
			jQuery( document.body ).on( 'click', 'a.share-facebook', function() {
				// If there's another sharing window open, close it.
				if ( 'undefined' !== typeof windowOpen ) {
					windowOpen.close();
				}
				windowOpen = window.open( jQuery( this ).attr( 'href' ), 'wpcomfacebook', 'menubar=1,resizable=1,width=600,height=400' );
				return false;
			});
var windowOpen;
			jQuery( document.body ).on( 'click', 'a.share-linkedin', function() {
				// If there's another sharing window open, close it.
				if ( 'undefined' !== typeof windowOpen ) {
					windowOpen.close();
				}
				windowOpen = window.open( jQuery( this ).attr( 'href' ), 'wpcomlinkedin', 'menubar=1,resizable=1,width=580,height=450' );
				return false;
			});
</script>
<script type="text/javascript">
// <![CDATA[
(function() {
try{
  if ( window.external &&'msIsSiteMode' in window.external) {
    if (window.external.msIsSiteMode()) {
      var jl = document.createElement('script');
      jl.type='text/javascript';
      jl.async=true;
      jl.src='/wp-content/plugins/ie-sitemode/custom-jumplist.php';
      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(jl, s);
    }
  }
}catch(e){}
})();
// ]]>
</script>		<iframe src="./microcontrolere.wordpress_files/master.html" scrolling="no" id="likes-master" name="likes-master" style="display:none;"></iframe>
		<div id="likes-other-gravatars"><div class="likes-text"><span>%d</span> bloggers like this:</div><ul class="wpl-avatars sd-like-gravatars"></ul></div>
<script src="./microcontrolere.wordpress_files/w.js.tải xuống" type="text/javascript" async="" defer=""></script>
<script type="text/javascript">
_tkq = window._tkq || [];
_stq = window._stq || [];
_tkq.push(['storeContext', {'blog_id':'64402984','blog_tz':'2','user_lang':'en','blog_lang':'en','user_id':'0'}]);
_stq.push(['view', {'blog':'64402984','v':'wpcom','tz':'2','user_id':'0','post':'662','subd':'microcontrolere'}]);
_stq.push(['extra', {'crypt':'UE40eW5QN0p8M2Y/RE0/bU8yQkx3RTR3RmZTSndoTltKYUtEYz9mTHN3MlJ2cWh3ZmwzZGYubUxraS83bFJ8by9SUXlTXWIrWEkxPVl5dG5KUVJXZlFEZ1A2XU1HbmNrJjI3eC8mXUV8bHNKNXx1VEZ3WjNDcSU1UkhyTlUrYTgmbGdBN2tGM2slNHx1JkduQzRuRz0uODBFLCxEdEhzall1b042YVlxX1YmNkVvaVJPaEJOP2tXM1dqan5hUk8sUzlMdl8wZ0JyZmRDRURFWjNXM28mU3hYLG4rZXklUlAwYkMycXwrZEhuTnF0MXhGSCV3fnNjRCZ5cWFfMWRxLmc0WVFTeElNcF9hLENENXlPXUR1aml1ZU9waHZ2a1lFX2RdeWZNaEFdOCYzT0NkUCZJWg=='}]);
_stq.push([ 'clickTrackerInit', '64402984', '662' ]);
	</script>
<noscript><img src="https://pixel.wp.com/b.gif?v=noscript" style="height:0px;width:0px;overflow:hidden" alt="" /></noscript>
<script>
if ( 'object' === typeof wpcom_mobile_user_agent_info ) {

	wpcom_mobile_user_agent_info.init();
	var mobileStatsQueryString = "";
	
	if( false !== wpcom_mobile_user_agent_info.matchedPlatformName )
		mobileStatsQueryString += "&x_" + 'mobile_platforms' + '=' + wpcom_mobile_user_agent_info.matchedPlatformName;
	
	if( false !== wpcom_mobile_user_agent_info.matchedUserAgentName )
		mobileStatsQueryString += "&x_" + 'mobile_devices' + '=' + wpcom_mobile_user_agent_info.matchedUserAgentName;
	
	if( wpcom_mobile_user_agent_info.isIPad() )
		mobileStatsQueryString += "&x_" + 'ipad_views' + '=' + 'views';

	if( "" != mobileStatsQueryString ) {
		new Image().src = document.location.protocol + '//pixel.wp.com/g.gif?v=wpcom-no-pv' + mobileStatsQueryString + '&baba=' + Math.random();
	}
	
}
</script>

<div id="goog-gt-tt" class="skiptranslate" dir="ltr"><div style="padding: 8px;"><div><div class="logo"><img src="./microcontrolere.wordpress_files/translate_24dp.png" width="20" height="20" alt="Google Dịch"></div></div></div><div class="top" style="padding: 8px; float: left; width: 100%;"><h1 class="title gray">Văn bản gốc</h1></div><div class="middle" style="padding: 8px;"><div class="original-text"></div></div><div class="bottom" style="padding: 8px;"><div class="activity-links"><span class="activity-link">Đóng góp bản dịch hay hơn</span><span class="activity-link"></span></div><div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"><div class="activity-root"></div></div></div><div class="status-message" style="display: none;"></div></div><img src="./microcontrolere.wordpress_files/g.gif" alt=":)" id="wpstats"><div class="goog-te-spinner-pos"><div class="goog-te-spinner-animation"><svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66"><circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle></svg></div></div></body></html>