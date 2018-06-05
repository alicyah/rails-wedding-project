import "bootstrap";
import { tabs } from '../components/tabs';
import { lockingLock } from '../components/button';
import "../plugins/flatpickr"
import { selectCards } from "../components/cards"
import { customStripeButton } from "../components/stripe"

selectCards()


if (document.getElementById("container-tabs")) {
  tabs();
}

lockingLock();

customStripeButton();
