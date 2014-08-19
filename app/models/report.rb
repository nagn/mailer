class Report < ActiveRecord::Base
  enum tag_type: [ :station, :computer]
end
