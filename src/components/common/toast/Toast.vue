<template>
  <div class="toast">
    {{text}}
  </div>
</template>

<script>
  export default {
    name: 'Toast',
    props: {
      text: {
        type: String,
        default: '默认文字'
      }
    }
  }
</script>

<style scoped>
  .toast {
    position: fixed;
    background-color: rgba(0, 0, 0, 0.67);
    color: #fff;
    padding: 10px;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    z-index: 999;
    text-align: center;
    border-radius: 6px;
    display: flex;
    align-items: center;
    font-size: 20px;
  }
</style>