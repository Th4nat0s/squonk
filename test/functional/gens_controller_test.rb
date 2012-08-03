require 'test_helper'

class GensControllerTest < ActionController::TestCase
  setup do
    @gen = gens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gen" do
    assert_difference('Gen.count') do
      post :create, gen: { avatar: @gen.avatar, dob: @gen.dob, email: @gen.email, nom: @gen.nom, password: @gen.password, prenom: @gen.prenom, pseudo: @gen.pseudo }
    end

    assert_redirected_to gen_path(assigns(:gen))
  end

  test "should show gen" do
    get :show, id: @gen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gen
    assert_response :success
  end

  test "should update gen" do
    put :update, id: @gen, gen: { avatar: @gen.avatar, dob: @gen.dob, email: @gen.email, nom: @gen.nom, password: @gen.password, prenom: @gen.prenom, pseudo: @gen.pseudo }
    assert_redirected_to gen_path(assigns(:gen))
  end

  test "should destroy gen" do
    assert_difference('Gen.count', -1) do
      delete :destroy, id: @gen
    end

    assert_redirected_to gens_path
  end
end
