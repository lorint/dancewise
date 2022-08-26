// Entry point for the build script in your package.json
import * as bootstrap from 'bootstrap';
import '@hotwired/turbo-rails';
import './controllers';
import 'tom-select';

require('./utilities/tom_select');

window.initMap = function(...args) {
  const event = document.createEvent('Events');
  event.initEvent('google-maps-callback', true, true);
  event.args = args;
  window.dispatchEvent(event);
};
