require "application_system_test_case"

class CondosTest < ApplicationSystemTestCase
  setup do
    @condo = condos(:one)
  end

  test "visiting the index" do
    visit condos_url
    assert_selector "h1", text: "Condos"
  end

  test "creating a Condo" do
    visit condos_url
    click_on "New Condo"

    fill_in "Name", with: @condo.name
    click_on "Create Condo"

    assert_text "Condo was successfully created"
    click_on "Back"
  end

  test "updating a Condo" do
    visit condos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @condo.name
    click_on "Update Condo"

    assert_text "Condo was successfully updated"
    click_on "Back"
  end

  test "destroying a Condo" do
    visit condos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Condo was successfully destroyed"
  end
end
