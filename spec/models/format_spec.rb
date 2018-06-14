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

require 'rails_helper'

RSpec.describe Format, type: :model do

  let(:format) { build :format }

  describe '#' do
    it "is valid with valid attributes" do
      expect(format).to be_valid
    end

    it "unique name" do
      create(:format)
      expect(format).to be_invalid
    end
  end
end
