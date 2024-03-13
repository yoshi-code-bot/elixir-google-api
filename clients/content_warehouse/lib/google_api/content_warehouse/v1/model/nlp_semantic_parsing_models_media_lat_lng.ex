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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaLatLng do
  @moduledoc """
  An object representing a latitude/longitude pair. More info in https://cs.corp.google.com/piper///depot/google3/google/type/latlng.proto

  ## Attributes

  *   `latitude` (*type:* `float()`, *default:* `nil`) - The latitude in degrees. It must be in the range [-90.0, +90.0].
  *   `longitude` (*type:* `float()`, *default:* `nil`) - The longitude in degrees. It must be in the range [-180.0, +180.0].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :latitude => float() | nil,
          :longitude => float() | nil
        }

  field(:latitude)
  field(:longitude)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaLatLng do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaLatLng.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaLatLng do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end