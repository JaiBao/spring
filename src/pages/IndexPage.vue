<template>
  <q-page >
<!-- //pic1 -->
<div class="pic" >
  <img
      src="~assets/index/0-pic-1.jpg"
    >
    <div     class="absolute-center custom-caption " >

<div  class="text-white alight-center customText2" >
  <h5>
      <span v-for="(char, index) in firstTextArray" :key="'first-' + index" class="char">{{ char }}</span>
    </h5>
    <h5>
      <span v-for="(char, index) in secondTextArray" :key="'second-' + index" class="char">{{ char }}</span>
    </h5>
  </div>
</div>
<div v-for="bubble in bubblesMobile" :key="bubble.id" class="mo xs" :style="{top: `${bubble.position.top}%`, left: `${bubble.position.left}%`}">
  <img :src="bubble.imageSource" :alt="'Bubble ' + bubble.id" :style="{width: `${bubble.width}%`}" ref="bubblesRefsMobile">
</div>
<div v-for="bubble in bubblesTablet" :key="bubble.id" class="mo sm" :style="{top: `${bubble.position.top}%`, left: `${bubble.position.left}%`}">
  <img :src="bubble.imageSource" :alt="'Bubble ' + bubble.id" :style="{width: `${bubble.width}%`}" ref="bubblesRefsTablet">
</div>
<div v-for="bubble in bubblesDesktop" :key="bubble.id" class="mo md" :style="{top: `${bubble.position.top}%`, left: `${bubble.position.left}%`}">
  <img :src="bubble.imageSource" :alt="'Bubble ' + bubble.id" :style="{width: `${bubble.width}%`}" ref="bubblesRefsDesktop">
</div>
<div v-for="bubble in bubblesDesktop2" :key="bubble.id" class="mo lg" :style="{top: `${bubble.position.top}%`, left: `${bubble.position.left}%`}">
  <img :src="bubble.imageSource" :alt="'Bubble ' + bubble.id" :style="{width: `${bubble.width}%`}" ref="bubblesRefsDesktop2">
</div>
<div v-for="bubble in bubblesDesktop3" :key="bubble.id" class="mo xl" :style="{top: `${bubble.position.top}%`, left: `${bubble.position.left}%`}">
  <img :src="bubble.imageSource" :alt="'Bubble ' + bubble.id" :style="{width: `${bubble.width}%`}" ref="bubblesRefsDesktop3">
</div>

</div>

<!-- //pic2 -->
<div class="pic2">
  <div class="parallax gt-sm"></div>
  <img
      src="~assets/index/0-pic-2.jpg"
    class="lt-md">
</div>
  <!-- service -->
  <div class="servicesCard ">
    <div class="servicesTitle row   justify-center">
      <h4>Services</h4>
    </div>
    <div class="servicesIcon  ">
      <div class="logoIcon1" >
        <img src="~assets/index/icon1.png" alt="瓶裝水經銷">
        <h5>瓶裝水經銷</h5>
        <p>Describe one of your services</p>
      </div>
      <div class="logoIcon">
        <img src="~assets/index/icon2.png" alt="瓶裝水零售">
        <h5>瓶裝水零售</h5>
        <p>Describe one of your services</p>
      </div>
      <div class="logoIcon">
        <img src="~assets/index/icon3.png" alt="瓶裝水代工">
        <h5>瓶裝水代工</h5>
        <p>Describe one of your services</p>
      </div>
    </div>
  </div>
  <!-- 介紹 -->
  <div class="introduce  ">
    <h4>Brand Story</h4>
    <p>源於「水泉水」對生活的熱愛和對大自然的敬畏。我們的創始人曾經親歷世界各地，品嚐了來自不同水源。這樣的經驗讓他深深體會到水的純樸之美，以及它們如何融入各個文化和生活場景中。受到這份熱愛和敬畏的啟發，創立了「水泉水」公司。</p>

  <!-- 影片 -->
  <div class="video">
  <div class="videoWrapper">
    <video controls auto>
      <source src="/index/fontMovie.mp4" type="video/mp4" class="iframe">
      Your browser does not support the video tag.
    </video>
    <!-- <iframe src="https://www.youtube.com/embed/kGNbu6WCraI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> -->
  </div>
