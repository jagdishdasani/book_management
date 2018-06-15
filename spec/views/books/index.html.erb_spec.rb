# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    @books = FactoryBot.create_list(:book, 2)
    assign(:books, @books)

  end

  it "renders a list of books" do
    allow(view).to receive_messages(:will_paginate => nil)
    render
    expect(rendered).to match /Name 1/
    expect(rendered).to match /Name 2/
  end
end
