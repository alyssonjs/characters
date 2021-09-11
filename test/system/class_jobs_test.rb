require "application_system_test_case"

class ClassJobsTest < ApplicationSystemTestCase
  setup do
    @class_job = class_jobs(:one)
  end

  test "visiting the index" do
    visit class_jobs_url
    assert_selector "h1", text: "Class Jobs"
  end

  test "creating a Class job" do
    visit class_jobs_url
    click_on "New Class Job"

    fill_in "Name", with: @class_job.name
    click_on "Create Class job"

    assert_text "Class job was successfully created"
    click_on "Back"
  end

  test "updating a Class job" do
    visit class_jobs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @class_job.name
    click_on "Update Class job"

    assert_text "Class job was successfully updated"
    click_on "Back"
  end

  test "destroying a Class job" do
    visit class_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class job was successfully destroyed"
  end
end
