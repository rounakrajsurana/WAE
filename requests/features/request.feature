Feature: Login
Scenario: User should be able to login
 Given I am on the home page
 And I want to sign in
 Then I should see a link to sign in
 When I click on the link to sign in 
 Then I should see a form to sign in
 When I submit the sign in form
 Then I should visit home page
 When I should see a link to create a new request
 Then I click on the New Request link
 Then I fill in the request form and submit 
 Then I should go back to the request page

