class CreateFriday13ths < ActiveRecord::Migration
  def change
    create_table :friday_13ths do |t|
      t.string :name
      t.string :superstition

      t.timestamps null: false
    end
  end
end
