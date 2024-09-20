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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchNearbyResponse do
  @moduledoc """
  Response proto for Search Nearby. 

  ## Attributes

  *   `places` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Place.t)`, *default:* `nil`) - A list of places that meets user's requirements like places types, number of places and specific location restriction.
  *   `routingSummaries` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummary.t)`, *default:* `nil`) - A list of routing summaries where each entry associates to the corresponding place in the same index in the `places` field. If the routing summary is not available for one of the places, it will contain an empty entry. This list should have as many entries as the list of places if requested.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :places => list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Place.t()) | nil,
          :routingSummaries =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummary.t()) | nil
        }

  field(:places, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Place, type: :list)

  field(:routingSummaries,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummary,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchNearbyResponse do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchNearbyResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1SearchNearbyResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
