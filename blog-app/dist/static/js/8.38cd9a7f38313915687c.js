webpackJsonp([8],{"4fko":function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n=a("smlD"),i=a.n(n),s=(a("s8Ph"),a("iNxE")),c={name:"BlogAllCategoryTag",created:function(){this.getCategorys(),this.getTags()},data:function(){return{defaultAvatar:i.a,categorys:[],tags:[],currentActiveName:"category"}},computed:{activeName:{get:function(){return this.currentActiveName=this.$route.params.type},set:function(t){this.currentActiveName=t}},categoryTagTitle:function(){return"category"==this.currentActiveName?"文章分类 - Leisure Town":(console.info("dddd"),"小镇标签 - Leisure Town")}},methods:{view:function(t){this.$router.push({path:"/"+this.currentActiveName+"/"+t})},getTags:function(){var t=this;Object(s.b)().then(function(e){t.tags=e.data}).catch(function(e){"error"!==e&&t.$message({type:"error",message:"小镇标签加载失败",showClose:!0})})}},beforeRouteEnter:function(t,e,a){window.document.body.style.backgroundColor="#fff",a()},beforeRouteLeave:function(t,e,a){window.document.body.style.backgroundColor="#f5f5f5",a()}},r={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{directives:[{name:"title",rawName:"v-title"}],staticClass:"me-allct-body",attrs:{"data-title":t.categoryTagTitle}},[a("el-container",{staticClass:"me-allct-container"},[a("el-main",[a("div",{staticStyle:{padding:"14px"}}),t._v(" "),a("el-tabs",{model:{value:t.activeName,callback:function(e){t.activeName=e},expression:"activeName"}},[a("el-tab-pane",{attrs:{label:"小镇标签",name:"tag"}},[a("ul",{staticClass:"me-allct-items"},t._l(t.tags,function(e){return a("li",{key:e.id,staticClass:"me-allct-item",on:{click:function(a){return t.view(e.id)}}},[a("div",{staticClass:"me-allct-content"},[a("a",{staticClass:"me-allct-info"},[a("img",{staticClass:"me-allct-img",attrs:{src:e.avatar?e.avatar:t.defaultAvatar}}),t._v(" "),a("h4",{staticClass:"me-allct-name"},[t._v(t._s(e.tagName))])]),t._v(" "),a("div",{staticClass:"me-allct-meta"},[a("span",[t._v(t._s(e.articles)+" 小镇文章")])])])])}),0)])],1)],1)],1)],1)},staticRenderFns:[]};var l=a("VU/8")(c,r,!1,function(t){a("t6v7")},null,null);e.default=l.exports},t6v7:function(t,e){}});