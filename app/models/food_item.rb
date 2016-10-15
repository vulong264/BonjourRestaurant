class FoodItem < ApplicationRecord
  belongs_to :section
    def self.search(search)
    where('name LIKE ?', "%#{search}%")
    end

    def self.filter(filter)
    where('cruisine LIKE ?', "%#{filter}%")
    end

    def self.searchItem(item_id)
    where('id = ?',"%#{item_id}")
    end
end
