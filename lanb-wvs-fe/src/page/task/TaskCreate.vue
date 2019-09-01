<template>
  <div>
    <div class="row">
      <div class="col-6">
        <div class="panel" style="height:500px;">
          <h1>新建扫描任务</h1>
          <div class="panel__body">
            <form class="form">
              <div class="form__block">
                <label class="input-label" for="taskName">任务名</label>
                <input class="input" placeholder="请输入任务名" />
                <a class="edit-btn">
                  <!-- <i class="iconfont icon-addNew"></i> -->
                  生成
                </a>
              </div>
              <div class="form__block">
                <label class="input-label" for="资产列表">资产列表</label>
                <input class="input" v-model="assetIds" placeholder="请选择资产列表" />
                <a class="edit-btn" @click="isModal = true">
                  <!-- <i class="iconfont icon-addNew"></i> -->
                  选择
                </a>
              </div>
              <div class="form__block">
                <label class="input-label" for="漏洞列表">漏洞列表</label>
                <input class="input" v-model="bugIds" placeholder="请选择漏洞列表" />
                <a class="edit-btn" @click="isModalBug = true">
                  <!-- <i class="iconfont icon-addNew"></i> -->
                  选择
                </a>
              </div>
              <div class="form__block">
                <label class="input-label" for="扫描方式">扫描方式</label>
                <select class="input">
                  <option value>请选择扫描方式</option>
                  <option value="1">基础扫描</option>
                  <option value="2">组合扫描</option>
                  <option value="3">自定义扫描</option>
                </select>
              </div>
              <div class="form__block">
                <label class="input-label" for="报表模板">报表模板</label>
                <select class="input">
                  <option value>请选择报表模板</option>
                  <option value="0">基础模板</option>
                  <option value="1">自定义扫描1</option>
                  <option value="2">自定义扫描2</option>
                  <option value="3">自定义扫描3</option>
                </select>
              </div>

              <div class="form__block">
                <label class="input-label" for="desc">任务描述</label>
                <textarea style="height: 150px; width: 60%;" class="input" placeholder="请输入任务描述"></textarea>
              </div>

              <div class="form__block" style="margin-top: 32px;">
                <a class="button" @click="createTask">新建任务</a>
                <a class="button">重置</a>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="col-6">
        <div class="panel" style="height:500px;">
          <h1>扫描历史</h1>
          <div class="panel__body">
            <ul>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
              <li>【2019年8月31日】创建任务【每月巡检任务】</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- 弹出窗开始 -->
    <div class="modal">
      <transition name="bounce">
        <div v-if="isModal" class="modal__inner panel" style="width: 900px; height: 600px;">
          <h1 class="paenl__title--border">选择</h1>
          <div class="panel__body">
            <baseTable ref="assetModal" :fields="fields" baseURL="/api/asset"></baseTable>
          </div>
          <div class="button-group">
            <a class="button" @click="assetModalClick">确定</a>
            <a @click="isModal = false" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <div class="mask" v-if="isModal"></div>
    <!-- 弹出框结束 -->

    <!-- 弹出窗开始 -->
    <div class="modal">
      <transition name="bounce">
        <div v-if="isModalBug" class="modal__inner panel" style="width: 900px; height: 600px;">
          <h1 class="paenl__title--border">选择</h1>
          <div class="panel__body">
            <baseTable ref="bugModal" :fields="bugFileds" baseURL="/api/bug"></baseTable>
          </div>
          <div class="button-group">
            <a class="button" @click="bugModalClick">确定</a>
            <a @click="isModalBug = false" class="button">取消</a>
          </div>
        </div>
      </transition>
    </div>
    <div class="mask" v-if="isModalBug"></div>
    <!-- 弹出框结束 -->
  </div>
</template>

<script>
import router from '@/router'
export default {
  name: 'taskCreate',
  data () {
    return {

      assetIds: '',

      bugIds: '',

      isModal: false,

      isModalBug: false,

      fields: [
        {
          field: 'assetId',
          name: '资产ID',
          hidden: true
        },
        {
          field: 'assetName',
          name: '资产名称'
        },
        {
          field: 'updateTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserId',
          name: '创建人'
        },
        {
          field: 'createTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'updateUserId',
          name: '更新人'
        },
        {
          field: 'remark',
          name: '备注'
        }
      ],

      bugFileds: [
        {
          field: 'bugId',
          name: '漏洞ID',
          hidden: true
        },
        {
          field: 'bugName',
          name: '漏洞名'
        },
        {
          field: 'desc',
          name: '漏洞描述',
          type: 'textarea'
        },
        {
          field: 'createTime',
          name: '创建时间',
          type: 'date'
        },
        {
          field: 'createUserName',
          name: '创建人'
        },
        {
          field: 'updateTime',
          name: '更新时间',
          type: 'date'
        },
        {
          field: 'updateUserName',
          name: '更新人'
        },
        {
          field: 'remark',
          name: '备注',
          type: 'textarea'
        }
      ]

    }
  },

  methods: {
    createTask () {
      router.push({
        path: '/task/task-table'
      })
    },

    assetModalClick () {
      const assetModal = this.$refs.assetModal
      const selectedRowArr = assetModal.getSelectedRows()
      const resultArr = []
      for (let i = 0; i < selectedRowArr.length; i++) {
        resultArr.push(selectedRowArr[i].assetId)
      }
      this.assetIds = resultArr.join(',')
      this.isModal = false
    },

    bugModalClick () {
      const bugModal = this.$refs.bugModal
      const selectedRowArr = bugModal.getSelectedRows()
      const resultArr = []
      for (let i = 0; i < selectedRowArr.length; i++) {
        resultArr.push(selectedRowArr[i].bugId)
      }
      this.bugIds = resultArr.join(',')
      this.isModalBug = false
    }
  }
}
</script>

<style lang="scss" scoped>
.edit-btn {
  display: inline-block;
  margin-left: 8px;
  color: #3080fe;
  cursor: pointer;

  &:hover {
    text-decoration: underline;
  }

  i {
    font-size: 9pt;
  }
}
</style>
