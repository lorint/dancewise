class DropEventEventTypes < ActiveRecord::Migration[6.1]
  def change
    drop_table :event_event_types
  end
end
