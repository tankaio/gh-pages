<template>
  <div class="about">
    <h1>This is an about page</h1>
    <div class="imgs">
      <img src="../assets/logo.svg" alt="" />
    </div>
  </div>
</template>

<style scoped>
.imgs {
  img {
    width: 120px;
  }
}
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
