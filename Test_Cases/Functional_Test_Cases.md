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
