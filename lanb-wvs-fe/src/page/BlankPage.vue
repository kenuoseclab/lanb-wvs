<template>
  <div class="panel" style="height: 90%;">
    <div class="info">404 NOT FOUND</div>
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
