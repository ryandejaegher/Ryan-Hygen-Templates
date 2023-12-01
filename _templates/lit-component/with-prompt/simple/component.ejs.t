<% JSClass = h.changeCase.pascal(componentTag) %>

---
to: src/components/<%= JSClass %>/<%= JSClass %>.js
---
import { LitElement, css, html, unsafeCSS } from 'lit';



/**
 * An example element.
 *
 * @slot - This element has a slot
 * @csspart button - The button
 */

export class <%= JSClass %> extends LitElement {
  // ADD PROPERTIES HERE
  static properties = {
    name: { type: String },
    count: { type: Number },
  };

  // ADD CONSTRUCTOR HERE

  constructor() {
    super();
    this.name = 'Jeff';
    this.count = 0;
  }

  // ADD METHODS HERE
  onClick() {
    console.log('clicked!');
  }

  // ADD STYLES HERE
  // Reset the host to display block
  static styles = css`
    /* This styles the custom-element */
    :host {
      display: block;
    }

    p {
      color: white;
    }

    .my-component {
      background: black;
    }
  `;
  // Render
  render() {
    return html`<div>
      <p class="my-component">${this.name} - ${this.count}</p>
    </div>`;
  }

  // ADD Lifecyle methods here
}

// Register the element with the browser
window.customElements.define('<%= componentTag %>', <%= JSClass %>);
