class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :date
      t.string :name
      t.string :department
      t.string :status
      t.integer :controller
      t.integer :division
      t.integer :block

      t.timestamps null: false
    end
  end
end
