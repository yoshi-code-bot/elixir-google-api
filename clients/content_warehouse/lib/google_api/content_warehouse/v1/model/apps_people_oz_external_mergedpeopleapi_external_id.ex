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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiExternalId do
  @moduledoc """
  External identifier associated with the person.

  ## Attributes

  *   `formattedType` (*type:* `String.t`, *default:* `nil`) - The `type` translated and formatted in the request locale. See go/people-api-howto/localization for details on how to usage.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t`, *default:* `nil`) - 
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the external ID. The type can be free form or one of these predefined values: * `account` * `customer` * `loginId` * `network` * `organization`
  *   `value` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formattedType => String.t() | nil,
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t()
            | nil,
          :type => String.t() | nil,
          :value => String.t() | nil
        }

  field(:formattedType)

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata
  )

  field(:type)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiExternalId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiExternalId.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiExternalId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
