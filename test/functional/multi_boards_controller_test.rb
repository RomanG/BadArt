require 'test_helper'

class MultiBoardsControllerTest < ActionController::TestCase
  setup do
    @multi_board = multi_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multi_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multi_board" do
    assert_difference('MultiBoard.count') do
      post :create, multi_board: { link: @multi_board.link }
    end

    assert_redirected_to multi_board_path(assigns(:multi_board))
  end

  test "should show multi_board" do
    get :show, id: @multi_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multi_board
    assert_response :success
  end

  test "should update multi_board" do
    put :update, id: @multi_board, multi_board: { link: @multi_board.link }
    assert_redirected_to multi_board_path(assigns(:multi_board))
  end

  test "should destroy multi_board" do
    assert_difference('MultiBoard.count', -1) do
      delete :destroy, id: @multi_board
    end

    assert_redirected_to multi_boards_path
  end
end
