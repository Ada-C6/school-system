require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get the new form" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "load show with given student" do
    get :show, { id: students(:one).id }
    assert_template 'show'
  end

  test "create stuff" do
    assert_difference('Student.count', 1) do
      post :create, { student: { first_name: "Hey", last_name: "Dude" }}
    end
    assert_redirected_to students_path
  end

end
