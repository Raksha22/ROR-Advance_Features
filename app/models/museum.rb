class Museum < ApplicationRecord
  def self.create_from_collection(museums)
    museums.each do |museum_hash|
        Museum.create(museum_hash)
    end
  end
end