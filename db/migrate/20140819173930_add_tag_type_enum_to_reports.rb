class AddTagTypeEnumToReports < ActiveRecord::Migration
  def change
    add_column :reports, :tag_type, :integer
  end
end
