require "test_helper"

class SubClassJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_class_job = sub_class_jobs(:one)
  end

  test "should get index" do
    get sub_class_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_class_job_url
    assert_response :success
  end

  test "should create sub_class_job" do
    assert_difference('SubClassJob.count') do
      post sub_class_jobs_url, params: { sub_class_job: { class_job_id: @sub_class_job.class_job_id, name: @sub_class_job.name } }
    end

    assert_redirected_to sub_class_job_url(SubClassJob.last)
  end

  test "should show sub_class_job" do
    get sub_class_job_url(@sub_class_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_class_job_url(@sub_class_job)
    assert_response :success
  end

  test "should update sub_class_job" do
    patch sub_class_job_url(@sub_class_job), params: { sub_class_job: { class_job_id: @sub_class_job.class_job_id, name: @sub_class_job.name } }
    assert_redirected_to sub_class_job_url(@sub_class_job)
  end

  test "should destroy sub_class_job" do
    assert_difference('SubClassJob.count', -1) do
      delete sub_class_job_url(@sub_class_job)
    end

    assert_redirected_to sub_class_jobs_url
  end
end
