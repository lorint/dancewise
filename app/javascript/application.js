// Entry point for the build script in your package.json
import './controllers';
import 'tom-select';
import 'trix';
import '@rails/actiontext';

require('./utilities/tom_select');

window.initMap = function(...args) {
  const event = document.createEvent('Events');
  event.initEvent('google-maps-callback', true, true);
  event.args = args;
  window.dispatchEvent(event);
};
