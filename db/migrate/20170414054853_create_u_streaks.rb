class CreateUStreaks < ActiveRecord::Migration[5.0]
  def change
    create_table :u_streaks do |t|
      t.string  :title
      t.integer :duration
      t.integer :interval
      t.datetime :last_checked

      t.references :user

      t.timestamps
    end
  end
end
