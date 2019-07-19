<template>
  <div class="panel" style="height: 500px;">
    <div class="info">
      404 NOT FOUND
      <p>
        <a style="margin-top: 16px;" class="button" @click="$router.go(-1)">返回上一页</a>
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
