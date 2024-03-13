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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiExtensionAppsWaldoExtendedData do
  @moduledoc """
  Waldo-related extension data.

  ## Attributes

  *   `availabilities` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailabilities.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availabilities =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailabilities.t()
            | nil
        }

  field(:availabilities,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailabilities
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiExtensionAppsWaldoExtendedData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiExtensionAppsWaldoExtendedData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphWireProtoPeopleapiExtensionAppsWaldoExtendedData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
