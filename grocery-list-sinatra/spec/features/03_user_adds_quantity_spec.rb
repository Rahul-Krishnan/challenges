require "spec_helper"

feature "user adds quantities to grocery list" do
  scenario "user adds quantity along with item name" do
    visit "/grocery-list"

    fill_in "Name", with: "Shamwow"
    fill_in "Quantity", with: "50"
    click_on "Add"

    expect(page).to have_content("Shamwow")
    expect(page).to have_content("50")
  end

  scenario "user adds item with no quantity" do
    visit "/grocery-list"

    fill_in "Name", with: "Shamwow"
    click_on "Add"

    expect(page).to have_content("Shamwow")
    expect(page).to have_content("1")
  end

  scenario "user adds quantity with no item" do
    visit "/grocery-list"

    fill_in "Quantity", with: "3056"
    click_on "Add"

    expect(page).not_to have_content("3056")
  end

end
