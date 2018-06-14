class Format < ApplicationRecord
	has_many :books

	validates :name, :description, presence: true
	validates :name, uniqueness: { case_sensitive: false }
end
