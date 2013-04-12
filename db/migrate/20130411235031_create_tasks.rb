class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :date
      t.integer :days_before

      t.timestamps
    end
  end
end
