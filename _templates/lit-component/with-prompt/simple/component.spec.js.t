<% JSClass = h.changeCase.pascal(componentTag) %>

---
to: src/components/<%= JSClass %>/<%= JSClass %>.spec.js
---

// @ts-check
import { expect, test } from '@playwright/test';

test('component is visible', async ({ page }) => {
  await page.goto(
    'http://localhost:6010/iframe.html?args=&id=<%= componentTag %>--primary&viewMode=story'
  );

  let component = await page.locator('<%= componentTag %>');

  await expect(component).toBeVisible();

});
