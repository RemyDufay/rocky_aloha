// Start StimulusJS
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["proprio", "loueur", "loueurbtn", "propriobtn"]

  toggleToProprio() {
    this.loueurTarget.classList.add("d-none");
    this.proprioTarget.classList.remove("d-none");
    this.propriobtnTarget.classList.remove("btn-outline-secondary");
    this.propriobtnTarget.classList.add("btn-outline-primary");
    this.loueurbtnTarget.classList.remove("btn-outline-primay");
    this.loueurbtnTarget.classList.add("btn-outline-secondary");


  }

  toggleToLoueur() {
    this.proprioTarget.classList.add("d-none");
    this.loueurTarget.classList.remove("d-none");
    this.propriobtnTarget.classList.add("btn-outline-secondary");
    this.propriobtnTarget.classList.remove("btn-outline-primary");
    this.loueurbtnTarget.classList.add("btn-outline-primay");
    this.loueurbtnTarget.classList.remove("btn-outline-secondary");
  }
}
