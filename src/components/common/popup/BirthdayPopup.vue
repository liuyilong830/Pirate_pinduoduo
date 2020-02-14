<template>
  <div class="birthday_popup" v-show="value">
    <div class="content">
      <div class="content_top">
        <div class="birthday">
          <span class="item" @click="changeYear" :class="{active: statis==0}">
            <span>{{showYear}}</span>
          </span>
          <span class="item" v-show="date.year" @click="changeMD(1)" :class="{active: statis==1}">
            <span>{{showMouth}}</span>
          </span>
          <span class="item" v-show="date.mouth" @click="changeMD(2)" :class="{active: statis==2}">
            <span>{{showDay}}</span>
          </span>
        </div>
        <span class="close" @click="closePopup(date)">取消</span>
      </div>
      <ul class="date_year" v-show="statis == 0">
        <li v-for="index in getYear" :key="index" class="public" @click="yearClick(index)">
          <span>{{index}}年</span>
          <span>></span>
        </li>
      </ul>
      <ul class="date_mouth" v-show="statis == 1">
        <li v-for="index in getMouth" :key="index" class="public" @click="mouthClick(index)">
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
    props: {
      value: {
        type: Boolean,
        default: false
      }
    },
    data() {
      return {
        date: {
          year: null,
          mouth: null,
          day: null
        },
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
      getMouth() {
        var arr = []
        for(var i = 1; i<= 12; i++) {
          arr.push(i)
        }
        return arr
      },
      getDay() {
        var arr = []
        var m = this.date.mouth
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
      showMouth() {
        return this.date.mouth? this.date.mouth + '月' : '请选择'
      },
      showDay() {
        return this.date.day? this.date.day + '日' : '请选择'
      },
      getDate() {
        return {...this.date}
      }
    },
    methods: {
      closePopup(date) {
        this.statis = 0
        var obj = {
          value: !this.value,
          date
        }
        this.$emit('change',obj)
      },
      yearClick(index) {
        this.date.year = index
        this.statis = 1
        this.date.mouth = null
        this.date.day = null
      },
      mouthClick(index) {
        this.date.mouth = index
        this.statis = 2
      },
      dayClick(index) {
        this.date.day = index
        this.closePopup(this.date)
      },
      changeYear() {
        this.statis = 0
      },
      changeMD(num) {
        if(this.date.year) {
          this.statis = num
        }
      }
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