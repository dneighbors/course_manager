class Subject < ActiveRecord::Base
  has_many :courses
  
  def code_name
    "#{code} - #{name}"
  end
end
