---
inject: true
to: src/script.js
append: true
skip_if: <%= h.changeCase.pascal(componentTag) %>
---

import { <%= h.changeCase.pascal(componentTag) %> } from './components/<%= h.changeCase.pascal(componentTag) %>/<%= h.changeCase.pascal(componentTag) %>';
