(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0b9035"],{"30ac":function(t,n,e){"use strict";e.r(n);e("99af");var c=e("356f"),o=e("79e1"),a="Member";n["default"]={findList:function(t,n){var e=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return Object(c["post"])("".concat(a,"/findList/").concat(t,"/").concat(n),e,!1)},deleteList:function(t){return console.log(t),t&&0===t.length?o["default"].message("请选择要删除的数据!","警告"):Object(c["post"])("".concat(a,"/deleteList"),t,!1)},findForm:function(t){return Object(c["get"])("".concat(a,"/findForm").concat(t?"/"+t:""))},saveForm:function(t){return Object(c["upload"])("".concat(a,"/saveForm"),t)},exportExcel:function(t){return Object(c["download"])("".concat(a,"/exportExcel"),t)}}}}]);
//# sourceMappingURL=chunk-2d0b9035.08c70fdb.js.map