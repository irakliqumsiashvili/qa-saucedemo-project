# Bug Reports – SauceDemo

## BUG-001
**Title: User is able to log in with locked out user**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is on login page**  
Steps to Reproduce:<br>
**1. Enter username "locked_out_user" <br>
2. Enter password "secret_sauce"  <br>
3. Click Login button** <br> 
**Actual Result: User is logged in successfully**  
**Expected Result: User should not be able to log in and error message should be displayed**  
**Severity: High**  
**Priority: High**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-002
**Title: Error message is unclear for invalid login**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is on login page**  
Steps to Reproduce:<br>
**1. Enter unaccepted username, "Stndrd_user"-for example  
2. Enter password "secret_sauce"  
3. Click Login button**  
**Actual Result: Error message is unclear and unreadeble for user**  
**Expected Result: User should be able to clearly see and be able to read error message**  
**Severity: Low**  
**Priority: Medium**  
**Attached file: Screenshot/Screenrecording should be attached**
---


## BUG-003
**Title: Incorrect product image displayed (problem_user)**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is logged in with "problem_user" username**  
Steps to Reproduce:<br>
**1. Enter "problem_user" in username field <br>
2. Enter password "secret_sauce"<br>
3. Click Login button <br>
4. Open product page <br>
5. Observe product images**  
**Actual Result: Displayed product images are incorrect**  
**Expected Result: Every product imege should be displayed according to requirments**  
**Severity: Medium**  
**Priority: High**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-004
**Title: Sorting does not work correctly**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is logged in with "problem_user" username**  
Steps to Reproduce:<br>
**1. Open products page <br>
2. Click on sorting drop-down<br>
3. Choose any sorting style <br>**
**Actual Result: Changing of sorting style doesn't change anything**  
**Expected Result: By changing the sorting style, products should be displayed in the selected order**  
**Severity: Low**  
**Priority: Low**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-005
**Title: Cart icon counter does not decrease after removing product**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is logged in and product is added to cart**  
Steps to Reproduce:<br>
**1.Add any product to cart <br>
2. Click Cart icon<br>
3. Click “Remove” button for the product  **
**Actual Result: Cart icon counter is not updated**  
**Expected Result: Cart icon counter should decrease after product removal**  
**Severity: Medium**  
**Priority: Medium**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-006
**Title: Removed product is still displayed in cart after page refresh**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is logged in and product is added to cart**  
Steps to Reproduce:<br>
**1.Add any product to cart <br>
2. Open Cart page <br>
3. Remove product  <br>
4. Refresh the page**
**Actual Result: Removed product is displayed again in cart**  
**Expected Result: Removed product should not be displayed after page refresh**  
**Severity: High**  
**Priority: High**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-007
**Title: Cart page allows checkout with empty cart**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is logged in**  
Steps to Reproduce:<br>
**1. Open Cart page <br>
2. Click “Checkout” button **
**Actual Result: Checkout process starts with empty cart**  
**Expected Result: Checkout should not be allowed with empty cart**  
**Severity: High**  
**Priority: High**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-008
**Title: Cart page does not display correct product quantity**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is logged in and multiple products are added to cart**  
Steps to Reproduce:<br>
**1.Add two different products to cart <br>
2. Open Cart page **
**Actual Result: Product quantity is displayed incorrectly**  
**Expected Result: Correct product quantity should be displayed**  
**Severity: Medium**  
**Priority: Medium**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-009
**Title: Cart icon counter is not updated after page refresh**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is logged in and product is added to cart**  
Steps to Reproduce:<br>
**1.Add product to cart <br>
2. Refresh the page**
**Actual Result: Cart icon counter resets**  
**Expected Result: The trash can icon counter should keep the correct value.**  
**Severity: Medium**  
**Priority: Medium**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-010
**Title: Locked out user is able to log in**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User is on login page**  
Steps to Reproduce:<br>
**1.Enter username locked_out_user <br>
2. Enter password secret_sauce <br>
3. Click login**
**Actual Result: User is logged in successfully**  
**Expected Result: User should see error message and login should be blocked**  
**Severity: High**  
**Priority: High**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-011
**Title: Error message is not cleared after successful login**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: Invalid login attempt was made**
Steps to Reproduce:<br>
**1.Enter invalid credentials <br>
2. Observe error message <br>
3. Enter valid credentials <br>
4. Click Login**
**Actual Result: Error message remains visible**  
**Expected Result: Error message should disappear after successful login**  
**Severity: Medium**  
**Priority: Medium**  
**Attached file: Screenshot/Screenrecording should be attached**
---


## BUG-012
**Title: Incorrect product image is displayed for problem user**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User logs in as problem_user**
Steps to Reproduce:<br>
**1.Log in as problem_user <br>
2. Open Products page <br>**
**Actual Result: Product images do not match products**  
**Expected Result: Correct image should be displayed for each product**  
**Severity: Medium**  
**Priority: Medium**  
**Attached file: Screenshot/Screenrecording should be attached**
---

## BUG-013
**Title: Incorrect product image is displayed for problem user**  
**Environment: Chrome v144.0.7559.97, Windows Pro 22H2 x64**  
**Precondition: User logs in as problem_user**
Steps to Reproduce:<br>
**1.Log in as problem_user <br>
2. Open Products page <br>**
**Actual Result: Product images do not match products**  
**Expected Result: Correct image should be displayed for each product**  
**Severity: Medium**  
**Priority: Medium**  
**Attached file: Screenshot/Screenrecording should be attached**
---
