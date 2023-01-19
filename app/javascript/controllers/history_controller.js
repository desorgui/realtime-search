import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="send-history"
export default class extends Controller {
  send(event) {
    event.preventDefault();
    event.stopPropagation();
    console.log("send");
    const inputElem = document.getElementById(event.params["email"]);
    const email = inputElem.value;

    location.replace(`/searches/history?email=${email}`);
  }
}
