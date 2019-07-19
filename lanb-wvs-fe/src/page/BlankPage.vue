<template>
  <div class="panel" style="height: 500px;">
    <div class="info">
      404 NOT FOUND
      <p>
        <router-link style="margin-top: 16px;" class="button" to="/">返回主页</router-link>
      </p>
    </div>
  </div>
</template>

<script>
export default {

  name: 'blankPage',

  data () {
    return {

    }
  },
  components: {

  }
}
</script>

<style scoped>
.panel {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
}

.info {
  font-size: 45px;
  width: 100%;
}
</style>
