<template>
  <div class="login">
    <form class="panel login__form">
      <h1 class="login__title">LOGIN</h1>

      <div class="login__inner">
        <div class="form__block">
          <label class="input-label" for="userId">用户名:</label>
          <input type="text" v-model="user.userName" class="input" placeholder="用户名">
        </div>

        <div class="form__block">
          <label class="input-label" for="password">密码:</label>
          <input type="password" v-model="user.password" class="input" placeholder="密码">
        </div>

        <div class="btn-group"></div>
        <a class="button" @click="login">登录</a>
        <a class="button" @click="reset">重置</a>
      </div>
    </form>
  </div>
</template>

<script>
import md5 from 'md5'

export default {
  data () {
    return {
      user: {
        userName: '',
        password: ''
      }
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
          this.$store.commit('SET_IS_LOGIN', true)
          this.$router.push({ path: '/' })
        } else {
          alert(data.info)
        }
      }).catch(error => {
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
    this.$store.commit('SET_IS_LOGIN', false)
    const state = this.$store.state
    console.log(state)
    this.$post('/api/user/logout').then(data => {
      console.log(data)
    })
  }

}
</script>

<style scoped>
.login {
  background: #f5f5f5;
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.login__form {
  text-align: center;
  padding-top: 50px;
  padding-bottom: 50px;
  padding-left: 30px;
  padding-right: 30px;
  border: 1px solid #dcdee2;
}

.login__title {
  font-size: 35px;
}

.login__inner {
  margin: 16px;
}

.form__block {
  margin-top: 16px;
}

.btn-group {
  margin-top: 16px;
}
</style>