</div>

<p>擁有純淨水源的「世間水」水廠，位於台灣三大冷泉之一的彰化快官冷泉處，地處環境清幽純淨，水質未受任何汙染，保留住水質的甘醇度。嚴謹的製作與品管，榮獲ISO 22000與HACCP國家級的雙重認證，提供消費者安心無虞甘醇的瓶裝水。</p>
  </div>
<!-- 輪播 -->
  <div class="q-ma-md row justify-center">

    <div class="section01-text q-ma-xs">
            <cardCarousel/>

    </div>
    </div>

<!-- 聯絡表單 -->
<q-card class="messageCard ">
  <h4>聯絡表單</h4>
  <p>業務合作或其他事宜歡迎您透過連絡表單與我們聯繫</p>
<q-form @submit="onSubmit" class="q-gutter-md messageForm row">
  <div class="row formContent">
  <div class="formInput row col-md-6 col-12">
    <div class="formTitle">
    <p><span>*</span>問題主旨</p></div><q-input outlined v-model="form.subject" lazy-rules  /></div>

  <div class=" formInput row col-md-6 col-12">    <div  class="formTitle">
    <p><span>*</span>聯絡姓名</p></div>
  <q-input outlined v-model="form.name"  lazy-rules  />
    <!-- <div class="gender">
    <q-radio v-model="form.gender" val="1" label="先生" size="sm" style="font-size: 18px;"/>
                  <q-radio v-model="form.gender" val="2" size="sm" label="小姐"  style="font-size: 18px;"/></div> -->
                </div>

  <div class="row items-center formInput col-md-6 col-12">    <div  class="formTitle">
    <p><span>*</span>連絡電話   </p></div>
   <q-input outlined v-model="form.phone"  lazy-rules  /></div>

  <div class="row items-center formInput col-md-6 col-12">    <div  class="formTitle">
    <p><span>*</span>聯絡信箱   </p></div>
  <q-input outlined v-model="form.email" lazy-rules  /></div>

  <div class=" formInput col-12 col-md-12">    <div  class="formTitle">
    <p><span>*</span>問題內容   </p></div>
  <q-input outlined v-model="form.content" type="textarea"  lazy-rules  /></div>

  <div class="row  formInput2 col-md-8 col-12">    <div  class="formTitle">
    <p><span>*</span>輸入驗證碼</p></div>
  <q-input  outlined v-model="form.captcha" label="驗證碼" lazy-rules :rules="[ val => val === captcha || '驗證碼不正確']" />

    <div class=" text-white formCaptcha col-4" @click="refreshCaptcha" :key="captcha">{{ captcha }}</div>
  </div>

    <div class=" messageBtn">
      <q-btn label="清除" @click="reset" type="reset" style="margin-right: 2%;background-color: #595757;"/>
      <q-btn label="送出" type="submit"  style="margin-left: 2%;background-color: #b5578d"/>
    </div>
  </div>
  </q-form>
</q-card>
  </q-page>
</template>

<script setup>
// import { defineComponent } from 'vue'
import cardCarousel from 'components/cardCarousel.vue'
import { useMeta, useQuasar } from 'quasar'
import axios from 'axios'
import { reactive, ref, onMounted, watchEffect } from 'vue'
import { gsap } from 'gsap'

const bubblesMobile = reactive([])
const bubblesTablet = reactive([])
const bubblesDesktop = reactive([])
const bubblesDesktop2 = reactive([])
const bubblesDesktop3 = reactive([])
const bubblesRefsMobile = ref([])
const bubblesRefsTablet = ref([])
const bubblesRefsDesktop = ref([])
const bubblesRefsDesktop2 = ref([])
const bubblesRefsDesktop3 = ref([])

