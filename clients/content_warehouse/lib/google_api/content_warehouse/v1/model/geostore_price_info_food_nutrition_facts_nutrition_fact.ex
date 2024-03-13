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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact do
  @moduledoc """
  This message denotes nutrition information with an upper bound and lower bound range and can be represented by mass unit.

  ## Attributes

  *   `lowerAmount` (*type:* `float()`, *default:* `nil`) - 
  *   `unit` (*type:* `String.t`, *default:* `nil`) - Unit of the given nutrition information.
  *   `upperAmount` (*type:* `float()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lowerAmount => float() | nil,
          :unit => String.t() | nil,
          :upperAmount => float() | nil
        }

  field(:lowerAmount)
  field(:unit)
  field(:upperAmount)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end