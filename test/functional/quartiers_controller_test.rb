require 'test_helper'

class QuartiersControllerTest < ActionController::TestCase
  setup do
    @quartier = quartiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quartiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quartier" do
    assert_difference('Quartier.count') do
      post :create, quartier: { coordonnees: @quartier.coordonnees, nom: @quartier.nom }
    end

    assert_redirected_to quartier_path(assigns(:quartier))
  end

  test "should show quartier" do
    get :show, id: @quartier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quartier
    assert_response :success
  end

  test "should update quartier" do
    put :update, id: @quartier, quartier: { coordonnees: @quartier.coordonnees, nom: @quartier.nom }
    assert_redirected_to quartier_path(assigns(:quartier))
  end

  test "should destroy quartier" do
    assert_difference('Quartier.count', -1) do
      delete :destroy, id: @quartier
    end

    assert_redirected_to quartiers_path
  end
end
