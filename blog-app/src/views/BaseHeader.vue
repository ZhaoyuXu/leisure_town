nn<template>
  <el-header class="me-area">

    <el-row class="me-header" >
      <el-col :span="1" class="me-header-left">
        <router-link to="/" class="me-title">
          <img src="../assets/img/LogoLT.png" />
        </router-link>
      </el-col>


      <el-col :span="3" class="me-header-left" style="color: white;font-family: garamond;font-size:27px;">
        Leisure Town
      </el-col>

      <el-col v-if="!simple" :span="11" style = "color: rgb(25, 71, 41)">
        <el-menu :router=true menu-trigger="click" active-text-color="rgb(255, 255, 255)" :default-active="activeIndex" text-color="rgb(25, 71, 41)"
        background-color="rgb(25, 71, 41)"
                 mode="horizontal">
          <el-menu-item index="/" style="font-size: 20px;color:white"" >小镇</el-menu-item>
          "<el-menu-item index="/category/all" style="font-size: 20px;color:white"">小镇文章分类</el-menu-item>
          <el-menu-item index="/tag/all" style="font-size: 20px;color:white"">小镇标签</el-menu-item>
      <!--    <el-menu-item index="/archives" style="font-size: 20px;color:white">小镇文章归档</el-menu-item>-->

          <el-col :span="3" :offset="4">
            <el-menu-item index="/write" style="font-size: 20px;color:white"><i class="el-icon-edit"></i>发文章</el-menu-item>
          </el-col>
        </el-menu>
      </el-col>


      <template v-else>
        <slot></slot>
      </template>


<el-col :span="4" style = "color: rgb(25, 71, 41)">
  <el-menu mode ="horizontal" active-text-color="rgb(25,71,41)"  background-color="rgb(25, 71, 41)" >
    <el-menu-item>
      <template>
        <el-autocomplete
          v-model="search"
          :fetch-suggestions="querySearchAsync"
          placeholder="请输入查找内容"
          @select="handleSelect"></el-autocomplete>
      </template>
    </el-menu-item>
  </el-menu>
</el-col>


      <el-col :span="5">
        <el-menu :router=true menu-trigger="click" mode="horizontal" active-text-color="rgb(255, 255, 255)"  text-color="rgb(255, 255, 255)"
        background-color="rgb(25, 71, 41)">

          <template v-if="!user.login">
            <el-menu-item index="/login">
              <el-button type="text" style="color: white;font-size: 15px;">登录</el-button>
            </el-menu-item>
            <el-menu-item index="/register">
              <el-button type="text" style="color: white;font-size: 15px;">注册</el-button>
            </el-menu-item>
          </template>

          <template v-else>
            <el-submenu index>
              <template slot="title">
                <img class="me-header-picture" :src="user.avatar"/>
              </template>
              <el-menu-item index @click="logout"><i class="el-icon-back"></i>退出登录</el-menu-item>
            </el-submenu>
          </template>
        </el-menu>
      </el-col>

    </el-row>
  </el-header>
</template>

<script>
  import {searchArticle} from "../api/article";
  export default {
    name: 'BaseHeader',
    props: {
      activeIndex: String,
      simple: {
        type: Boolean,
        default: false
      }
    },
    data() {
      return {
        search:'',
        articles:[]
      }
    },
    computed: {
      user() {
        let login = this.$store.state.account.length != 0
        let avatar = this.$store.state.avatar
        return {
          login, avatar
        }
      }
    },
    methods: {
      logout() {
        let that = this
        this.$store.dispatch('logout').then(() => {
          this.$router.push({path: '/'})
        }).catch((error) => {
          if (error !== 'error') {
            that.$message({message: error, type: 'error', showClose: true});
          }
        })
      },
      querySearchAsync(queryString, cb){
        searchArticle(this.search).then((res)=>{
          if (res.success){
            var results = [];
            for (const item of res.data){
              results.push({
                id:item.id,
                value:item.title
              });
            }
            cb(results)
          }
        })
      },
      handleSelect(item){
        this.$router.push({path: '/view/'+item.id})
      }
    }
  }
</script>

<style>

  .el-header {
    position: fixed;
    z-index: 1024;
    min-width: 100%;
    box-shadow: 0 2px 3px hsla(0, 0%, 7%, .1), 0 0 0 1px hsla(0, 0%, 7%, .1);
    background-color:  rgb(25, 71, 41);
    color:rgb(25, 71, 41);

  }

  .me-title {
    margin-top: 10px;
    font-size: 24px;
      background-color:  rgb(25, 71, 41);
      color:rgb(25, 71, 41);

  }

  .me-header-left {
    margin-top: 10px;
      background-color:  rgb(25, 71, 41);
      color:rgb(25, 71, 41);

  }

  .me-title img {
    max-height: 2.4rem;
      background-color:  rgb(25, 71, 41);
    max-width: 100%;
  }

  .me-header-picture {
    width: 46px;
    height: 46px;
    border: 1px solid #ddd;
    border-radius: 50%;
    vertical-align: middle;


  }
</style>
