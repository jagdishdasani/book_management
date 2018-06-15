# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = FactoryBot.create(:book)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
