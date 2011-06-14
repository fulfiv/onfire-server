require 'test_helper'

class PartiesControllerTest < ActionController::TestCase
  setup do
    @party = parties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party" do
    assert_difference('Party.count') do
      post :create, party: @party.attributes
    end

    assert_redirected_to party_path(assigns(:party))
  end

  test "should show party" do
    get :show, id: @party.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @party.to_param
    assert_response :success
  end

  test "should update party" do
    put :update, id: @party.to_param, party: @party.attributes
    assert_redirected_to party_path(assigns(:party))
  end

  test "should destroy party" do
    assert_difference('Party.count', -1) do
      delete :destroy, id: @party.to_param
    end

    assert_redirected_to parties_path
  end
end
