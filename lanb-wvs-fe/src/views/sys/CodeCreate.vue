<template>
  <div class="row">
    <div class="col-6">
      <div class="panel" style="height: 100%;">
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
          </form>
        </div>
        <div class="button-group">
          <el-button type="primary" @click="create" size="small">生成</el-button>
        </div>
      </div>
    </div>

    <div class="col-6">
      <div class="panel" style="height: 100%;">
        <h1>代码生成历史</h1>
        <div class="panel__body">
          <ul class="list">
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
            <li>【2019年8月31日】生成包名【com.colodoo.manager.test】表名【test】</li>
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
