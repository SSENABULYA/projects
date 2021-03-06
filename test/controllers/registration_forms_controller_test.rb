require 'test_helper'

class RegistrationFormsControllerTest < ActionController::TestCase
  setup do
    @registration_form = registration_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_form" do
    assert_difference('RegistrationForm.count') do
      post :create, registration_form: { city: @registration_form.city, country: @registration_form.country, email: @registration_form.email, first_Name: @registration_form.first_Name, last_Name: @registration_form.last_Name, street: @registration_form.street, telephone_Number: @registration_form.telephone_Number }
    end

    assert_redirected_to registration_form_path(assigns(:registration_form))
  end

  test "should show registration_form" do
    get :show, id: @registration_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration_form
    assert_response :success
  end

  test "should update registration_form" do
    patch :update, id: @registration_form, registration_form: { city: @registration_form.city, country: @registration_form.country, email: @registration_form.email, first_Name: @registration_form.first_Name, last_Name: @registration_form.last_Name, street: @registration_form.street, telephone_Number: @registration_form.telephone_Number }
    assert_redirected_to registration_form_path(assigns(:registration_form))
  end

  test "should destroy registration_form" do
    assert_difference('RegistrationForm.count', -1) do
      delete :destroy, id: @registration_form
    end

    assert_redirected_to registration_forms_path
  end
end
