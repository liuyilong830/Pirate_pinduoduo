<template>
  <div class="signature_popup">
    <div class="content">
      <div class="content_top">
        <span>填写个性签名</span>
        <div class="close" @click="closePopup(false)">
          <i class="iconfont icon-ca"></i>
        </div>
      </div>
      <div class="signature">
        <textarea name="" class="textarea" cols="30" :value='$attrs.signature' @input="inputTextarea" rows="4" placeholder="个性签名可以让别人更想了解你哟"></textarea>
      </div>
      <div class="btn">
        <button v-if="!prevShow" disabled>保存</button>
        <button v-else class="prevBtn" @click="prevClick">保存</button>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'SignaturePopup',
    data() {
      return {
        oldVal: ''
      }
    },
    model: {
      prop: 'val1',
      event: 'click'
    },
    computed: {
      prevShow() {
        return this.$attrs.signature == "" || this.$attrs.signature == null ? false : true
      }
    },
    methods: {
      closePopup(flag) {
        if(!flag && this.$attrs.signature !== this.oldVal) {
          this.$emit('update:signature', null)
        }
        this.$emit('click', false)
      },
      inputTextarea(event) {
        this.$emit('update:signature', event.target.value)
      },
      prevClick() {
        this.$emit('confirmSign', this.$attrs.signature)
        this.closePopup(true)
      }
    },
    created() {
      this.oldVal = this.$attrs.signature
    }
  }
</script>

<style scoped>
  .signature_popup {
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
    width: 90vw;
    background-color: #fff;
    border-radius: 6px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
  }
  .content_top {
    position: relative;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    box-sizing: border-box;
    text-align: center;
  }
  .content_top span {
    font-size: 18px;
  }
  .close {
    position: absolute;
    right: -12px;
    top: -14px;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    text-align: center;
    line-height: 25px;
    background-color: #e8e8e8;
  }
  .iconfont {
    font-size: 13px;
  }
  .signature {
    box-sizing: border-box;
    padding: 0 10px;
  }
  .textarea {
    width: 100%;
    height: 100%;
    border: 1px solid #e0dada;
    border-radius: 6px;
    resize: none;
    font-size: 15px;
    line-height: 1.5;
  }
  .textarea::-webkit-input-placeholder{
    color:#ccc;
  }
  .btn {
    box-sizing: border-box;
    height: 60px;
    padding: 10px 10px;
  }
  .btn button {
    border: none;
    border-radius: 6px;
    width: 100%;
    height: 100%;
    color: #fff;
    text-align: center;
    line-height: 100%;
    font-size: 18px;
    background-color: #cccccc;
  }
  .btn .prevBtn {
    background-color: #e02e24;
  }
</style>