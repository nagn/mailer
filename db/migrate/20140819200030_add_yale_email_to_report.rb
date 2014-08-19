class AddYaleEmailToReport < ActiveRecord::Migration
  def change
    add_column :reports, :yale_email, :string
  end
end
