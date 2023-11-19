---
to: src/components/<%= h.changeCase.pascal(componentTag) %>/<%= h.changeCase.pascal(componentTag) %>.spec.js
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
