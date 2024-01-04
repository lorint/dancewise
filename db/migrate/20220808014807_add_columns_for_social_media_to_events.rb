# frozen_string_literal: true

class AddColumnsForSocialMediaToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :website_url, :string
    add_column :events, :facebook_url, :string
    add_column :events, :instagram_url, :string
    add_column :events, :ticket_url, :string
  end
end
