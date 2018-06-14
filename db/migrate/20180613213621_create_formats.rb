# frozen_string_literal: true

class CreateFormats < ActiveRecord::Migration[5.2]
  def change
    create_table :formats do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
