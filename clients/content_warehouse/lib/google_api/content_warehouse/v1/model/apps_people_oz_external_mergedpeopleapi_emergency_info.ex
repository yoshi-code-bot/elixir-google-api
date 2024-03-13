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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiEmergencyInfo do
  @moduledoc """
  Emergency info for Person. See go/emergency-trusted-contacts-papi.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t`, *default:* `nil`) - 
  *   `pomeroyId` (*type:* `String.t`, *default:* `nil`) - Opaque id from Pomeroy (go/pomeroy). Non-empty pomeroy_id means that this contact has the potential to become trusted contact or it's already trusted contact. Trust is eventually gaia<->gaia link, but when the trust link is initiated gaia might not be known. Until gaia is discovered, pomeroy_id is used to identify the contact uniquely. If trust_level is missing or set to TRUST_LEVEL_UNSPECIFIED pomeroy_id must be empty.
  *   `trustLevel` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t()
            | nil,
          :pomeroyId => String.t() | nil,
          :trustLevel => String.t() | nil
        }

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata
  )

  field(:pomeroyId)
  field(:trustLevel)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiEmergencyInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiEmergencyInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiEmergencyInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
