<template>
  <div style="display: inline-block;">
    <div class="mask" @click="show = !show" v-show="show"></div>
    <input
      type="text"
      class="input datetime__input"
      placeholder="请选择时间..."
      autocomplete="off"
      ref="datetime__input"
      readonly="readonly"
      v-model="day"
      @click="focus"
    >
    <div class="datetime" v-show="show">
      <div class="datetime__title" ref="datetime__title">
        <span><i class="iconfont icon-fanhui"></i></span>
        <div>
          <!-- <input style="width: 30px;" v-model="input.year"> -->
          {{month.year}}-{{month.month + 1}}
          <!-- <input style="width: 30px;" v-model="input.month"> -->
        </div>
        <span style="transform:rotate(180deg);"><i class="iconfont icon-fanhui"></i></span>
      </div>
      <div class="datetime__body" ref="datetime__body">
        <table class="tup-table datetime__table" ref="datetime__table">
          <thead>
            <tr>
              <th>日</th>
              <th>一</th>
              <th>二</th>
              <th>三</th>
              <th>四</th>
              <th>五</th>
              <th>六</th>
            </tr>
          </thead>
          <tbody>
            <tr :key="row.id" v-for="row in data">
              <td
                :key="col.id"
                :class="{'datetime__table--not-this-month': !isThisMonth(col._d)}"
                @mousedown="selectDay(col._d)"
                v-for="col in row"
              >{{col._d.getDate()}}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import moment from 'moment'
import Month from 'calendar-months'
var df = require('date-formatter')
export default {
  name: 'idatetime',
  props: {
    day: {
      type: String,
      default: ''
    }
  },
  data () {
    return {
      show: false,
      data: [],
      month: {},
      input: {
        year: '',
        month: ''
      }
    }
  },
  methods: {
    initData () {
      this.month = Month.create(moment())
      // this.month = Month.create('2019-7')
      this.data = this.month.calendarWeeks()
    },

    blur: function (e) {
      this.show = false
    },
    focus: function (e) {
      this.initData()
      this.show = true
      this.$nextTick(() => {
        let width = this.$refs.datetime__table.offsetWidth
        this.$refs.datetime__title.style.width = width + 'px'
      })
    },
    selectDay: function (date) {
      if (!this.isThisMonth(date)) return
      this.$emit('update:day', df(date, 'YYYY-MM-DD'))
      this.show = false
    },
    isThisMonth (date) {
      return this.month.containsDay(moment(date))
    }
  },
  created () {
    this.initData()
  }
}
</script>

<style scoped>
.mask {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background-color: rgba(0, 0, 0, 0);
  z-index: 1000;
}
.datetime {
  position: absolute;
  z-index: 1001;
  border: 1px solid #c4c6cf;
}
.datetime__input {
  transition: all 0.5s;
  cursor: pointer;
}
/* .datetime__input:hover {
  border-color: #a0a2ad;
  cursor: pointer;
}

.datetime__input:focus {
  border: 0.5px solid #3080fe;
  cursor: pointer;
} */

.datetime__title {
  text-align: center;
  font-size: 16px;
  background-color: rgb(250, 250, 250);
  padding: 16px;
  display: flex;
  justify-content: space-evenly;
}
.datetime__table td {
  text-align: center;
}
.datetime__table td:hover {
  cursor: pointer;
  background-color: rgb(250, 250, 250);
}
.datetime__table--not-this-month {
  color: #d2d2d2;
  cursor: not-allowed !important;
  background-color: #ffffff !important;
}
table.tup-table {
  font-family: verdana, arial, sans-serif;
  font-size: 11px;
  color: #333333;
  border-collapse: collapse;
  border-radius: 3px;
}
.tup-table th {
  border-width: 1px;
  padding: 8px;
  background-color: rgb(250, 250, 250);
}
.tup-table td {
  border-width: 1px;
  padding: 8px;
  background-color: #ffffff;
}

.icon-fanhui {
  padding: 8px;
  border-radius: 50%;
  font-size: 12px;
}

.icon-fanhui:hover {
  background-color: #ffffff;
  cursor: pointer;
}
</style>
