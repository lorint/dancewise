class ChangeEventMonthtoString < ActiveRecord::Migration[7.1]
  def change
    change_column :events, :event_month, :string
end
end