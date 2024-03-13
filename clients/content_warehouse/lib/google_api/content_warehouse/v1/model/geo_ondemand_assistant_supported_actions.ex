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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeoOndemandAssistantSupportedActions do
  @moduledoc """
  Actions supported by Madden for a local entity.

  ## Attributes

  *   `allowsGuestCheckout` (*type:* `boolean()`, *default:* `nil`) - Whether this local entity allows guest checkout for reservations.
  *   `isAsynchronousRestaurantReservation` (*type:* `boolean()`, *default:* `nil`) - Whether or not this local entity supports asynchronous restaurant reservations, through the above restaurant_reservation_url.
  *   `restaurantReservationUrl` (*type:* `String.t`, *default:* `nil`) - URL for the Madden restaurant reservation flow, e.g. for display in a WebView. Not populated if restaurant reservations are not supported for the local entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowsGuestCheckout => boolean() | nil,
          :isAsynchronousRestaurantReservation => boolean() | nil,
          :restaurantReservationUrl => String.t() | nil
        }

  field(:allowsGuestCheckout)
  field(:isAsynchronousRestaurantReservation)
  field(:restaurantReservationUrl)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeoOndemandAssistantSupportedActions do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeoOndemandAssistantSupportedActions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeoOndemandAssistantSupportedActions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
