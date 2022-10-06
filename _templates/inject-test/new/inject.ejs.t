---
inject: true
to: src/components/<%= name %>.astro
append: true
---
const hello = ```
Hello!
This is your first hygen template.

Learn what it can do here:

https://github.com/jondot/hygen
```

console.log(hello)
