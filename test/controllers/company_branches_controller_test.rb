require 'test_helper'

class CompanyBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_branch = company_branches(:one)
    sign_in users(:regular)
  end

  test "should get index" do
    get admin_company_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_company_branch_url
    assert_response :success
  end

  test "should create company_branch" do
    assert_difference('CompanyBranch.count') do
      post admin_company_branches_url, params: { company_branch: { address: @company_branch.address, name: @company_branch.name } }
    end

    assert_redirected_to admin_company_branches_url
  end

  test "should show company_branch" do
    get admin_company_branch_url(@company_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_company_branch_url(@company_branch)
    assert_response :success
  end

  test "should update company_branch" do
    patch admin_company_branch_url(@company_branch), params: { company_branch: { address: @company_branch.address, name: @company_branch.name } }
    assert_redirected_to admin_company_branches_url
  end

  test "should destroy company_branch" do
    assert_difference('CompanyBranch.count', -1) do
      delete admin_company_branch_url(@company_branch)
    end

    assert_redirected_to admin_company_branches_url
  end
end
