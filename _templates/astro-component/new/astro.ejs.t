---
to: src/components/<%= name %>.astro
---
---
interface Props {
  test?: string
}
const {test='Hello World'} = Astro.props
---

<div>{test}</div>
