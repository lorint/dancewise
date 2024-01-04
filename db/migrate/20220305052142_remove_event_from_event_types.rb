# frozen_string_literal: true

class RemoveEventFromEventTypes < ActiveRecord::Migration[7.1]
  def change
    remove_column :event_types, :event_id
  end
end
