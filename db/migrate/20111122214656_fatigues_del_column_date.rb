class FatiguesDelColumnDate < ActiveRecord::Migration
  def up
    remove_column :fatigues, :date
  end

  def down
    add_column :fatigues, :date, :datetime
  end
end
