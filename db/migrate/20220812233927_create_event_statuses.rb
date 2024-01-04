# frozen_string_literal: true

class CreateEventStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :event_statuses do |t|
      t.string :status
      t.integer :event_id

      t.timestamps
    end
  end
end
