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

FactoryBot.define do
  factory :author do
    sequence(:name) {|n| "Name #{n}" }
    sequence(:description) {|n| "Description #{n}" }
  end
end
