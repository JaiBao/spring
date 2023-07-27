// boot/vue-observe-visibility.js
import { ObserveVisibility } from 'vue-observe-visibility'

export default ({ app }) => {
  app.directive('observe-visibility', ObserveVisibility)
}
