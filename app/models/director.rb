class Director < ApplicationRecord
  #validates :name #must be present; must be unique in combo with dob
  validates :name, uniqueness:
    {scope: => :dob}
  #must be present; must be unique in combination with year
  end
end
