webpackJsonp([7],{"8wPo":function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var r=a("Q6dk"),s=a("viA7"),c=a("iNxE"),i=a("s8Ph"),n=a("smlD"),o=a.n(n),l={name:"BlogCategoryTag",created:function(){this.getCategoryOrTagAndArticles()},watch:{$route:"getCategoryOrTagAndArticles"},data:function(){return{defaultAvatar:o.a,ct:{},article:{query:{tagId:"",categoryId:""}}}},computed:{title:function(){return"tag"===this.$route.params.type?this.ct.tagName+" - 小镇标签 - Leisure Town":this.ct.categoryName+" - 小镇文章分类 - Leisure Town"}},methods:{getCategoryOrTagAndArticles:function(){var t=this.$route.params.id;"tag"===this.$route.params.type?(this.getTagDetail(t),this.article.query.tagId=t):(this.getCategoryDetail(t),this.article.query.categoryId=t)},getCategoryDetail:function(t){var e=this;Object(i.c)(t).then(function(t){e.ct=t.data}).catch(function(t){"error"!==t&&e.$message({type:"error",message:"小镇文章分类加载失败",showClose:!0})})},getTagDetail:function(t){var e=this;Object(c.d)(t).then(function(t){e.ct=t.data}).catch(function(t){"error"!==t&&e.$message({type:"error",message:"小镇标签加载失败",showClose:!0})})},getArticlesByCategory:function(t){var e=this;Object(s.c)(t).then(function(t){e.articles=t.data}).catch(function(t){"error"!==t&&e.$message({type:"error",message:"小镇文章加载失败",showClose:!0})})},getArticlesByTag:function(t){var e=this;Object(s.d)(t).then(function(t){e.articles=t.data}).catch(function(t){"error"!==t&&e.$message({type:"error",message:"小镇文章加载失败",showClose:!0})})}},components:{ArticleScrollPage:r.a}},g={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{directives:[{name:"title",rawName:"v-title"}],staticClass:"me-ct-body",attrs:{"data-title":t.title}},[a("el-container",{staticClass:"me-ct-container"},[a("el-main",[a("div",{staticClass:"me-ct-title me-area"},["tag"===this.$route.params.type?[a("img",{staticClass:"me-ct-picture",attrs:{src:t.ct.avatar?t.ct.avatar:t.defaultAvatar}}),t._v(" "),a("h3",{staticClass:"me-ct-name"},[t._v(t._s(t.ct.tagName))])]:[a("img",{staticClass:"me-ct-picture",attrs:{src:t.ct.avatar?t.ct.avatar:t.defaultAvatar}}),t._v(" "),a("h3",{staticClass:"me-ct-name"},[t._v(t._s(t.ct.categoryName))]),t._v(" "),a("p",[t._v(t._s(t.ct.description))])],t._v(" "),a("span",{staticClass:"me-ct-meta",staticStyle:{"font-size":"28px"}},[t._v(t._s(t.ct.articles)+" 分类文章")])],2),t._v(" "),a("div",{staticClass:"me-ct-articles"},[a("article-scroll-page",t._b({},"article-scroll-page",t.article,!1))],1)])],1)],1)},staticRenderFns:[]};var u=a("VU/8")(l,g,!1,function(t){a("Eno8")},null,null);e.default=u.exports},Eno8:function(t,e){}});