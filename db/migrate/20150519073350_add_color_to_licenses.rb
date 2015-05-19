class AddColorToLicenses < ActiveRecord::Migration
  def change
    add_column :licenses, :color, :string
  end
end
