require "application_system_test_case"

class SubClassJobsTest < ApplicationSystemTestCase
  setup do
    @sub_class_job = sub_class_jobs(:one)
  end

  test "visiting the index" do
    visit sub_class_jobs_url
    assert_selector "h1", text: "Sub Class Jobs"
  end

  test "creating a Sub class job" do
    visit sub_class_jobs_url
    click_on "New Sub Class Job"

    fill_in "Class job", with: @sub_class_job.class_job_id
    fill_in "Name", with: @sub_class_job.name
    click_on "Create Sub class job"

    assert_text "Sub class job was successfully created"
    click_on "Back"
  end

  test "updating a Sub class job" do
    visit sub_class_jobs_url
    click_on "Edit", match: :first

    fill_in "Class job", with: @sub_class_job.class_job_id
    fill_in "Name", with: @sub_class_job.name
    click_on "Update Sub class job"

    assert_text "Sub class job was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub class job" do
    visit sub_class_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub class job was successfully destroyed"
  end
end
