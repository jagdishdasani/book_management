require 'rails_helper'

RSpec.describe "formats/show", type: :view do
  before(:each) do
    @format = assign(:format, Format.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
