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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiLocation do
  @moduledoc """


  ## Attributes

  *   `buildingId` (*type:* `String.t`, *default:* `nil`) - 
  *   `buildingName` (*type:* `String.t`, *default:* `nil`) - The building_name field is only filled if the DESK_LOCATION_ADDITIONAL_DATA extension is active.
  *   `current` (*type:* `boolean()`, *default:* `nil`) - 
  *   `deskCode` (*type:* `String.t`, *default:* `nil`) - Most specific textual description of individual desk location.
  *   `floorName` (*type:* `String.t`, *default:* `nil`) - 
  *   `floorSection` (*type:* `String.t`, *default:* `nil`) - 
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Indicates the time this location was added or last edited.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t`, *default:* `nil`) - 
  *   `source` (*type:* `String.t`, *default:* `nil`) - Value indicates the origin of this location information.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Describes the type of location. For e.g. Grew_up, Desk. Corresponds to FBS backend.proto Location.StandardTag
  *   `value` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildingId => String.t() | nil,
          :buildingName => String.t() | nil,
          :current => boolean() | nil,
          :deskCode => String.t() | nil,
          :floorName => String.t() | nil,
          :floorSection => String.t() | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t()
            | nil,
          :source => String.t() | nil,
          :type => String.t() | nil,
          :value => String.t() | nil
        }

  field(:buildingId)
  field(:buildingName)
  field(:current)
  field(:deskCode)
  field(:floorName)
  field(:floorSection)
  field(:lastUpdateTime, as: DateTime)

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata
  )

  field(:source)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiLocation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiLocation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
