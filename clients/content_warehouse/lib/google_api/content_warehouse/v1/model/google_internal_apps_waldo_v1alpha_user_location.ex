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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserLocation do
  @moduledoc """
  Location of the user, which might be "home", for example, or an office building, as well as a custom location specified by the user.

  ## Attributes

  *   `customLocation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaCustomLocation.t`, *default:* `nil`) - Indicates the user is working from some other location.
  *   `homeLocation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaHomeLocation.t`, *default:* `nil`) - Indicates the user is working from home.
  *   `officeLocation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOfficeLocation.t`, *default:* `nil`) - Indicates the user is working from the office.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customLocation =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaCustomLocation.t()
            | nil,
          :homeLocation =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaHomeLocation.t()
            | nil,
          :officeLocation =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOfficeLocation.t()
            | nil
        }

  field(:customLocation,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaCustomLocation
  )

  field(:homeLocation,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaHomeLocation
  )

  field(:officeLocation,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOfficeLocation
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserLocation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserLocation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
