require "application_system_test_case"

class OutreachesTest < ApplicationSystemTestCase
  setup do
    @outreach = outreaches(:one)
  end

  test "visiting the index" do
    visit outreaches_url
    assert_selector "h1", text: "Outreaches"
  end

  test "should create outreach" do
    visit outreaches_url
    click_on "New outreach"

    fill_in "Email", with: @outreach.email
    fill_in "First name", with: @outreach.first_name
    fill_in "Instagram", with: @outreach.instagram
    fill_in "Last name", with: @outreach.last_name
    fill_in "Phone", with: @outreach.phone
    click_on "Create Outreach"

    assert_text "Outreach was successfully created"
    click_on "Back"
  end

  test "should update Outreach" do
    visit outreach_url(@outreach)
    click_on "Edit this outreach", match: :first

    fill_in "Email", with: @outreach.email
    fill_in "First name", with: @outreach.first_name
    fill_in "Instagram", with: @outreach.instagram
    fill_in "Last name", with: @outreach.last_name
    fill_in "Phone", with: @outreach.phone
    click_on "Update Outreach"

    assert_text "Outreach was successfully updated"
    click_on "Back"
  end

  test "should destroy Outreach" do
    visit outreach_url(@outreach)
    click_on "Destroy this outreach", match: :first

    assert_text "Outreach was successfully destroyed"
  end
end
