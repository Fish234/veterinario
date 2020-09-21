class Pet < ApplicationRecord
    belongs_to :pet
    has_many :pet_histories
    delegate :count, to: :pet_histories, prefix: true

    def average_weight
        pet_histories.average(:weight)
    end

    def average_height
        pet_histories.average(:height)
    end

    def max_weight
        pet_histories.pluck(:weight).max
    end

    def max_height
        pet_histories.pluck(:height).max
    end
end
