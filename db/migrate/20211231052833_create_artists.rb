# frozen_string_literal: true

class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.timestamps
    end
  end
end
