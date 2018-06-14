require 'rails_helper'

RSpec.describe "formats/new", type: :view do
  before(:each) do
    assign(:format, Format.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new format form" do
    render

    assert_select "form[action=?][method=?]", formats_path, "post" do

      assert_select "input[name=?]", "format[name]"

      assert_select "input[name=?]", "format[description]"
    end
  end
end
