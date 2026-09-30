// @ts-check
import { defineConfig } from '@playwright/test';


export default defineConfig({
  testDir: './tests',
  reporter: 'html',
  // retries: 2,
  use: {
    headless: false,
    browserName: 'chromium',
    viewport: {width:1536,height:864},
    screenshot: "on",
    video: 'on',
    trace:'on' 
  }
});

