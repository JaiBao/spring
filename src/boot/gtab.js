import { createApp } from 'vue'
import App from '../App.vue'
import VueGtag from 'vue-gtag-next'

const app = createApp(App)

app.use(VueGtag, {
  property: {
    id: 'G-H603M7DMBT'
  }
})

app.mount('#app')
