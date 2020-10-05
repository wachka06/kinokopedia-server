require "application_system_test_case"

class MushroomsTest < ApplicationSystemTestCase
  setup do
    @mushroom = mushrooms(:one)
  end

  test "visiting the index" do
    visit mushrooms_url
    assert_selector "h1", text: "Mushrooms"
  end

  test "creating a Mushroom" do
    visit mushrooms_url
    click_on "New Mushroom"

    fill_in "Characteristics", with: @mushroom.characteristics
    fill_in "Common name", with: @mushroom.common_name
    fill_in "Confused with", with: @mushroom.confused_with
    check "Fairy rings" if @mushroom.fairy_rings
    fill_in "Habitat", with: @mushroom.habitat
    fill_in "Img url", with: @mushroom.img_url
    fill_in "Latin name", with: @mushroom.latin_name
    fill_in "Region", with: @mushroom.region
    click_on "Create Mushroom"

    assert_text "Mushroom was successfully created"
    click_on "Back"
  end

  test "updating a Mushroom" do
    visit mushrooms_url
    click_on "Edit", match: :first

    fill_in "Characteristics", with: @mushroom.characteristics
    fill_in "Common name", with: @mushroom.common_name
    fill_in "Confused with", with: @mushroom.confused_with
    check "Fairy rings" if @mushroom.fairy_rings
    fill_in "Habitat", with: @mushroom.habitat
    fill_in "Img url", with: @mushroom.img_url
    fill_in "Latin name", with: @mushroom.latin_name
    fill_in "Region", with: @mushroom.region
    click_on "Update Mushroom"

    assert_text "Mushroom was successfully updated"
    click_on "Back"
  end

  test "destroying a Mushroom" do
    visit mushrooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mushroom was successfully destroyed"
  end
end
