import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['field'];

  initMap() {
    console.log("Places InitMap connected.");
    console.log(google);
    this.autocomplete = new google.maps.places.Autocomplete(this.fieldTarget);
    console.log('fieldTarget', this.fieldTarget);
  }
  connect() {
    console.log('Places controller connected');
    if (typeof google != 'undefined') {
      initMap();
    }
  }
}
