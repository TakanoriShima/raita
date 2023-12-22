class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :location
      t.datetime :deadline_time
      t.date :date
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :mensmax_participants
      t.integer :womansmax_participants
      t.integer :mensprice
      t.integer :womansprice
      t.text :memo

      t.timestamps
    end

    t.reference :events, :user, null: false, foreign_key: true
  end
end
