# frozen_string_literal: true

class AddImageColumnToBooks < ActiveRecord::Migration[5.2]
  def up
    add_attachment :books, :image
  end

  def down
    remove_attachment :books, :image
  end
end
