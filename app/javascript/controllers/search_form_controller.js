import { Controller } from "@hotwired/stimulus"

export default class extends Controller {  
  connect() {
    const submit = document.getElementById("submit");
    const input = document.getElementById("query");

    submit.addEventListener("click", () => {
      if (input.value.length > 3) {
        fetch("/searches", {
          method: "POST",
          body: JSON.stringify({ query: input.value }),
          headers: {
            'Content-Type': 'application/json'
          }
        })
        .then(response => response.json())
        .then(data => {
          console.log(data);
        })
      }
    });
    input.addEventListener("focusout", () => {
      submit.click();
    });
  }

  search() {
    clearTimeout(this.timeout);
    this.timeout = setTimeout(() => {
      this.element.requestSubmit();
    }, 200);
  }
}