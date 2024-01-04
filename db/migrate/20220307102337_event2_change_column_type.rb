# frozen_string_literal: true

class Event2ChangeColumnType < ActiveRecord::Migration[7.1]
  def change
    change_column_null(:events, :event_frequency_id, false, 6)
  end
end
