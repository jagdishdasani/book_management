# frozen_string_literal: true

# == Schema Information
#
# Table name: book_authors
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint(8)
#  book_id    :bigint(8)
#
# Indexes
#
#  index_book_authors_on_author_id  (author_id)
#  index_book_authors_on_book_id    (book_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (book_id => books.id)
#

require 'rails_helper'

RSpec.describe BookAuthor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
