class AddMaxNumToLicense < ActiveRecord::Migration
  def change
    add_column :licenses, :max_num, :integer
  end
end
