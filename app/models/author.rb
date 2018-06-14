# frozen_string_literal: true

# == Schema Information
#
# Table name: authors
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Class for authors
class Author < ApplicationRecord
  has_many :book_authors, dependent: :destroy
  has_many :books, through: :book_authors

  validates :name, :description, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