const firstText = '我們追求的，不僅僅是賣水，'
const secondText = '更是將自然的美好帶給大眾。'
const firstTextArray = Array.from(firstText)
const secondTextArray = Array.from(secondText)

onMounted(() => {
  createBubbles(bubblesMobile, 50, 187)
  createBubbles(bubblesTablet, 60, 295)
  createBubbles(bubblesDesktop, 100, 500)
  createBubbles(bubblesDesktop2, 100, 696)
  createBubbles(bubblesDesktop3, 100, 896)

  gsap.from('.char', {
    opacity: 0,
    // yPercent: -50,
    y: -20,
    scale: 1.5,
    duration: 1,
    stagger: 0.2
  })
})

const createBubbles = (bubbleArray, maxWidth, maxRiseHeight) => {
  const numBubbles = Math.floor(Math.random() * 31) + 30
  for (let i = 0; i < numBubbles; i++) {
    const bubble = {
      id: i,
      imageSource: `/index/${Math.floor(Math.random() * 22) + 1}.png`,
      width: Math.random() * maxWidth,
      riseHeight: Math.random() * maxRiseHeight,
      riseTime: Math.random() * 2 + 1,
      position: {
        top: 100,
        left: Math.random() * 90
      }
    }
    bubbleArray.push(bubble)
  }
}

watchEffect(() => {
  if (bubblesRefsMobile.value.length) {
    bubblesRefsMobile.value.forEach((bubbleRef, i) => {
      const startBubbleY = bubbleRef.getBoundingClientRect().top - window.scrollY
      animateBubble(bubbleRef, startBubbleY, -bubblesMobile[i].riseHeight, bubblesMobile[i].riseTime)
    })
  }

  if (bubblesRefsTablet.value.length) {
    bubblesRefsTablet.value.forEach((bubbleRef, i) => {
      const startBubbleY = bubbleRef.getBoundingClientRect().top - window.scrollY
      animateBubble(bubbleRef, startBubbleY, -bubblesTablet[i].riseHeight, bubblesTablet[i].riseTime)
    })
  }

  if (bubblesRefsDesktop.value.length) {
    bubblesRefsDesktop.value.forEach((bubbleRef, i) => {
      const startBubbleY = bubbleRef.getBoundingClientRect().top - window.scrollY
      animateBubble(bubbleRef, startBubbleY, -bubblesDesktop[i].riseHeight, bubblesDesktop[i].riseTime)
    })
  }
  if (bubblesRefsDesktop2.value.length) {
    bubblesRefsDesktop2.value.forEach((bubbleRef, i) => {
      const startBubbleY = bubbleRef.getBoundingClientRect().top - window.scrollY
      animateBubble(bubbleRef, startBubbleY, -bubblesDesktop2[i].riseHeight, bubblesDesktop2[i].riseTime)
    })
  }
  if (bubblesRefsDesktop3.value.length) {
    bubblesRefsDesktop3.value.forEach((bubbleRef, i) => {
      const startBubbleY = bubbleRef.getBoundingClientRect().top - window.scrollY
      animateBubble(bubbleRef, startBubbleY, -bubblesDesktop3[i].riseHeight, bubblesDesktop3[i].riseTime)
    })
  }
})

const animateBubble = (element, startY, breakY, riseTime) => {
  const animation = gsap.timeline({ onComplete: () => animateBubble(element, startY, breakY, riseTime) })

  animation.fromTo(
    element,
    { x: '-10px' },
    { x: '10px', duration: riseTime, ease: 'sine.inOut', repeat: 2, yoyo: true }
  )

  animation.to(
    element,
    { y: `${breakY}px`, duration: riseTime, ease: 'sine.inOut', repeat: 3 },
    '<'
  )

  // Replace image at top
  animation.add(() => {
    element.src = '/index/2.png'
  })

  // Trigger break effect
  animation.add(() => {
    if (element.getBoundingClientRect().top - window.scrollY <= breakY) {
      // Execute break effect operations, such as replacing image or adding class
    }
  })

  animation.to(
    element,
    { opacity: 0, duration: 0.5, onComplete: () => restartAnimation(element, startY) }
  )
}

