class CreateFatigues < ActiveRecord::Migration
  def change
    create_table :fatigues do |t|
      t.integer :user_id
      t.datetime :date
      t.integer :fatigue

      t.timestamps
    end
  end
end
