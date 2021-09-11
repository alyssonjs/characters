require "test_helper"

class SubRacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_race = sub_races(:one)
  end

  test "should get index" do
    get sub_races_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_race_url
    assert_response :success
  end

  test "should create sub_race" do
    assert_difference('SubRace.count') do
      post sub_races_url, params: { sub_race: { name: @sub_race.name, race_id: @sub_race.race_id } }
    end

    assert_redirected_to sub_race_url(SubRace.last)
  end

  test "should show sub_race" do
    get sub_race_url(@sub_race)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_race_url(@sub_race)
    assert_response :success
  end

  test "should update sub_race" do
    patch sub_race_url(@sub_race), params: { sub_race: { name: @sub_race.name, race_id: @sub_race.race_id } }
    assert_redirected_to sub_race_url(@sub_race)
  end

  test "should destroy sub_race" do
    assert_difference('SubRace.count', -1) do
      delete sub_race_url(@sub_race)
    end

    assert_redirected_to sub_races_url
  end
end