const restartAnimation = (element, startY) => {
  // Replace back
  element.src = '/index/22.png'

  gsap.set(element, { y: '0px', x: '0px' })
  gsap.to(element, { opacity: 1, duration: 0.5 })
}

// 根據視窗高度動態計算上升高度
// const calculateRiseHeight = () => {
//   const windowHeight = window.innerHeight
//   const maxRiseHeight = windowHeight * 0.7 // 設定最大上升高度為視窗高度的一半
//   const minRiseHeight = windowHeight * 0.1 // 設定最小上升高度為視窗高度的十分之一

//   return Math.random() * (maxRiseHeight - minRiseHeight) + minRiseHeight
// }

// setInterval(() => {
//   console.log('bubbles', bubbles.length)
// }, 1000)

const $q = useQuasar()

const form = reactive({
  subject: '',
  name: '',
  phone: '',
  email: '',
  content: '',
  captcha: '',
  gender: '1'
})
function reset () {
  form.subject = ''
  form.name = ''
  form.phone = ''
  form.email = ''
  form.content = ''
  form.captcha = ''
  form.gender = '1'
}

const captcha = ref(generateCaptcha())

function generateCaptcha () {
  return Math.random().toString(36).substring(2, 8)
}
const refreshCaptcha = () => {
  captcha.value = generateCaptcha()
}

const onSubmit = async () => {
  if (!form.subject) {
    $q.notify({
      color: 'red-4',
      textColor: 'white',
      icon: 'error',
      message: '請填寫主旨'
    })
    return
  }
  if (!form.name) {
    $q.notify({
      color: 'red-4',
      textColor: 'white',
      icon: 'error',
      message: '請填寫聯絡姓名'
    })
    return
  }
  if (!form.phone) {
    $q.notify({
      color: 'red-4',
      textColor: 'white',
      icon: 'error',
      message: '請填寫連絡電話'
    })
    return
  }
  if (!form.email) {
    $q.notify({
      color: 'red-4',
      textColor: 'white',
      icon: 'error',
      message: '請填寫聯絡信箱'
    })
    return
  }
  if (!form.content) {
    $q.notify({
      color: 'red-4',
      textColor: 'white',
      icon: 'error',
      message: '請填寫問題內容'
    })
    return
  }
  const isValid = Object.values(form).every(value => value)
  if (!isValid || form.captcha !== captcha.value) {
    $q.notify({
      color: 'red-4',
      textColor: 'white',
      icon: 'error',
      message: '驗證碼錯誤'
    })
  } else {
    try {
      await sendDataToAppsScript(form)
      // 清空表單
      reset()

      // 刷新驗證碼
      refreshCaptcha()

      $q.notify({
        color: 'green-4',
        textColor: 'white',
        icon: 'check',
        message: '郵件已成功寄出'
      })
    } catch (error) {
      $q.notify({
        color: 'red-4',
        textColor: 'white',
        icon: 'error',
        message: '郵件發送失敗'
      })
    }
  }
}

const sendDataToAppsScript = async (formData) => {
  const scriptUrl = 'https://www.dtstw.com:3000/data/water' // 替换为您的 Google Apps Script 项目的脚本 URL
  const data = {
    subject: formData.subject,
    name: formData.name + (formData.gender === '1' ? ' 先生' : ' 小姐'),
    phone: formData.phone,
    email: formData.email,
    content: formData.content
  }

  try {
    await axios.post(scriptUrl, data)
    console.log('Data sent to Google Apps Script')
  } catch (error) {
    console.error('Error sending data to Google Apps Script:', error)
  }
}

