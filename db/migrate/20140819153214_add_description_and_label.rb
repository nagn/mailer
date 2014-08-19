class AddDescriptionAndLabel < ActiveRecord::Migration
  def change
    add_column :reports, :label, :string
    add_column :reports, :description, :text
  end
end
