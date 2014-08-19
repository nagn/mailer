class Report < ActiveRecord::Base
  enum tag_type: [:no_label, :station, :computer]
end
