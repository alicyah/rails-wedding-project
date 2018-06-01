import "bootstrap";
import { tabs } from '../components/tabs';
import { lockingLock } from '../components/button';


if (document.getElementById("container-tabs")) {
  tabs();
}

lockingLock();
