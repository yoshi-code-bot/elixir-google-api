# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProto do
  @moduledoc """
  Example: the choice of chicken, beef, or tofu for the Thai Basil dish. Each option would have its own name, price, allergen info, etc. Note: This proto stores both food and service items despite the name.

  ## Attributes

  *   `allergenAbsent` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `allergenPresent` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `calories` (*type:* `integer()`, *default:* `nil`) - 
  *   `ingredients` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProtoIngredient.t)`, *default:* `nil`) - Ingredients of the food dish option.
  *   `media` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreMediaItemProto.t)`, *default:* `nil`) - Photos of the food dish option.
  *   `nameInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostorePriceListNameInfoProto.t)`, *default:* `nil`) - The repeated name_info field here is for item options with names or descriptions listed in multiple languages. When an item option has no names or descriptions, the size of the repeated field name_info may be 0. For example, when a food menu item does not have multiple options, the item option proto is used only to specify price and nutritional information, so it will not have a name_info field. There should be at most one name_info for any given language.
  *   `nutritionFacts` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFacts.t`, *default:* `nil`) - Nutrition facts of the food dish option. Note that it also includes calories information with a finer defined unit information.
  *   `portionSize` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProtoPortionSize.t`, *default:* `nil`) - Size of the order, represented in units of items. (e.g. 4 "skewers”, 6 "pieces”)
  *   `preparationMethods` (*type:* `list(String.t)`, *default:* `nil`) - Methods on how the food dish option is prepared.
  *   `price` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceRangeProto.t`, *default:* `nil`) - We use PriceRangeProto here but we expect the lower_price and upper_price to be both set to equal numbers because an option should have a single price. This field is not required because food item prices may be variable depending on season.
  *   `restriction` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `servesNumPeople` (*type:* `integer()`, *default:* `nil`) - Number of people can be served by this food dish option.
  *   `spiciness` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allergenAbsent => list(String.t()) | nil,
          :allergenPresent => list(String.t()) | nil,
          :calories => integer() | nil,
          :ingredients =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProtoIngredient.t()
            )
            | nil,
          :media => list(GoogleApi.ContentWarehouse.V1.Model.GeostoreMediaItemProto.t()) | nil,
          :nameInfo =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostorePriceListNameInfoProto.t()) | nil,
          :nutritionFacts =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFacts.t() | nil,
          :portionSize =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProtoPortionSize.t()
            | nil,
          :preparationMethods => list(String.t()) | nil,
          :price => GoogleApi.ContentWarehouse.V1.Model.GeostorePriceRangeProto.t() | nil,
          :restriction => list(String.t()) | nil,
          :servesNumPeople => integer() | nil,
          :spiciness => String.t() | nil
        }

  field(:allergenAbsent, type: :list)
  field(:allergenPresent, type: :list)
  field(:calories)

  field(:ingredients,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProtoIngredient,
    type: :list
  )

  field(:media, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreMediaItemProto, type: :list)

  field(:nameInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceListNameInfoProto,
    type: :list
  )

  field(:nutritionFacts,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFacts
  )

  field(:portionSize,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProtoPortionSize
  )

  field(:preparationMethods, type: :list)
  field(:price, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceRangeProto)
  field(:restriction, type: :list)
  field(:servesNumPeople)
  field(:spiciness)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreFoodMenuItemOptionProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
