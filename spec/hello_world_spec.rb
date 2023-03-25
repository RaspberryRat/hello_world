require 'rails_helper'

Capybara.default_driver = :selenium_chrome_headless

RSpec.describe 'Hello World', type: :system do

  describe 'index page' do
    it 'shows the right content' do
      visit hello_world_index_path
      expect(page).to have_content('Hello, world!')
    end
  end
end
