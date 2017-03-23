class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :food_item

  @@conversion_table = {
    'L' => {
      'fl oz' => 34,
    },
    'fl oz' => {
      'L' => 1/34.0
    }

  }

  ["ml", "L", "g", "kg", "cup", "tsp", "Tbsp", "oz", "fl oz", "lb", ""]

  def convert_formatted( to_unit )

    if @@conversion_table.key?( unit ) and @@conversion_table[ unit ].key?( to_unit )
      (qty * @@conversion_table[ unit ][ to_unit ]).to_s + " " + to_unit
    else
      qty.to_s + " " + unit
    end

  end

end
