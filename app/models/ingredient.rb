class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :food_item

  # create table for metric <--> imperial conversions
  @@conversion_table = {
    'Imperial' => {
      'L' => {
        'fl oz' => 35,
      },
      'ml' => {
        'fl oz' => 1/30.0,
      },
      'g' => {
        'oz' => 0.035,
      },
      'kg' => {
        'oz' => 35,
      }
    },
    'Metric' => {
      'fl oz' => {
        'L' => 1/35.0,
        'ml' => 30
      },
      'oz' => {
        'g' => 28.35,
        'kg' => 0.028
      },
      'lb' => {
        'g' => 453.59,
        'kg' => 0.45
      }
    }
  }

  def convert_formatted(measurement_sys)

    if @@conversion_table[measurement_sys].key?(unit) # check if the requested measurement system has the corresponding keys matched with the recipe ingredient units
      conversion_unit = @@conversion_table[measurement_sys][unit]
      (qty * conversion_unit.values.pop).round(2).to_s + " " + conversion_unit.keys.pop # pop the value out of the array
    else # if not in the table then return the original value
      qty.to_s + " " + unit
    end
  end

end
