import { Controller } from "@hotwired/stimulus"

const HIDDEN_CLASS = 'hidden';
const DISPLAY_FLEX = 'd-flex';

export default class extends Controller {
  openPopup(event) {
    event.preventDefault();
    event.stopPropagation();

    const popupId = event.params["id"];
    const popupElem = document.getElementById(popupId);

    if (popupElem.classList.contains(HIDDEN_CLASS)) {
      popupElem.classList.remove(HIDDEN_CLASS);
      popupElem.classList.add(DISPLAY_FLEX);
    }
  }

  closePopup(event) {
    event.preventDefault();
    event.stopPropagation();
    const popupId = event.params["id"];
    const popupElem = document.getElementById(popupId);

    popupElem.classList.add(HIDDEN_CLASS);
    popupElem.classList.remove(DISPLAY_FLEX);
  }
}
