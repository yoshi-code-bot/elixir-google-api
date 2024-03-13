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

defmodule GoogleApi.ContentWarehouse.V1.Model.AbuseiamUserRestriction do
  @moduledoc """
  Describes restrictions on where the verdict applies. Please use {@code TakedownManager} to evaluate this proto.

  ## Attributes

  *   `ageRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamAgeRestriction.t`, *default:* `nil`) - 
  *   `andRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamAndRestriction.t`, *default:* `nil`) - Operators
  *   `constantRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamConstantRestriction.t`, *default:* `nil`) - Constant
  *   `geoRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamGeoRestriction.t`, *default:* `nil`) - Leaf Nodes
  *   `notRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamNotRestriction.t`, *default:* `nil`) - 
  *   `orRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamOrRestriction.t`, *default:* `nil`) - 
  *   `specialRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamSpecialRestriction.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ageRestriction => GoogleApi.ContentWarehouse.V1.Model.AbuseiamAgeRestriction.t() | nil,
          :andRestriction => GoogleApi.ContentWarehouse.V1.Model.AbuseiamAndRestriction.t() | nil,
          :constantRestriction =>
            GoogleApi.ContentWarehouse.V1.Model.AbuseiamConstantRestriction.t() | nil,
          :geoRestriction => GoogleApi.ContentWarehouse.V1.Model.AbuseiamGeoRestriction.t() | nil,
          :notRestriction => GoogleApi.ContentWarehouse.V1.Model.AbuseiamNotRestriction.t() | nil,
          :orRestriction => GoogleApi.ContentWarehouse.V1.Model.AbuseiamOrRestriction.t() | nil,
          :specialRestriction =>
            GoogleApi.ContentWarehouse.V1.Model.AbuseiamSpecialRestriction.t() | nil
        }

  field(:ageRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamAgeRestriction)
  field(:andRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamAndRestriction)
  field(:constantRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamConstantRestriction)
  field(:geoRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamGeoRestriction)
  field(:notRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamNotRestriction)
  field(:orRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamOrRestriction)
  field(:specialRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamSpecialRestriction)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AbuseiamUserRestriction do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AbuseiamUserRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AbuseiamUserRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end