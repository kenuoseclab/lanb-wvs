<template>
  <div class="login" tabindex="1" @keyup.enter="login">
    <form class="panel login__form">
      <!-- <h1 class="login__title">LOGIN</h1> -->

      <i class="iconfont icon-saomiao"></i>

      <p>登录到您的主页</p>

      <div class="login__inner">
        <div class="form__block">
          <input
            type="text"
            v-model="user.userName"
            class="input"
            placeholder="用户名"
          >
        </div>

        <div class="form__block">
          <input
            type="password"
            v-model="user.password"
            class="input"
            placeholder="密码"
          >
        </div>

        <div class="btn-group">
          <a class="button" @click="login">登录</a>
          <a class="button" @click="reset">重置</a>
        </div>
      </div>
    </form>

    <!-- <div class="login__bottom"></div> -->

    <p style="z-index: 10001; color: #fff; margin-top: 35px;">
      基于
      <a style="color: #fff" href="https://github.com/lanb-code/">LANB WEB</a>
      框架开发
    </p>

    <transition name="fade">
      <div class="dialog" v-show="isDialog">
        <div class="dialog__inner">
          <h1>提示</h1>
          <div class="dialog__body">{{ msg }}</div>
          <div class="button-group">
            <a @click="isDialog = false" class="button">确定</a>
          </div>
        </div>
      </div>
    </transition>
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
      isDialog: false,
      msg: '操作成功'
    }
  },

  methods: {
    login () {
      const param = {
        userName: this.user.userName,
        password: md5(this.user.password)
      }
      this.$post('/api/user/loginCheck', param).then(data => {
        if (data.success) {
          // 设置登陆状态
          this.$store.commit('SET_IS_LOGIN', true)
          // 设置代码信息
          this.$post('/api/codeInfo/getCodeInfoMap', {}).then(data => {
            this.$store.commit('SET_CODE_INFO', data.data)
            this.$router.push({ path: '/' })
          })
        } else {
          alert(data.msg)
        }
      }).catch(error => {
        this.msg = '操作失败'
        this.isDialog = true
        console.log(error)
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

<style scoped>
.login {
  /* background: #f5f5f5; */
  /* background: #1183fb linear-gradient(-90deg, #0a48d1 0, #1183fb 100%); */
  background: #4398e0 linear-gradient(-90deg, #4398e0 0, #64aae8 100%);
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.login .iconfont {
  display: inline-block;
  padding: 10px;
  margin-bottom: 16px;
  font-size: 30px !important;
  border-radius: 50%;

  color: #64aae8;

  /* background-color: #58A5E5;
  color: #ffffff; */

  /* color: #58A5E5; */
  border-bottom: 3px solid;
  border-left: 2px solid;
}

/* .login .iconfont:hover {
  background-color: #58A5E5;
  color: #ffffff;
} */

.login__form {
  text-align: center;
  /* padding-top: 50px;
  padding-bottom: 50px; */
  /* padding-left: 30px;
  padding-right: 30px; */
  width: 400px;
  /* border: 1px solid #dcdee2; */
  /* border-radius: 5px; */
  box-shadow: 1px 1px 10px rgba(0, 21, 41, 0.08);
  margin-bottom: 0px !important;
  z-index: 10002;
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
  /* background: #4398e0 linear-gradient(-90deg, #4398e0 0, #64aae8 100%); */
  box-shadow: 0 1px 10px rgba(0, 21, 41, 0.08);
  width: 440px;
  height: 200px;
  z-index: 10001;
}

.form__block {
  margin-top: 16px;
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
