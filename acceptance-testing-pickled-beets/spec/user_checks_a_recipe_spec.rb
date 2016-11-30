require "spec_helper"

feature "User checks a recipe's deliciousness", %(
  As a user
  I want to submit a recipe name to see if it is delicious
  So that I know with confidence what to cook.

  Acceptance Criteria:
  [x] When I visit the root path, I can see a form to submit a recipe name
  [x] If I submit a recipe name with "pickled beets" in the name, I am
      sent to a "results" page telling me that the recipe is delicious
  [x] If I submit a recipe name without "pickled beets" in the name, I am
      sent to a "results" page telling me that the recipe is not delicious
  [x] From the "results" page, I am able to click a link bringing me back to
      the home page
  [x] If I submit a blank entry to the form, I am brought to an error page
  [x] From the error page, I can click a link bringing me back to the home page

) do

  scenario "user submits a recipe name containing 'pickled beets'" do
    visit '/'
    fill_in 'Recipe Name', with: 'pickled beets'
    click_button 'Submit'

    expect(page).to have_content("\"pickled beets\" is a delicious recipe!")
  end

  scenario "user submits a recipe name without 'pickled beets'" do
    visit '/'
    fill_in 'Recipe Name', with: 'poop'
    click_button 'Submit'

    expect(page).to have_content("\"poop\" is not a delicious recipe!")
  end

  scenario "user navigates back to the home page after checking a recipe name" do
    visit '/'
    fill_in 'Recipe Name', with: 'poop'
    click_button 'Submit'
    click_on 'Try again!'

    expect(page).to have_content("Enter a recipe name here")
  end

  scenario "user submits an empty form" do
    visit '/'
    fill_in 'Recipe Name', with: ''
    click_button 'Submit'

    expect(page).to have_content("You can't submit an empty recipe name!")
  end

  scenario "user navigates back to the home page after submitting an empty form" do
    visit '/'
    fill_in 'Recipe Name', with: ''
    click_button 'Submit'
    click_on 'Try again!'

    expect(page).to have_content("Enter a recipe name here")
  end
end
