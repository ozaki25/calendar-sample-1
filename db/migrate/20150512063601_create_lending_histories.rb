class CreateLendingHistories < ActiveRecord::Migration
  def change
    create_table :lending_histories do |t|
      t.date :date
      t.references :license, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
