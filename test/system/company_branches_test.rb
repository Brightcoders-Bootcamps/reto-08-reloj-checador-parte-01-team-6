require "application_system_test_case"

class CompanyBranchesTest < ApplicationSystemTestCase
  setup do
    @company_branch = company_branches(:one)
  end

  test "visiting the index" do
    visit company_branches_url
    assert_selector "h1", text: "Company Branches"
  end

  test "creating a Company branch" do
    visit company_branches_url
    click_on "New Company Branch"

    fill_in "Address", with: @company_branch.address
    fill_in "Name", with: @company_branch.name
    click_on "Create Company branch"

    assert_text "Company branch was successfully created"
    click_on "Back"
  end

  test "updating a Company branch" do
    visit company_branches_url
    click_on "Edit", match: :first

    fill_in "Address", with: @company_branch.address
    fill_in "Name", with: @company_branch.name
    click_on "Update Company branch"

    assert_text "Company branch was successfully updated"
    click_on "Back"
  end

  test "destroying a Company branch" do
    visit company_branches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company branch was successfully destroyed"
  end
end
