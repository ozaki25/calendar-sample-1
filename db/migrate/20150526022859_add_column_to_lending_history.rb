class AddColumnToLendingHistory < ActiveRecord::Migration
  def change
    add_reference :lending_histories, :request, index: true, foreign_key: true
  end
end
