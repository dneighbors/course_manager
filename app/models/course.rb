class Course < ActiveRecord::Base
  belongs_to :subject
  belongs_to :level
  belongs_to :location  
end
