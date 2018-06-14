require 'rails_helper'

RSpec.describe "formats/index", type: :view do
  before(:each) do
    assign(:formats, [
      Format.create!(
        :name => "Name",
        :description => "Description"
      ),
      Format.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of formats" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