const metaData = {
  // 設定文件標題
  title: '水泉水生技｜瓶裝水經銷零售、瓶裝水代工',
  // 可選；設定最終標題為 "首頁 - 我的網站"，有助於多層級 meta
  // titleTemplate: title => `${title} - 我的網站`,

  // meta 標籤
  meta: {

    // description: { name: 'google-site-verification', content: 'LuY-R48YMOEGA7TIXFfcuFHbA7OV-Narkw8-G4La-Ek' },
    description: { name: 'description', content: '源於「水泉水」對生活的熱愛和對大自然的敬畏！擁有ISO 22000 與 HACCP 國家級雙重認證水廠，提供最純淨水源的瓶裝水，業界高品質礦泉水！世間水、快感涵氧活水、快感竹炭水、冰川涵氧活水、冰川竹炭水、經炭水、金讚竹炭水、竹讚竹炭水、按個讚竹炭水、金竹竹炭水、尚讚竹炭水' },
    keywords: { name: 'keywords', content: '水,礦泉水,水泉水' },
    equiv: { 'http-equiv': 'Content-Type', content: 'text/html; charset=UTF-8' },
    // 注意：對於 Open Graph 類型的元資料，你需要使用 SSR（Server-Side Rendering）確保頁面由伺服器渲染
    ogTitle: {
      property: 'og:title', content: '水泉水生技｜瓶裝水經銷零售、瓶裝水代工'
      // 可選；類似於 titleTemplate，但允許使用其他 meta 屬性進行模板化
      // template (ogTitle) {
      //   return `${ogTitle} - 我的網站`
      // }
    },
    ogDescription: {
      property: 'og:description', content: '源於「水泉水」對生活的熱愛和對大自然的敬畏！擁有ISO 22000 與 HACCP 國家級雙重認證水廠，提供最純淨水源的瓶裝水，業界高品質礦泉水！世間水、快感涵氧活水、快感竹炭水、冰川涵氧活水、冰川竹炭水、經炭水、金讚竹炭水、竹讚竹炭水、按個讚竹炭水、金竹竹炭水、尚讚竹炭水'
    },
    ogImage: {
      property: 'og:image', content: '/index/logo.png'
    },
    twitterTitle: {
      property: 'twitter:title', content: '水泉水生技｜瓶裝水經銷零售、瓶裝水代工'
      // 可選；類似於 titleTemplate，但允許使用其他 meta 屬性進行模板化
      // template (ogTitle) {
      //   return `${ogTitle} - 我的網站`
      // }
    },
    twitterDescription: {
      property: 'twitter:description', content: '源於「水泉水」對生活的熱愛和對大自然的敬畏！擁有ISO 22000 與 HACCP 國家級雙重認證水廠，提供最純淨水源的瓶裝水，業界高品質礦泉水！世間水、快感涵氧活水、快感竹炭水、冰川涵氧活水、冰川竹炭水、經炭水、金讚竹炭水、竹讚竹炭水、按個讚竹炭水、金竹竹炭水、尚讚竹炭水'
    },
    twitterImage: {
      property: 'twitter:image', content: '/index/logo.png'
    }
  }

  // // CSS 標籤
  // link: {
  //   material: { rel: 'stylesheet', href: 'https://fonts.googleapis.com/icon?family=Material+Icons' }
  // },

  // // JS 標籤
  // script: {
  //   ldJson: {
  //     type: 'application/ld+json',
  //     innerHTML: '{ "@context": "http://schema.org" }'
  //   }
  // },

  // // <html> 屬性
  // htmlAttr: {
  //   'xmlns:cc': 'http://creativecommons.org/ns#', // 生成 <html xmlns:cc="http://creativecommons.org/ns#">,
  //   empty: undefined // 生成 <html empty>
  // },

  // // <body> 屬性
  // bodyAttr: {
  //   'action-scope': 'xyz', // 生成 <body action-scope="xyz">
  //   empty: undefined // 生成 <body empty>
  // },

  // // <noscript> 標籤
  // noscript: {
  //   default: '這是給沒有 JS（或已禁用 JS）的瀏覽器的內容'
  // }
}

useMeta(metaData)

</script>
<style lang="scss">

</style>
