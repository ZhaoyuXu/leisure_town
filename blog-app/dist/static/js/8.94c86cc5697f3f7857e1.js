webpackJsonp([8],{"3/TF":function(t,e,r){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=r("Q6dk"),a=r("viA7"),s={name:"BlogArchive",components:{ArticleScrollPage:i.a},created:function(){this.listArchives()},watch:{$route:function(){this.$route.params.year&&this.$route.params.month&&(this.article.query.year=this.$route.params.year,this.article.query.month=this.$route.params.month)}},data:function(){return{article:{query:{month:this.$route.params.month,year:this.$route.params.year}},archives:[]}},computed:{title:function(){return this.currentArchive+" - 小镇文章 - Leisure Town"},currentArchive:function(){return this.article.query.year&&this.article.query.month?this.article.query.year+"年"+this.article.query.month+"月":"全部文章"}},methods:{changeArchive:function(t,e){this.$router.push({path:"/archives/"+t+"/"+e})},listArchives:function(){var t=this;Object(a.g)().then(function(e){t.archives=e.data}).catch(function(t){that.$message({type:"error",message:"小镇文章加载失败!",showClose:!0})})}}},c={render:function(){var t=this.$createElement,e=this._self._c||t;return e("div",{directives:[{name:"title",rawName:"v-title"}],attrs:{"data-title":this.title}},[e("el-container",[e("el-main",{staticClass:"me-articles"},[e("div",{staticClass:"me-month-title"},[this._v(this._s(this.currentArchive))]),this._v(" "),e("article-scroll-page",this._b({},"article-scroll-page",this.article,!1))],1)],1)],1)},staticRenderFns:[]};var n=r("VU/8")(s,c,!1,function(t){r("XBwc")},"data-v-76d2911d",null);e.default=n.exports},XBwc:function(t,e){}});