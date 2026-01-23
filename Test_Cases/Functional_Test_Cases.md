# Functional Test Cases – SauceDemo

| ID | Title | Preconditions | Steps | Test Data | Expected Result |
|----|-------|---------------|-------|-----------|-----------------|
| TC-001 | Login with valid credentials | User is on login page | 1. Enter valid username <br> 2. Enter valid password <br> 3. Click Login button | standard_user / secret_sauce | User is successfully logged in and Products page is displayed |
| TC-002 | Login with invalid password | User is on login page | 1. Enter valid username <br> 2. Enter invalid password <br> 3. Click Login button | standard_user / scrt_sauce | User recieves error message | 
| TC-003 | Login with invalid username | User is on login page | 1. Enter invalid username <br> 2. Enter valid password <br> 3. Click Login button | st_user / secret_sauce | User recieves error message |
| TC-004 | Login with empty username | User is on login page | 1. Leave username field empty <br> 2. Enter valin password <br> 3. Press Login button | EMPTY FIELD/ secret_sauce | User recieves "Username is required" message |
| TC-005 |  Login with empty password | User is on login page | 1. Enter valid username <br> 2. Leave password field empty <br> 3. Click Login button | standard_user / EMPTY PASSWORD |  User recieves "Password is required" message |
| TC-006 | Open Products page after login | User is logged in | 1. Log in with valid credentials |  standard_user / secret_sauce | Products page is displayed | 
| TC-007 | Display product list | User is on Products page | 1. Observe product list | N/A | All products are displayed with name, price and image |
| TC-008 | Display product details | User is on Products page | 1. Observe any product | N/A | Product name, description, price and image are displayed |
| TC-009 | Open product details page | User is on Products page | 1. Click on product name | N/A | Product details page is opened |
| TC-010 | Add product to cart from Products page | User is on Products page | 1. Click “Add to cart” button for a product | N/A | Product is added to cart and cart icon is updated |
| TC-011 | Remove product from cart on Products page | Product is added to cart | 1. Click “Remove” button | N/A | Product is removed from cart and cart icon is updated
| TC-012 | Verify sorting by Name (A to Z) | User is on Products page | 1. Select “Name (A to Z)” from sorting dropdown | N/A | Products are sorted by name in ascending order | 
| TC-013 | Verify sorting by Price (low to high) | User is on Products page | 1. Select “Price (low to high)” from sorting dropdown | N/A | Products are sorted by price in ascending order |
| TC-014 | Open Cart page | User is logged in | 1. Click Cart icon | standard_user / secret_sauce | Cart page is opened | 
| TC-015 | Display added product in cart | Product is added to cart | 1. Open Cart page | N/A | Added product is displayed in cart |
| TC-016 | Verify product details in cart | Product is added to cart | 1. Open Cart page | N/A | Product name, price and quantity are displayed |
| TC-017 | Remove product from cart | Product is added to cart | 1. Click “Remove” button | N/A | Product is removed from cart | 
| TC-018 | Continue shopping from cart | User is on Cart page | 1. Click “Continue Shopping” button | N/A | User is redirected to Products page | 
| TC-019 | Start checkout process from cart | Product is added to cart | 1. Click “Checkout” button | N/A | Checkout information page is opened | 
| TC-020 | Cart state after page refresh | Product is added to cart | 1. Refresh the page <br> 2. Open Cart page | N/A | Added product is still present in cart | 
