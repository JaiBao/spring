<template>
  <q-layout view="hHh lpR fff">

    <q-header reveal class="bg-white text-black row justify-center" height-hint="98">
      <q-toolbar>
        <q-toolbar-title class="row justify-center">
            <img src="../assets/index/logo.png" class="springWater" >
        </q-toolbar-title>
      </q-toolbar>
<!--
      <q-tabs align="left" class="layoutTab"  active-color="black" indicator-color="black">
        <q-route-tab to="/" label="主頁" class="layoutTabs" />
        <q-route-tab to="/about" label="關於我們" class="layoutTabs" />
        <q-route-tab to="/page3" label="商店" class="layoutTabs" />
        <q-route-tab to="/page3" label="相關消息" class="layoutTabs" />
      </q-tabs> -->
    </q-header>

    <q-page-container>
      <router-view />
    </q-page-container>

    <q-footer class="bg-white "  >
      <q-toolbar>
        <q-toolbar-title class="bg-white text-black  footerText">

          <p>服務專線(04)737-5181</p>
            <p>service@springwater.tw</p>
          <p >Copyright © 2023水泉水生技股份有限公司著作權所有 | <router-link to="/privacy" class="custom-link">隱私權政策</router-link></p>
        </q-toolbar-title>
      </q-toolbar>
    </q-footer>

  </q-layout>
</template>

<!-- <script setup>
import { onMounted, inject } from 'vue'

onMounted(() => {
  if (process.env.MODE === 'production') {
    const gaCode = 'G-H603M7DMBT' // 請將此處替換為你的追蹤 ID
    const dataLayer = inject('dataLayer')

    const script = document.createElement('script')
    script.async = true
    script.src = `https://www.googletagmanager.com/gtag/js?id=${gaCode}`

    script.addEventListener('load', () => {
      window.dataLayer = window.dataLayer || []
      function gtag () { dataLayer.value.push(arguments) }
      gtag('js', new Date())
      gtag('config', gaCode)
    })

    document.head.appendChild(script)
  }
})
</script> -->
<style lang="scss" scoped>
.springWater{
  width: 40%;margin:3%;
  @media (min-width: 768px) {
    width: 250px;
    margin:2%;
  }
  @media (min-width: 1024px) {
    width: 250px;
    margin:1%;
  }
}

.footerText{
  // width: 80vh;
  font-size: 15px;
  // margin: 10px;
  text-align: center;
  line-height: 1.5rem;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  flex-wrap: wrap;
  p{

    white-space: pre-wrap;
    margin: 0;
  }
}

.custom-link {
  color: inherit; /* 使用父元素的顏色 */
  text-decoration: none; /* 取消下劃線 */
}

</style>
