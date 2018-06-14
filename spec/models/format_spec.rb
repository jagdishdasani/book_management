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
  pending "add some examples to (or delete) #{__FILE__}"
end
