class Movie < ApplicationRecord
  validates :director_id, :title, presence: true
  end#must be present

  validates :title, uniqueness:
  {scope: validates :year, uniqueness: true}
  #must be present; must be unique in combination with year
  end
  validates :year, numericality: {greater_than 1870 true}#1870-2050
  end
  validates :year, numericality: {less_than 2050 true}#1870-2050
  end

  validates :year, :duration, numericality: {only_integer: true}
  end
  validates :duration, numericality: {less_than 2764800 true}#0-2764800
  end
  validates :duration, numericality: {greater_than 0 true}#0-2764800
  end
end
