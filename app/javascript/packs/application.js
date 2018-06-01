import "bootstrap";
import { tabs } from '../components/tabs';
import { lockingLock } from '../components/button';
import "../plugins/flatpickr"

if (document.getElementById("container-tabs")) {
  tabs();
}

lockingLock();



