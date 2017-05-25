var _agt = _agt || [];

function ag_all() {
    _agt.push(['_atscu', 'AG_533573_CAPJ']);
    _agt.push(['_atsdomain', 'atzuche.com']);
    (function () {
        var ag = document.createElement('script');
        ag.type = 'text/javascript';
        ag.async = true;
        ag.src = (document.location.protocol == 'https:' ? 'https' : 'http') + '://' + 't.agrantsem.com/js/ag.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ag, s);
    })();
}

function ag_getParam(paramName) {
    paramValue = "";
    isFound = false;
    if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
        arrSource = unescape(this.location.search).substring(1, this.location.search.length).split("&");
        i = 0;
        while (i < arrSource.length && !isFound) {
            if (arrSource[i].indexOf("=") > 0) {
                if (arrSource[i].split("=")[0].toLowerCase() == paramName.toLowerCase()) {
                    paramValue = arrSource[i].split("=")[1];
                    isFound = true;
                }
            }
            i++;
        }
    }
    return paramValue;
}

function ag_zhuce() {
    _agt = [];
    _agt.push(['_atscu', 'AG_533573_CAPJ']);
    _agt.push(['_atsdomain', 'atzuche.com']);
    _agt.push(['_atsev', '101']);
    _agt.push(['_atsusr', '$用户名$']);
    (function () {
        var ag = document.createElement('script');
        ag.type = 'text/javascript';
        ag.async = true;
        ag.src = (document.location.protocol == 'https:' ? 'https' : 'http') + '://' + 't.agrantsem.com/js/ag.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ag, s);
    })();
}

var ag_reg = ag_getParam("regstate");
if (ag_reg == "done") {
    ag_zhuce();
} else {
    ag_all();
}
