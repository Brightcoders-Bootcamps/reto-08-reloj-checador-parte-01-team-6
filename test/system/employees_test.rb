require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
    sign_in users(:regular)
  end

  test "visiting the index" do
    visit admin_employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit admin_employees_url
    click_on "New Employee"

    fill_in "Email", with: @employee.email
    fill_in "Name", with: @employee.name
    fill_in "Position", with: @employee.position
    fill_in "Private number", with: 1234567
    click_on "Create Employee"

    assert_text "Employee was successfully created"
  end

  test "updating a Employee" do
    visit admin_employees_url
    click_on "Edit", match: :first

    fill_in "Email", with: @employee.email
    fill_in "Name", with: @employee.name
    fill_in "Position", with: @employee.position
    fill_in "Private number", with: @employee.private_number
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
  end

  test "destroying a Employee" do
    visit admin_employees_url
    click_on "Deactivate", match: :first

    assert_text "Employee was successfully updated"
  end
end
