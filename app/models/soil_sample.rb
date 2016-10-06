class SoilSample < ActiveRecord::Base
  validates :location, presence: true, length: { minimum: 10 }
  def self.by_city(city)
    where(location: city).order(:color)
  end
end
