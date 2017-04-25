# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Arclight', type: :feature do
  it 'an index view is present with search results' do
    visit search_catalog_path q: '', search_field: 'all_fields'
    expect(page).to have_css '.document', count: 10
  end

  describe 'show page' do
    it 'renders metadata to meet minumum DACS requirements for a component'
  end
  describe 'Search history' do
    it 'successfully navigates' do
      visit blacklight.search_history_path
      expect(page).to have_css 'h3', text: 'You have no search history'
    end
  end
end
