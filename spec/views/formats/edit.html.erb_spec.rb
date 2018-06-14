require 'rails_helper'

RSpec.describe "formats/edit", type: :view do
  before(:each) do
    @format = assign(:format, Format.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit format form" do
    render

    assert_select "form[action=?][method=?]", format_path(@format), "post" do

      assert_select "input[name=?]", "format[name]"

      assert_select "input[name=?]", "format[description]"
    end
  end
end
