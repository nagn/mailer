class AddTagTypeToReports < ActiveRecord::Migration
  def change
    add_column :reports, :tag_type, :string
  end
end
