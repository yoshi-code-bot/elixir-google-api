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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummary do
  @moduledoc """
  The duration and distance from the routing origin to a place in the response, and a second leg from that place to the destination, if requested. **Note:** Adding `routingSummaries` in the field mask without also including either the `routingParameters.origin` parameter or the `searchAlongRouteParameters.polyline.encodedPolyline` parameter in the request causes an error.

  ## Attributes

  *   `directionsUri` (*type:* `String.t`, *default:* `nil`) - A link to show directions on Google Maps using the waypoints from the given routing summary. The route generated by this link is not guaranteed to be the same as the route used to generate the routing summary. The link uses information provided in the request, from fields including `routingParameters` and `searchAlongRouteParameters` when applicable, to generate the directions link.
  *   `legs` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummaryLeg.t)`, *default:* `nil`) - The legs of the trip. When you calculate travel duration and distance from a set origin, `legs` contains a single leg containing the duration and distance from the origin to the destination. When you do a search along route, `legs` contains two legs: one from the origin to place, and one from the place to the destination.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :directionsUri => String.t() | nil,
          :legs => list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummaryLeg.t()) | nil
        }

  field(:directionsUri)
  field(:legs, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummaryLeg, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummary do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1RoutingSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
