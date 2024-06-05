var versionNum = navigator.appVersion.substring(0,1)
var platform = navigator.appVersion.indexOf('W')
var app = navigator.appName.substring(0,1)

//browser testing
if (platform > 1) { if (app == 'N') { if (parseInt(versionNum) < 4) { browser = 'NS3PC' } else { browser = 'NS4PC' } } else { if (parseInt(versionNum) < 4) { browser = 'IE3PC' } else { browser = 'IE4PC' } } } else { if (app == 'N') { if (parseInt(versionNum) < 4) { browser = 'NS3MAC' } else { browser = 'NS4MAC' } } else { if (parseInt(versionNum) < 4) { browser = 'IE3MAC' } else { browser = 'IE4MAC' } } }

//cookie
function setCookie () {
	var path = parent.location.href.toLowerCase();
	if ((path.indexOf('Synergy') == -1) || (parent.frames.length != 3)) {
		top.location.href = 'http://www.Synergy-us.com/';
	} else {
		milanoObj.load();
		milanoObj.mainPath = page;
		alert(milanoObj.mainPath);
		milanoObj.store();
		milanoObj.load();
	}
}

//function resizeHandler() {
//	if (browser == 'NS4PC' || browser == 'NS4MAC') {
//		if (innerWidth != origWidth || innerHeight != origHeight) {
//			origWidth = innerWidth;
//	        origHeight = innerHeight;
//			window.location.reload();
//		}	
//	} else {
//		eraseCurve();
//		mhframe.location.reload();
//		setTimeout('delayCurve()',500);
//	}
//}

function Cookie(document, name, hours, path, domain, secure) {
	this.$document = document;
	this.$name = name;
	if (hours)
		this.$expiration = new Date((new Date()).getTime() + hours*3600000);
	else this.$expiration = null;
	if (path) this.$path = path; else this.$path = null;
	if (domain) this.$domain = domain; else this.$domain = null;
	if (secure) this.$secure = true; else this.$secure = false;
}

function _Cookie_store() {
	var cookieval = "";
	for(var prop in this) {
		if ((prop.charAt(0) == '$') || ((typeof this[prop]) == 'function'))
			continue;
		if (cookieval != "") cookieval += '&';
		cookieval += prop + ':' + escape(this[prop]);
	}
	var cookie = this.$name + '=' + cookieval;
	if (this.$expiration)
		cookie += '; expires=' + this.$expiration.toGMTString();
	if (this.$path) cookie += '; path=' + this.$path;
	if (this.$domain) cookie += '; domain=' + this.$domain;
	if (this.$secure) cookie +=  '; secure';
	alert('setting cookie');
	this.$document.cookie = cookie;
}

function _Cookie_load() {
	var allcookies = this.$document.cookie;
	if (allcookies == "") return false;
	var start = allcookies.indexOf(this.$name + '=');
	if (start == -1) return false;
	start += this.$name.length + 1;
	var end = allcookies.indexOf(';', start);
	if (end == -1) end = allcookies.length;
	var cookieval = allcookies.substring(start, end);
	var a = cookieval.split('&');
	for (var i=0; i < a.length; i++)
		a[i] = a[i].split(':');
	for (var i = 0; i < a.length; i++) {
		this[a[i][0]] = unescape(a[i][1]);
	}
	return true;
}

function _Cookie_remove() {
	var cookie;
	cookie = this.$name + '=';
	if (this.$path) cookie += '; path' + this.$path;
	if (this.$domain) cookie += '; domain=' + this.$domain;
	cookie += '; expires=Fri, 02-Jan-1970 00:00:00 GMT';
	this.$document.cookie = cookie;
}

new Cookie();
Cookie.prototype.store = _Cookie_store;
Cookie.prototype.load = _Cookie_load;
Cookie.prototype.remove = _Cookie_remove;
var milanoObj = new Cookie(document, "milano",null,"/");