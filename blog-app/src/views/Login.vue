<template>

  <div id="login" v-title data-title="login --Leisure Town">
    <!--<video preload="auto" class="me-video-player" autoplay="autoplay" loop="loop">
          <source src="../../static/vedio/sea.mp4" type="video/mp4">
      </video>-->
      <div class = "loginbg">
        <el-container>
                   <el-header style=" font-size: 27px; padding-left: 20px;font-family:garamond ;">
                      Leisure Town
                   </el-header>
               </el-container>
               <div style="padding: 30px;"></div>
        <img src = "../assets/1.jpg" >
      </div>

         <div class="me-login-box me-login-box-radius" style="margin-top: 240px;">
           <h1 style="font-family: fantasy;color:whitesmoke">登录</h1>
           <el-form ref="userForm" :model="userForm" :rules="rules">
             <el-form-item prop="account">
               <el-input placeholder="请输入用户名" v-model="userForm.account"></el-input>
             </el-form-item>

             <el-form-item prop="password">
               <el-input placeholder="请输入密码" type="password" v-model="userForm.password"></el-input>
             </el-form-item>

             <el-form-item size="small" class="me-login-button">
              <el-button type="warning"  style = " padding-left:25px;padding-right: 25px;font-size:15px;margin-top: 10px;
          font-family: fantasy"
               @click.native.prevent="login('userForm')">登录</el-button>
             </el-form-item>
           </el-form>
         </div>
  </div>
</template>

<script>
  export default {
    name: 'Login',
    data() {
      return {

        userForm: {
          account: '',
          password: ''
        },
        rules: {
          account: [
            {required: true, message: '请输入用户名', trigger: 'blur'},
            {max: 10, message: '不能大于10个字符', trigger: 'blur'}
          ],
          password: [
            {required: true, message: '请输入密码', trigger: 'blur'},
            {max: 10, message: '不能大于10个字符', trigger: 'blur'}
          ]
        }
      }
    },
    methods: {
      login(formName) {
        let that = this
        this.$refs[formName].validate((valid) => {
          if (valid) {

            that.$store.dispatch('login', that.userForm).then(() => {
                that.$router.go(-1)
            }).catch((error) => {
              if (error !== 'error') {
                that.$message({type: 'error', message: '用户或密码不存在', showClose: true});
              }
            })
          } else {
            return false;
          }
        });
      }
    }
  }
</script>

<style scoped>

  #login {
    min-width: 100%;
    min-height: 100%;
  }
  .loginbg{
    width: 100%;
    height: 752px;
    overflow: hidden;
    position:absolute;
    top:0;
    z-index:0;
  }
  .loginbg img{
    width: 100%;
    height: 100%;
  }
  .me-video-player {
    background-color: transparent;
    width: 100%;
    height: 100%;
    object-fit: fill;
    display: block;
    position: absolute;
    left: 0;
    z-index: 0;
    top: 0;
  }

  .me-login-box {
    position: absolute;
    width: 300px;
    height: 260px;
    background-color: white;
    margin-top: 150px;
    margin-left: -180px;
    left: 50%;
    padding: 30px;
    background-image: url("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.pptbz.com%2Fpptpic%2FUploadFiles_6909%2F201208%2F2012080607154866.jpg&refer=http%3A%2F%2Fwww.pptbz.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650191634&t=efd9c3b613ae2e43e76e89262bfd417d")
  }

  .me-login-box-radius {
    border-radius: 10px;
    box-shadow: 0px 0px 1px 1px rgba(161, 159, 159, 0.1);
  }

  .me-login-box h1 {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
    vertical-align: middle;
  }

  .me-login-design {
    text-align: center;
    font-family: 'Open Sans', sans-serif;
    font-size: 18px;
  }

  .me-login-design-color {
    color: #5FB878 !important;
  }

  .me-login-button {
    text-align: center;
  }

  .me-login-button button {
    width: 100%;
  }
  .el-header,
    .el-footer {
        background-color: rgb(25, 71, 41);
        color: white;
        text-align: left;
        line-height: 60px;
    }

    .el-aside {
        background-color: rgb(252, 247, 247);
        color: whitesmoke;
        text-align: center;
        line-height: 5px;
    }
    .el-container {
        margin-bottom: 40px;
    }

    .el-container:nth-child(5) .el-aside,
    .el-container:nth-child(6) .el-aside {
        line-height: 260px;
    }

    .el-container:nth-child(7) .el-aside {
        line-height: 320px;
    }

    .nav {
        color: white;
        font-size: 30px;
        text-decoration: none;

    }

    .nav:hover {
        background-color: darkgreen;
    }

    .el-carousel__item h3 {
        color: #475669;
        font-size: 14px;
        opacity: 0.75;
        line-height: 200px;
        margin: 0;
    }

    .el-carousel__item:nth-child(2n) {
        background-color: #bdb0ab;
    }

    .el-carousel__item:nth-child(2n+1) {
        background-color: #bdb0ab;
    }

    .text {
        font-size: 17px;
    }

    .box-card {
        width: 776px;
    }

    .el-card__body {
        padding: 13px;
    }


</style>
