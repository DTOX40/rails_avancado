import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // this.element.textContent = "<h1>Texto que vem do controller</h1>"
    this.element.innerHTML = "<h1>Texto que vem do controller</h1>"
  }
}
