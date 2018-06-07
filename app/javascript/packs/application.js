import "bootstrap";
import { tabs } from '../components/tabs';
import { lockingLock } from '../components/button';
import "../plugins/flatpickr";
import { selectCards } from "../components/cards";
import { selectList } from "../components/list";
import { customStripeButton } from "../components/stripe";
import { clickDetails } from "../components/click_details";



selectCards()
selectList()


if (document.getElementById("container-tabs")) {
  tabs();
}

lockingLock();

customStripeButton();
clickDetails();
