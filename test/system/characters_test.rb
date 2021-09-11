require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Class job", with: @character.class_job_id
    fill_in "Experience", with: @character.experience
    fill_in "Level", with: @character.level
    fill_in "Name", with: @character.name
    fill_in "Race", with: @character.race_id
    fill_in "Sub class job", with: @character.sub_class_job
    fill_in "Sub race", with: @character.sub_race_id
    fill_in "Total hp", with: @character.total_hp
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Class job", with: @character.class_job_id
    fill_in "Experience", with: @character.experience
    fill_in "Level", with: @character.level
    fill_in "Name", with: @character.name
    fill_in "Race", with: @character.race_id
    fill_in "Sub class job", with: @character.sub_class_job
    fill_in "Sub race", with: @character.sub_race_id
    fill_in "Total hp", with: @character.total_hp
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
