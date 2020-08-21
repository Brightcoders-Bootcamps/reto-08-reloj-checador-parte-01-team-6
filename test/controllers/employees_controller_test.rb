require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @employee = employees(:one)
    sign_in users(:regular)
  end

  test "should get index" do
    get admin_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post admin_employees_url, params: { employee: { email: "test@test.io", name: @employee.name, position: @employee.position, private_number: '12345' } }
    end

    assert_redirected_to admin_employees_url
  end

  test "should show employee" do
    get admin_employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch admin_employee_url(@employee), params: { employee: { email: 'test@test.io', name: @employee.name, position: '12345', private_number: @employee.private_number } }
    assert_redirected_to admin_employees_url
  end
end
