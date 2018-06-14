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
# Class for books
class Book < ApplicationRecord
  belongs_to :format

  delegate :name, to: :format, prefix: true

  scope :hard_cover, -> { joins(:format).where('formats.name = ?', 'Hardcover') }

  has_many :book_authors, dependent: :destroy
  has_many :authors, through: :book_authors

  accepts_nested_attributes_for :book_authors

  validates :title, :image,  presence: true

  validates :base_price, presence: true, if: :valid_release_date?

  has_attached_file :image

  validates_attachment :image, content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'] }

  def valid_release_date?
    release_date? && (release_date < Date.today + 2.months)
  end

  def author_id
    authors.first.id if authors.present?
  end
end
