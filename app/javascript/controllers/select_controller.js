import { Controller } from '@hotwired/stimulus';

import 'tom-select';
import TomSelect from 'tom-select';

export default class extends Controller {
  connect() {
    console.log('tom_select_controller connected');

    const selectDancestyle = document.getElementById('select-tags');
    if (selectDancestyle) {
      new TomSelect(selectDancestyle, {});
    }

    const selectArtist = document.getElementById('select-tags');
    if (selectArtist) {
      new TomSelect(selectArtist, {});
    }
  }
}
