<template>
  <Carousel  v-bind="settings" :breakpoints="breakpoints" :wrap-around="true">
    <Slide v-for="(slide, index) in slides" :key="index">
      <div class="carousel__item">
        <q-card class="readCard" style="box-shadow: 0 0 0 #ccc;">
          <img :src="slide.image" alt="">
          <q-card-section>
            <div class="text-p text-black">{{slide.name}}</div>
            <!-- <div class="text-h6">NT{{slide.price}}</div> -->
          </q-card-section>
        </q-card>
      </div>
    </Slide>

    <template #addons>
      <Navigation />
    </template>
  </Carousel>
</template>

<script setup>
import { ref } from 'vue'
import { Carousel, Navigation, Slide } from 'vue3-carousel'

import 'vue3-carousel/dist/carousel.css'

const slides = ref([
  {
    image: '/index/0-pic-3.png',
    name: '經炭水',
    price: '99,999'
  }, {
    image: '/index/0-pic-4.png',
    name: 'world water 世間水',
    price: '99,999'
  }, {
    image: '/index/0-pic-5.png',
    name: '金讚',
    price: '99,999'
  }, {
    image: '/index/0-pic-6.png',
    name: '竹讚',
    price: '99,999'
  }

])
const settings = ref({
  itemsToShow: 1,
  snapAlign: 'center'

})
const breakpoints = ref({
  576: {
    itemsToShow: 1,
    snapAlign: 'left'
  },
  768: {
    itemsToShow: 2,
    snapAlign: 'left'
  },
  992: {
    itemsToShow: 2,
    snapAlign: 'left'
  },
  1200: {
    itemsToShow: 3,
    snapAlign: 'center'
  },
  1920: {
    itemsToShow: 4,
    snapAlign: 'left'
  }
})

</script>
