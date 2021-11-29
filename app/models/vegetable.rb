class Vegetable < ApplicationRecord
  has_many :ratings

  def as_json(options = {})
    number_of_ratings = ratings.count
    rating_values = raings.map(&:value)

     # solution 1:
    total = rating_values.inject(0) do |running_total, value|
      running_total += value
      running_total
    end

    average_rating = total / number_of_ratings
    super(options).merge(average_rating: average_rating)
  end
end

# solutions:
# inject for average
# another solution is to use the average on Rating class.
