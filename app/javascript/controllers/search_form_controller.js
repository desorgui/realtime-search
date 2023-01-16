import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const searchInput = document.getElementById('query');
    
    searchInput.addEventListener("focusout", () => {
      this.element.requestSubmit();
    });

    searchInput.addEventListener("focusin", () => {
      confirmedInput.value = null;
    });
  }
  
  search() {
    clearTimeout(this.timeout);
    this.timeout = setTimeout(() => {
      this.element.requestSubmit();
    }, 200);
  }
}