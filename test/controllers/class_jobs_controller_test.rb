require "test_helper"

class ClassJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_job = class_jobs(:one)
  end

  test "should get index" do
    get class_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_class_job_url
    assert_response :success
  end

  test "should create class_job" do
    assert_difference('ClassJob.count') do
      post class_jobs_url, params: { class_job: { name: @class_job.name } }
    end

    assert_redirected_to class_job_url(ClassJob.last)
  end

  test "should show class_job" do
    get class_job_url(@class_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_job_url(@class_job)
    assert_response :success
  end

  test "should update class_job" do
    patch class_job_url(@class_job), params: { class_job: { name: @class_job.name } }
    assert_redirected_to class_job_url(@class_job)
  end

  test "should destroy class_job" do
    assert_difference('ClassJob.count', -1) do
      delete class_job_url(@class_job)
    end

    assert_redirected_to class_jobs_url
  end
end
