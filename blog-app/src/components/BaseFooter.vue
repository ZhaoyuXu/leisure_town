<template>
  <el-footer class="me-area">
    <div class="me-footer">
      <p>
        <strong>
          <router-link to="/" class="me-login-design-color">Leisure Town, Let Your Hair Down</router-link>
        </strong>
      </p>
    </div>
  </el-footer>

</template>

<script>

  export default {
    name: 'BaseFooter',
    data() {
      return {}
    },
    methods: {},
    mounted() {
    }
  }
</script>

<style>

  .el-footer {
    min-width: 100%;
    box-shadow: 0 -2px 3px hsla(0, 0%, 7%, .1), 0 0 0 1px hsla(0, 0%, 7%, .1);
    position: absolute;
    bottom: 0;
    left: 0;
    z-index: 1024;
    
  }

  .me-footer {
    text-align: center;
    line-height: 60px;
    font-family: 'garamond', sans-serif;
    font-size: 30px;
    

  }

  .me-login-design-color {
    color:  rgb(25, 71, 41) !important;
  }

</style>
