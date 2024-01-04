# frozen_string_literal: true

class AddYearAndMonthToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :event_month, :integer
    add_column :events, :event_year, :integer
  end
end
