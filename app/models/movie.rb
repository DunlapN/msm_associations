class Movie < ApplicationRecord
  belongs_to :director, :class_name => "Director", :foreign_key => "director_id"
  has_many :characters, :class_name => "Character", :foreign_key => "movie_id"
  has_many :actors, :through => :characters

  validates :director_id, :presence => true

   validates :title, :presence => true, :uniqueness => {:scope => :year}
     #must be present; must be unique in combination with year

    validates :year, :numericality => {:greater_than  => 1870, :less_than => 2050, :only_integer => true}


    validates :duration, :allow_blank => true, :numericality => {:only_integer => true, :less_than => 2764800, :greater_than_or_equal_to => 0}#0-2764800

end
