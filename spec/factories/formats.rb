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

FactoryBot.define do
  factory :format do
    name "MyString"
    description "MyString"
  end
end
