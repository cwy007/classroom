require "rails_helper"

RSpec.feature "Homepage" do
  scenario "has navbar element" do
    visit root_url

    expect(page).to have_css "nav.navbar"
  end

  scenario "welcomes user" do
    visit root_url

    expect(page).to have_text "Welcome"
  end
end
