# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id                 :bigint(8)        not null, primary key
#  base_price         :integer
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  release_date       :date
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  format_id          :bigint(8)
#
# Indexes
#
#  index_books_on_format_id  (format_id)
#

require 'rails_helper'

RSpec.describe Book, type: :model do

  let(:book) { create :book }


  describe 'Authors' do
    it 'has authors' do
      expect(book.authors.count).to eq(1)
    end

    it 'has book authors' do
      expect(book.book_authors.count).to eq(1)
    end
  end



end
