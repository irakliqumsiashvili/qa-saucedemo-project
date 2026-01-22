# Functional Test Cases – SauceDemo

| ID | Title | Preconditions | Steps | Test Data | Expected Result |
|----|-------|---------------|-------|-----------|-----------------|
| TC-001 | Login with valid credentials | User is on login page | 1. Go to https://www.saucedemo.com/ <br> 2. Enter valid username <br> 3. Enter valid password <br> 4. Click Login button | standard_user / secret_sauce | User is successfully logged in and Products page is displayed |
| TC-002 | Login with invalid password | User is on login page | 1. Go to https://www.saucedemo.com/ <br> 2. Enter valid username <br> 3. Enter invalid password <br> 4. Click Login button | standard_user / scrt_sauce | User recieves error message | 
| TC-003 | Login with invalid username | User is on login page | 1. Go to https://www.saucedemo.com/ <br> 2. Enter invalid username <br> 3. Enter valid password <br> 4. Click Login button | st_user / secret_sauce | User recieves error message |
