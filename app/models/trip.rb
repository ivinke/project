class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :cities

  validates :from_city_id, :presence => true
  validates :to_city_id, :presence => true
  validates :time, :presence => true
  validates :cost, :presence => true

  validates :transportation, :presence => true

  def from_city
     City.find(from_city_id)

  end

  def to_city
      City.find(to_city_id)
  end

end
