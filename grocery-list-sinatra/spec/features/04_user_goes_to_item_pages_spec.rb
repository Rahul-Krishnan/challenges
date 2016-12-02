require "spec_helper"

feature "user goes to item pages" do
  scenario "user views specific list item" do
    visit "/grocery-list"

    fill_in "Name", with: "Shamwow"
    fill_in "Quantity", with: "50"
    click_on "Add"
    click_on "Shamwow"

    expect(page).to have_content("The item is Shamwow")
    expect(page).to have_content("You need to buy 50")
  end

end
