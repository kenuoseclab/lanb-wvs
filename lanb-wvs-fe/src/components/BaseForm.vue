<template>
  <el-card shadow="never" style="margin-bottom: 16px;">
    <div slot="header">
      <span>{{ title }}</span>
    </div>

    <el-col :span="12">
      <el-form label-width="auto" size="medium" label-position="right">
        <el-form-item
          v-for="(field, index) in fields"
          :key="index"
          :label="field.name"
          label-width="80px"
        >
          <el-input v-model="data[field.field]" :placeholder="'请输入' + field.name"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="submit">保存</el-button>
        </el-form-item>
      </el-form>
    </el-col>
  </el-card>
</template>

<script>
export default {
  name: 'baseForm',

  props: {

    fields: {
      default: function () {
        return []
      },
      type: Array
    },

    data: {
      default: function () {
        return {}
      },
      type: Object
    },

    title: {
      default: '基础表单',
      type: String
    },

    submit: {
      default: function () { },
      type: Function
    }
  },

  data () {
    return {
    }
  }
}
</script>

<style scoped>
</style>
