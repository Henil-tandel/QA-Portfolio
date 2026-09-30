import { test,expect } from '@playwright/test';

test('Login page',async({page})=>{
    await page.goto('https://www.saucedemo.com/');
    const header = await page.locator('#login-button');
    await expect(header).toBeVisible();

    //Username
    await page.locator('#user-name').fill('standard_user');
    // await page.locator('#user-name').fill('');
    //Password
    await page.locator('#password').fill('secret_sauce');
    //Click on login button
    await header.click();
    
    await expect(page).toHaveURL('https://www.saucedemo.com/inventory.html');
    await expect(page.getByText('Products')).toBeVisible();

    await page.waitForTimeout(2000);
})