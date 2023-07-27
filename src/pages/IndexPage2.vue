<template>
  <div class="bg-blue" style="height: 2000px;"></div>
  <div v-observe-visibility="visibilityChanged1" :class="{ 'fly-in-from-right': true, visible: isVisible1 }" style="background-color: black;">
    12323
  </div>
  <div v-observe-visibility="visibilityChanged2" :class="{ 'fly-in-from-left': true, visible: isVisible2 }" style="background-color: red;">
333333
  </div>
</template>

<script setup>
import { ref } from 'vue'

const isVisible1 = ref(false)
const isVisible2 = ref(false)

const visibilityChanged1 = ({ intersectionRatio }) => {
  isVisible1.value = intersectionRatio === 1
}

const visibilityChanged2 = ({ intersectionRatio }) => {
  isVisible2.value = intersectionRatio === 1
}
</script>

<style scoped>
.fly-in-from-right {
  transform: translateX(100%) rotate(45deg); /* 元素初始状态在视口的右侧，有45度的旋转 */
  transition: transform 0.5s ease-out; /* 定义动画效果 */
}

.fly-in-from-right.visible {
  transform: translateX(0); /* 当元素变为可见时，移动到原始位置 */
}

.fly-in-from-left {
  transform: translateX(-100%) rotate(-45deg); /* 元素初始状态在视口的左侧，有-45度的旋转 */
  transition: transform 0.5s ease-out; /* 定义动画效果 */
}

.fly-in-from-left.visible {
  transform: translateX(0); /* 当元素变为可见时，移动到原始位置 */
}
</style>
