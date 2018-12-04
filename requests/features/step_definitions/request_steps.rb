Given("I am on the home page") do
    visit '/'
end
And ("I want to sign in") do
    @user = FactoryBot.create :user
end
Then("I should see a link to sign in") do
    find_link('Sign in', href:"/users/sign_in")
end
When ("I click on the link to sign in") do
    find_link('Sign in', href:"/users/sign_in").click
end
Then ("I should see a form to sign in") do
    expect(page).to have_selector('form#new_user')
end
When ("I submit the sign in form") do
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button('Log in')
end

Then ("I should visit home page") do
    visit '/requests'    
    
end

When("I should see a link to create a new request") do 
    find_link('New Request', href:"/requests/new").click
    
    #expect(page).to have_link('New Request', href:'/requests/new')
        
    
end

Then("I click on the New Request link") do 
    @request = FactoryBot.create :request
end

Then ("I fill in the request form and submit") do
    fill_in "Location", with: @request.location
    fill_in "Complain", with: @request.complain
    fill_in "Date", with: @request.Date
    fill_in "Nature", with: @request.nature
    click_button('Create Request')
end

Then ("I should go back to the request page") do 
    visit '/'
    save_and_open_page
end