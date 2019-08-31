<template>
  <div class="row">
    <div class="col-6">
      <div class="panel">
        <h1>代码生成管理</h1>
        <div class="panel__body">
          <form class="form">
            <div class="form__block">
              <label class="input-label" for="packageName">包名</label>
              <input
                class="input"
                v-model="form.packageName"
                name="packageName"
                placeholder="请输入包名"
              />
            </div>
            <div class="form__block">
              <label class="input-label" for="数据表名">数据表名</label>
              <input class="input" v-model="form.tableName" name="tableName" placeholder="请输入数据表名" />
            </div>
            <div class="form__block">
              <a class="button" @click="create">生成</a>
              <a class="button">重置</a>
            </div>
          </form>
        </div>
      </div>
    </div>

    <div class="col-6">
      <div class="panel">
        <h1>代码生成历史</h1>
        <div class="panel__body">
          <ul>
            <li>测试</li>
            <li>测试</li>
            <li>测试</li>
            <li>测试</li>
          </ul>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
export default {
  name: 'codeCreateTable',
  data () {
    return {
      form: {
        packageName: 'com.colodoo.manager.test',
        tableName: 'test'
      }
    }
  },

  methods: {
    create () {
      this.$post('/api/creater/createAllString', this.form).then(data => {
        alert(data.msg)
      }).catch(error => {
        alert(error)
      })
    }
  }
}
</script>

<style scoped>
</style>
