---
to: "<%= addStory ? `src/components/${h.changeCase.pascal(componentTag)
}/${h.changeCase.pascal(componentTag)
}.stories.js` : null %>"
---
import { html, nothing } from 'lit';

import { <%= h.changeCase.pascal(componentTag) %> } from './<%= h.changeCase.pascal(componentTag) %>';

export default {
  component: '<%= componentTag %>',
  tags: ['autodocs'],
  argTypes: {
    type: {
      control: { type: 'select' },
      options: ['primary', 'secondary', 'tertiary'],
    },
  },
};

export const Primary = {
  name: '<%= h.changeCase.pascal(componentTag) %>',
  args: {
    icon: true,
    label: 'Button',
    // name: 'Carl',
    type: 'primary',
  },
  render: args =>
    html`<<%= componentTag %> icon=${args.icon || nothing} type="${args.type}"
      >${args.label}</<%= componentTag %>>`,
};
