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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiTeamsExtendedData do
  @moduledoc """
  *UNSUPPORTED*. This message is never populated and is no longer used.

  ## Attributes

  *   `adminTo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t)`, *default:* `nil`) - 
  *   `admins` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t)`, *default:* `nil`) - 
  *   `dottedLineManagers` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t)`, *default:* `nil`) - 
  *   `dottedLineReports` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonListWithTotalNumber.t`, *default:* `nil`) - 
  *   `failures` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `managementChain` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t)`, *default:* `nil`) - 
  *   `reports` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonListWithTotalNumber.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminTo =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t()
            )
            | nil,
          :admins =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t()
            )
            | nil,
          :dottedLineManagers =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t()
            )
            | nil,
          :dottedLineReports =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonListWithTotalNumber.t()
            | nil,
          :failures => list(String.t()) | nil,
          :managementChain =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson.t()
            )
            | nil,
          :reports =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonListWithTotalNumber.t()
            | nil
        }

  field(:adminTo,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson,
    type: :list
  )

  field(:admins,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson,
    type: :list
  )

  field(:dottedLineManagers,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson,
    type: :list
  )

  field(:dottedLineReports,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonListWithTotalNumber
  )

  field(:failures, type: :list)

  field(:managementChain,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPerson,
    type: :list
  )

  field(:reports,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonListWithTotalNumber
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiTeamsExtendedData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiTeamsExtendedData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiTeamsExtendedData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
