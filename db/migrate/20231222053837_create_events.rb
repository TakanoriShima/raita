class AddColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :location, :string
    add_column :events, :deadline_time, :datetime
    add_column :events, :date, :date
    add_column :events, :user_id, :integer
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
    add_column :events, :mensmax_participants, :integer
    add_column :events, :womansmax_participants, :integer
    add_column :events, :mensprice, :integer
    add_column :events, :womansprice, :integer
    add_column :events, :memo, :text

    add_reference :events, :user, null: false, foreign_key: true
  end
end
