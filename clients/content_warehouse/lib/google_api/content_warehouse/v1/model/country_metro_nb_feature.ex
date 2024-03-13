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

defmodule GoogleApi.ContentWarehouse.V1.Model.CountryMetroNBFeature do
  @moduledoc """
  A metro feature, keyed by NavBoost feature id V2. This can be a metro id, a boost, or extended in the future to add probabilities or weights.

  ## Attributes

  *   `enclosingProvinceGeotoken` (*type:* `integer()`, *default:* `nil`) - The enclosing_province_geotoken is a 32 bit fingerprint of the state encosing the (metro) id. MetroId's can span multiple states. Enclosing geotoken is filled in with the state name for disambiguation. ProvinceGeotoken field is different as it indicates an "interest". Format: 32 bit fingerprint(__state__country).
  *   `id` (*type:* `integer()`, *default:* `nil`) - A 32 bit navboost v2 feature id encoding (country, language, metro). NavBoosterUtils class (google3/quality/navboost/nav_booster_utils.h) provides functions to decode this feature.
  *   `navboost` (*type:* `number()`, *default:* `nil`) - This is the multiplier to apply to the result for this locale & query. NOTE: This is for serving purposes only and should not be populated in the index.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enclosingProvinceGeotoken => integer() | nil,
          :id => integer() | nil,
          :navboost => number() | nil
        }

  field(:enclosingProvinceGeotoken)
  field(:id)
  field(:navboost)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CountryMetroNBFeature do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CountryMetroNBFeature.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CountryMetroNBFeature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
