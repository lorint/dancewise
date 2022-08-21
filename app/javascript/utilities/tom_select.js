import 'tom-select';
import TomSelect from 'tom-select';

console.log("Tom Select JS is connected.")

  const selectDancestyle = document.getElementById('select-dancestyle');
  if (selectDancestyle) {
    new TomSelect(selectDancestyle, {
      plugins: {
        remove_button: { title: 'Remove this item' },
      },
      onItemAdd: function() {
        this.setTextboxValue('');
        this.refreshOptions();
      },
    });
  };

  const selectArtist = document.getElementById('select-artist');
  if (selectArtist) {
    new TomSelect(selectArtist, {
      plugins: {
        remove_button: { title: 'Remove this artist' },
      },
      onItemAdd: function() {
        this.setTextboxValue('');
        this.refreshOptions();
      },
    });
  };
