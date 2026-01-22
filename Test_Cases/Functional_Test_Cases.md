# Functional Test Cases – SauceDemo

| ID | Title | Preconditions | Steps | Test Data | Expected Result |
|----|-------|---------------|-------|-----------|-----------------|
| TC-001 | Login with valid credentials | User is on login page | 1. Enter valid username <br> 2. Enter valid password <br> 3. Click Login button | standard_user / secret_sauce | User is successfully logged in and Products page is displayed |
| TC-002 | Login with invalid password | User is on login page | 1. Enter valid username <br> 2. Enter invalid password <br> 3. Click Login button | standard_user / scrt_sauce | User recieves error message | 
