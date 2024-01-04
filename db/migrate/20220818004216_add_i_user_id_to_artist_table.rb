# frozen_string_literal: true

class AddIUserIdToArtistTable < ActiveRecord::Migration[7.1]
  def change
    add_column :artists, :user_id, :integer
  end
end
