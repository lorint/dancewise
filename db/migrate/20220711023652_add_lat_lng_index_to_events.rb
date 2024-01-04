# frozen_string_literal: true

class AddLatLngIndexToEvents < ActiveRecord::Migration[7.1]
  def change
    add_index :events, [:latitude, :longitude]
  end
end
