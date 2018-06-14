# frozen_string_literal: true

# == Schema Information
#
# Table name: formats
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Format < ApplicationRecord
  has_many :books

  validates :name, :description, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
