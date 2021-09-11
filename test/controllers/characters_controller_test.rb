require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { class_job_id: @character.class_job_id, experience: @character.experience, level: @character.level, name: @character.name, race_id: @character.race_id, sub_class_job: @character.sub_class_job, sub_race_id: @character.sub_race_id, total_hp: @character.total_hp } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { class_job_id: @character.class_job_id, experience: @character.experience, level: @character.level, name: @character.name, race_id: @character.race_id, sub_class_job: @character.sub_class_job, sub_race_id: @character.sub_race_id, total_hp: @character.total_hp } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
