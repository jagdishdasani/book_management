# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    @book = FactoryBot.build(:book)
    @formats = Format.all
    @authors = Author.all
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[base_price]"
    end
  end
end
