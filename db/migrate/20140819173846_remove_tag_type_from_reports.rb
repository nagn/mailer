class RemoveTagTypeFromReports < ActiveRecord::Migration
  def change
    remove_column :reports, :tag_type
  end
end
