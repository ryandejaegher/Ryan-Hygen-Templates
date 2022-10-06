---
to: src/components/<%= name %>.astro
---

---
<% if(locals.typescript){ %>
interface Props {
  test?: string
}
<% } %>

const {test='Hello World'} = Astro.props
---

<%= types %>
<%= props %>
<div>{test}</div>
