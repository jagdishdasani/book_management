# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
             Author.create!(
               :name => "Name",
               :description => "Description"
             ),
             Author.create!(
               :name => "Name1",
               :description => "Description1"
             )
    ])
  end

  it "renders a list of authors" do
    render
    expect(rendered).to match /Name/
    expect(rendered).to match /Name1/
  end
end
