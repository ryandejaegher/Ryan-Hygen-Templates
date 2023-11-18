---
to: src/components/<%= h.changeCase.pascal(componentTag) %>/<%= h.changeCase.pascal(componentTag) %>.js
---
import { LitElement, css, html, unsafeCSS } from 'lit';

/**
 * An example element.
 *
 * @slot - This element has a slot
 * @csspart button - The button
 */

export class <%= h.changeCase.pascal(componentTag) %> extends LitElement {
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
    ::slotted(name="top") {
      color: red;
    }
    ::slotted(name="bottom") {
      color: red;
    }
  `;
  // Render
  render() {
    return html`<div>
      <div class="my-component">
        <slot name="top"><p>Top Slot</p></slot>
        <slot name="bottom"><p>Bottom Slot</p></slot>
      </div>
    </div>`;
  }

  // ADD Lifecyle methods here
}

// Register the element with the browser
window.customElements.define('<%= componentTag %>', <%= h.changeCase.pascal(componentTag) %>);
