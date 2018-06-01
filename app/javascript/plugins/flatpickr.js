import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import { French } from "flatpickr/dist/l10n/fr.js"

flatpickr(".start_date", {
  altInput: true,
  locale: 'fr',
  plugins: [new rangePlugin({ input: ".end_date"})]
})
