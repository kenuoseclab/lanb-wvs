<template>
  <div class="login" tabindex="1" @keyup.enter="login">
    <form class="panel login__form">
      <div class="panel__body">
        <i class="iconfont icon-saomiao"></i>

        <p>登录到您的主页</p>

        <div class="login__inner">
          <div class="form__block">
            <el-input prefix-icon="el-icon-user" placeholder="请输入用户名" v-model="user.userName"></el-input>
          </div>

          <div class="form__block">
            <el-input
              prefix-icon="el-icon-lock"
              placeholder="请输入密码"
              v-model="user.password"
              show-password
            ></el-input>
          </div>

          <div class="btn-group">
            <el-button type="primary" @click="login" :loading="loading">登录</el-button>
            <el-button @click="reset">重置</el-button>
          </div>
        </div>
      </div>
    </form>

    <!-- <p style="z-index: 10001; color: #fff; margin-top: 35px;">
      基于
      <a style="color: #fff" href="https://github.com/lanb-code/">LANB WEB</a>
      框架开发
    </p> -->
  </div>
</template>

<script>
import md5 from 'md5'

export default {

  name: 'login',

  data () {
    return {
      user: {
        userName: '',
        password: ''
      },
      loading: false
    }
  },

  methods: {
    login () {
      this.loading = true
      const param = {
        userId: this.user.userName,
        password: md5(this.user.password)
      }
      this.$post('/api/user/loginCheck', param).then(data => {
        if (data.success) {
          // 设置登陆状态
          this.$store.commit('SET_IS_LOGIN', true)
          this.$store.commit('SET_USER_INFO', data.data)
          // 设置代码信息
          this.$post('/api/codeInfo/getCodeInfoMap', {}).then(data => {
            this.$store.commit('SET_CODE_INFO', data.data)
            // 延迟登录
            setTimeout(() => {
              this.loading = false
              this.$router.push({ path: '/' })
            }, 0.5 * 1000)
          })
        } else {
          this.$message.error(data.msg)
          this.loading = false
        }
      }).catch(error => {
        this.$message.error('登录超时')
        console.log(error)
        this.loading = false
      })
    },

    reset () {
      this.user = {
        userName: '',
        password: ''
      }
    }
  },

  created () {
    this.$post('/api/user/logout').then(data => {
      if (data.success) {
        this.$store.commit('SET_IS_LOGIN', false)
      }
    })
  }

}
</script>

<style lang="scss" scoped>
.login {
  background: #4398e0 linear-gradient(-90deg, #4398e0 0, #64aae8 100%);
  background-image: url(../assets/images/login_bg.jpg);
  background-repeat: no-repeat;
  background-size: 100% 100%;
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.login .icon-saomiao {
  display: inline-block;
  padding: 10px;
  margin-bottom: 16px;
  font-size: 30px !important;
  border-radius: 50%;

  color: #64aae8;

  border-bottom: 3px solid;
  border-left: 2px solid;
}

.login__form {
  text-align: center;
  width: 350px;
  border-radius: 5px;
  box-shadow: 1px 1px 10px rgba(0, 21, 41, 0.08);
  margin-bottom: 0px !important;
  z-index: 1000;
  height: 300px;
  min-height: 300px;
  overflow: hidden;

  .panel__body {
    overflow: hidden;
  }
}

.login__title {
  font-size: 35px;
}

.login__inner {
  margin: 16px;
}

.login__bottom {
  margin-top: -140px;
  font-size: 14px;
  color: #ffffff;
  box-shadow: 0 1px 10px rgba(0, 21, 41, 0.08);
  width: 440px;
  height: 200px;
  z-index: 10001;
}

.form__block {
  margin-top: 12px;
  position: relative;

  .input-icon {
    position: absolute;
    left: 40px;
    width: 35px;
    line-height: 35px;
    font-size: 16px;
    color: #d2d2d2 !important;
  }

  .input {
    padding-left: 35px;
  }
}

.btn-group {
  margin-top: 32px;
}

.login em {
  color: #bbb;
  font-size: 12px;
  font-style: normal;
}
</style>
