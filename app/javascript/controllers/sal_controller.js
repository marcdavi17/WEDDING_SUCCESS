import { Controller } from "@hotwired/stimulus"
import sal from 'sal.js'


// Connects to data-controller="sal"
export default class extends Controller {
  connect() {
    sal()
  }
}
