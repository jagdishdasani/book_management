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

require 'rails_helper'

RSpec.describe Author, type: :model do
  let!(:author) { create :author }

  describe '#' do
    it "is valid with valid attributes" do
      expect(author).to be_valid
    end

    it "is invalid as unique name" do
      author = create(:author, name: "Name 1")
      expect(author).to be_invalid
    end
  end
end
