require "application_system_test_case"

class SubRacesTest < ApplicationSystemTestCase
  setup do
    @sub_race = sub_races(:one)
  end

  test "visiting the index" do
    visit sub_races_url
    assert_selector "h1", text: "Sub Races"
  end

  test "creating a Sub race" do
    visit sub_races_url
    click_on "New Sub Race"

    fill_in "Name", with: @sub_race.name
    fill_in "Race", with: @sub_race.race_id
    click_on "Create Sub race"

    assert_text "Sub race was successfully created"
    click_on "Back"
  end

  test "updating a Sub race" do
    visit sub_races_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sub_race.name
    fill_in "Race", with: @sub_race.race_id
    click_on "Update Sub race"

    assert_text "Sub race was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub race" do
    visit sub_races_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub race was successfully destroyed"
  end
end
