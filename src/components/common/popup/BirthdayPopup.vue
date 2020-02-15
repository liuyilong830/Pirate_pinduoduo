<template>
  <div class="birthday_popup">
    <div class="content">
      <div class="content_top">
        <div class="birthday">
          <span class="item" @click="changeYear" :class="{active: statis==0}">
            <span>{{showYear}}</span>
          </span>
          <span class="item" v-show="date.year" @click="changeMD(1)" :class="{active: statis==1}">
            <span>{{showMonth}}</span>
          </span>
          <span class="item" v-show="date.month" @click="changeMD(2)" :class="{active: statis==2}">
            <span>{{showDay}}</span>
          </span>
        </div>
        <span class="close" @click="closePopup">取消</span>
      </div>
      <ul class="date_year" v-show="statis == 0">
        <li v-for="index in getYear" :key="index" class="public" @click="yearClick(index)">
          <span>{{index}}年</span>
          <span>></span>
        </li>
      </ul>
      <ul class="date_mouth" v-show="statis == 1">
        <li v-for="index in getMonth" :key="index" class="public" @click="monthClick(index)">
          <span>{{index}}月</span>
          <span>></span>
        </li>
      </ul>
      <ul class="date_day" v-show="statis == 2">
        <li v-for="index in getDay" :key="index" class="public" @click="dayClick(index)">
          <span>{{index}}日</span>
          <span>></span>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'BirthdayPopup',
    model: {
      prop: 'val1',
      event: 'click'
    },
    data() {
      return {
        date: {
          year: null,
          month: null,
          day: null
        },
        dd: {},
        statis: 0 // 0 => 年；1 => 月；2 => 日
      }
    },
    computed: {
      getYear() {
        var arr = []
        for(var i = 1900; i<= 2020; i++) {
          arr.push(i)
        }
        return arr
      },
      getMonth() {
        var arr = []
        for(var i = 1; i<= 12; i++) {
          arr.push(i)
        }
        return arr
      },
      getDay() {
        var arr = []
        var m = this.date.month
        var y = this.date.year
        if(m==1 || m==3 || m==5 || m==7 || m==8 || m==10 ||m==12) {
          for(var i = 1; i<= 31; i++) {
            arr.push(i)
          }
        } else if(m==4 || m==6 || m==9 || m==11) {
          for(var i = 1; i<= 30; i++) {
            arr.push(i)
          }
        } else if(((y%4 == 0 && y%100 !== 0) || (y%400 == 0)) && m == 2) {
          for(var i = 1; i<= 29; i++) {
            arr.push(i)
          }
        } else {
          for(var i = 1; i<= 28; i++) {
            arr.push(i)
          }
        }
        return arr
      },
      showYear() {
        return this.date.year? this.date.year + '年' : '请选择'
      },
      showMonth() {
        return this.date.month? this.date.month + '月' : '请选择'
      },
      showDay() {
        return this.date.day? this.date.day + '日' : '请选择'
      },
      getDate() {
        return {...this.date}
      }
    },
    methods: {
      // 点击取消按钮时处理的方法
      closePopup() {
        // 该if情况说明的是如果只修改了其中一部分日期，并没有完全设置完就点取消按钮时，应该把日期设置回之前的日期
        if(!this.date.day) {
          this.$emit('update:year', this.dd.year)
          this.$emit('update:month', this.dd.month)
        }
        // 关闭组件，与v-model属性对应
        this.$emit('click',false)
      },
      // 点击年份的时候，将点击的年份设置为需要显示的年份，并且将状态设置为1，切换成月份展示
      yearClick(index) {
        this.date.year = index
        this.statis = 1
        this.date.month = null
        this.date.day = null
        // 动态绑定父子组件的 date.year的值
        this.$emit('update:year', this.date.year)
      },
      // 点击月份的时候，将点击的月份设置为需要显示的月份，并且将状态设置为2，切换成日的展示
      monthClick(index) {
        this.date.month = index
        this.statis = 2
        this.date.day = null
        // 动态绑定父子组件的 date.month的值
        this.$emit('update:month', this.date.month)
      },
      // 点击日的时候即为默认保存日期，则需要调用关闭组件的函数，同时需要将日设置为需要的日
      dayClick(index) {
        this.date.day = index
        // 并动态设置父子组件的 date.day的值
        this.$emit('update:day', this.date.day)
        // 用于父组件中保存日期之后的回调函数
        this.$emit('confirm',this.date)
        this.closePopup()
      },
      // 当用户修改了年份之后发现需要重新设置年份的时候需要手动点击年份区域
      changeYear() {
        this.statis = 0
      },
      changeMD(num) {
        if(this.date.year) {
          this.statis = num
        }
      }
    },
    mounted() {
      this.date.year = this.dd.year = this.$attrs.year
      this.date.month = this.dd.month  = this.$attrs.month
      this.date.day = this.$attrs.day
    }
  }
</script>

<style scoped>
  .birthday_popup {
    width: 100vw;
    height: 100vh;
    background-color: rgba(0, 0, 0, .74);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 999;
  }
  .content {
    width: 100vw;
    height: 390px;
    background-color: #fff;
    position: absolute;
    bottom: 0;
  }
  .content_top {
    display: flex;
    height: 40px;
    justify-content: space-between;
    align-items: center;
    padding: 0 10px;
    box-sizing: border-box;
    box-shadow: 0 1px 3px #ccc;
  }
  .content_top span {
    font-size: 16px;
  }
  .close {
    color: #9c9c9c;
  }
  .date_year, .date_mouth, .date_day {
    height: 350px;
    overflow: auto;
  }
  .public {
    border-bottom: 1px solid #f1eded;
    height: 50px;
    display: flex;
    justify-content: space-between;
    box-sizing: border-box;
    padding: 0 10px;
    align-items: center;
  }
  .public span {
    font-size: 12px;
  }
  .active {
    border-bottom: 2px solid red;
  }
</style>