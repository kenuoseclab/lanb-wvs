<template>
  <div>
    <el-card shadow="never">
      <el-form label-width="auto" size="small" label-position="right" :inline="true">
        <el-form-item label="脚本名称" label-width="80px">
          <el-input v-model="scriptName" placeholder="请输入脚本名称"></el-input>
        </el-form-item>
      </el-form>

      <el-form label-width="auto" size="small" label-position="right">
        <el-form-item label="脚本内容" label-width="80px">
          <codemirror v-model="scriptContent" :options="cmOptions"></codemirror>
        </el-form-item>
        <el-form-item label label-width="80px">
          <el-button size="small" type="primary" @click="addScript">保 存</el-button>
          <el-button size="small" type="primary">重 置</el-button>
        </el-form-item>
      </el-form>
    </el-card>

    <!-- <el-card shadow="never">
      <span>配置脚本管理</span>

      <div class="panel__body">
        <form class="form">
          <div class="form__block">
            <label class="input-label" for="参数">参数</label>
            <input class="input" placeholder="请输入参数" />
            <label class="add-btn" @click="isModal = true">+</label>
          </div>
          <div class="form__block">
            <label class="input-label" for="头部">头部</label>
            <input class="input" placeholder="请输入头部" />
            <label class="add-btn" @click="isModal = true">+</label>
          </div>
          <div class="form__block">
            <el-button type="primary">保存</el-button>
            <el-button type="primary" @click="resetForm">重置</el-button>
          </div>
        </form>
      </div>
    </el-card>-->

    <!-- <div class="modal" v-show="isModal">
      <div class="modal__inner panel">
        <h1>编辑参数</h1>
        <form class="form modal__body">
          <div :key="index" v-for="(attr, index) in attrs" class="form__block">
            <label class="input-label" for="参数">参数</label>
            <input class="input" v-model="attr.key" placeholder="请输入参数名" />
            <input class="input" v-model="attr.value" placeholder="请输入参数值" />
            <label class="add-btn" @click="delAttr(index)">-</label>
          </div>

          <div class="form__block">
            <label class="add-btn" @click="addAttr">+</label>
          </div>
          <div class="button-group">
            <a class="button">确定</a>
            <a class="button" @click="resetAattrs">重置</a>
            <a @click="isModal = false" class="button">取消</a>
          </div>
        </form>
      </div>
      <div class="mask"></div>
    </div>-->
  </div>
</template>

<script>
import { codemirror } from 'vue-codemirror'
import 'codemirror/lib/codemirror.css'
import 'codemirror/mode/python/python.js'
import 'codemirror/theme/base16-light.css'
import dedent from 'dedent'

export default {
  name: 'scriptPage',
  data () {
    return {
      isModal: false,
      attrs: [{
        key: '',
        value: ''
      }],
      scriptName: '',
      scriptContent: dedent`
      def poc(c):
        return True
      `,

      cmOptions: {
        tabSize: 2,
        mode: 'text/x-python',
        theme: 'base16-light',
        lineNumbers: true,
        line: true
      }

    }
  },

  components: {
    codemirror
  },

  methods: {

    addScript () {
      this.$post('/api/script/save', {
        scriptName: this.scriptName,
        scriptContent: this.scriptContent,
        scriptTpye: 'python'
      }).then(data => {
        if (data.success) {
          this.$message({
            showClose: true,
            message: '保存成功',
            type: 'success'
          })
          this.isModal = false
        } else {
          this.$message({
            showClose: true,
            message: data.msg,
            type: 'error'
          })
        }
      })
    },

    addAttr () {
      this.attrs.push({
        key: '',
        value: ''
      })
    },

    resetAattrs () {
      this.attrs = [
        {
          key: '',
          value: ''
        }
      ]
    },

    delAttr (index) {
      if (this.attrs.length > 1) {
        this.attrs.splice(index, 1)
      }
    },

    resetForm () {

    }
  }
}

</script>
<style scoped>
.add-btn {
  display: inline-block;
  color: #666;
  border: 1px solid #c4c6cf;
  height: 30px;
  line-height: 30px;
  padding: 0 8px;
  cursor: pointer;
}

.add-btn:hover {
  background: rgba(0, 0, 0, 0.1);
  border-color: rgba(0, 0, 0, 0.1);
  color: #ffffff;
}

.vue-codemirror {
  font-size: 9px;
  line-height: 20px;
  border: 1px solid #dcdfe6;
}
</style>
