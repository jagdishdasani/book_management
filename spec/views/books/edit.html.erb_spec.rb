# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = FactoryBot.create(:book)
    @formats = Format.all
    @authors = Author.all
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[base_price]"
    end
  end
end
