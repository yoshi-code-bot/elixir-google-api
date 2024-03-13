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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOfficeLocation do
  @moduledoc """
  Office location.

  ## Attributes

  *   `experimentalBuildingId` (*type:* `String.t`, *default:* `nil`) - Experimental. Can change or disappear without warning or notice. References a building from http://google3/ccc/hosted/api/rosy/resources/calendar/building.proto For example "US-NYC-9TH".
  *   `experimentalDeskId` (*type:* `String.t`, *default:* `nil`) - Experimental. Can change or disappear without warning or notice. The desk id. For example "11E358K".
  *   `experimentalFloorId` (*type:* `String.t`, *default:* `nil`) - Experimental. Can change or disappear without warning or notice. The floor id. For example "11".
  *   `label` (*type:* `String.t`, *default:* `nil`) - The display label of this office location. For example a building name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :experimentalBuildingId => String.t() | nil,
          :experimentalDeskId => String.t() | nil,
          :experimentalFloorId => String.t() | nil,
          :label => String.t() | nil
        }

  field(:experimentalBuildingId)
  field(:experimentalDeskId)
  field(:experimentalFloorId)
  field(:label)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOfficeLocation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOfficeLocation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOfficeLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end