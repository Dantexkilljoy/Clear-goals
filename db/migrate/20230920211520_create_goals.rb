class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.date :date
      t.integer :user_id
      t.string :progress
      t.string :priorities

      t.timestamps
    end
  end
end
