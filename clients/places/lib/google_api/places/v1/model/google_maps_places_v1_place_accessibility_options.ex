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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAccessibilityOptions do
  @moduledoc """
  Information about the accessibility options a place offers.

  ## Attributes

  *   `wheelchairAccessibleEntrance` (*type:* `boolean()`, *default:* `nil`) - Places has wheelchair accessible entrance.
  *   `wheelchairAccessibleParking` (*type:* `boolean()`, *default:* `nil`) - Place offers wheelchair accessible parking.
  *   `wheelchairAccessibleRestroom` (*type:* `boolean()`, *default:* `nil`) - Place has wheelchair accessible restroom.
  *   `wheelchairAccessibleSeating` (*type:* `boolean()`, *default:* `nil`) - Place has wheelchair accessible seating.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :wheelchairAccessibleEntrance => boolean() | nil,
          :wheelchairAccessibleParking => boolean() | nil,
          :wheelchairAccessibleRestroom => boolean() | nil,
          :wheelchairAccessibleSeating => boolean() | nil
        }

  field(:wheelchairAccessibleEntrance)
  field(:wheelchairAccessibleParking)
  field(:wheelchairAccessibleRestroom)
  field(:wheelchairAccessibleSeating)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAccessibilityOptions do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAccessibilityOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAccessibilityOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end