<template>
  <div>
    <div class="panel">
      <h1>配置脚本管理</h1>

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
          <!-- <div class="form__block">
            <label class="input-label" for="自定义脚本">自定义脚本</label>
            <textarea placeholder="请输入自定义脚本" rows="5" style="resize:none; width: 30%; padding: 8px;"></textarea>
          </div>-->
          <div class="form__block">
            <a class="button">保存</a>
            <a class="button" @click="resetForm">重置</a>
          </div>
        </form>
      </div>
    </div>

    <div class="modal" v-show="isModal">
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
    </div>

    <div class="panel">
      <h1>自定义脚本代码</h1>

      <div class="panel__body">
        <form class="form">
          <div class="form__block">
            <label class="input-label" for="脚本名称">脚本名称</label>
            <input class="input" placeholder="请输入脚本名称" />
          </div>
          <div class="form__block">
            <label style="margin-bottom: 16px;" class="input-label" for="脚本内容">脚本内容</label>
            <textarea
              style="width: 80%; height: 300px;"
              class="input"
              v-model="scriptContent"
              placeholder="请输入脚本内容..."
            ></textarea>
          </div>
          <div class="form__block">
            <a class="button">保存</a>
            <a class="button">重置</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'scriptPage',
  data () {
    return {
      isModal: false,
      attrs: [{
        key: '',
        value: ''
      }],
      scriptContent: ''
    }
  },

  methods: {
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
</style>
