(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0d678c"],{7360:function(t,n,e){"use strict";e.r(n);e("09f6");var c=e("356f"),o=e("79e1"),u="admin/SysMenu";n["default"]={getMenus:function(){return Object(c["get"])("".concat(u,"/getMenus"))},findList:function(t,n){var e=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return Object(c["post"])("".concat(u,"/findList/").concat(t,"/").concat(n),e,!1)},deleteList:function(t){return console.log(t),t&&0===t.length?o["default"].message("请选择要删除的数据!","警告"):Object(c["post"])("".concat(u,"/deleteList"),t,!1)},findForm:function(t){return Object(c["get"])("".concat(u,"/findForm").concat(t?"/"+t:""))},saveForm:function(t){return Object(c["post"])("".concat(u,"/saveForm"),t)},getMenusFunctionTree:function(){return Object(c["get"])("".concat(u,"/getMenusFunctionTree"))}}}}]);
//# sourceMappingURL=chunk-2d0d678c.c87a68f8.js.map