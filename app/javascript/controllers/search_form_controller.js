import { Controller } from "@hotwired/stimulus"

export default class extends Controller {  
  connect() {
    const submit = document.getElementById("submit");
    const input = document.getElementById("query");

    submit.addEventListener("click", () => {
      if (input.value.length > 3) {
        this.postForm({ query: input.value })
      }
    });

    input.addEventListener("focusout", () => {
      submit.click();
    });
  }
  
  async postForm(data) {
    await fetch("/searches", {
      method: "POST",
      body: JSON.stringify(data),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
    });
  }

  search() {
    clearTimeout(this.timeout);
    this.timeout = setTimeout(() => {
      this.element.requestSubmit();
    }, 200);
  }
}