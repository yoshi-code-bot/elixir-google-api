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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaParameterMap do
  @moduledoc """
  A generic multi-map that holds key value pairs. They keys and values can be of any type, unless specified.

  ## Attributes

  *   `entries` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaParameterMapEntry.t)`, *default:* `nil`) - A list of parameter map entries.
  *   `keyType` (*type:* `String.t`, *default:* `nil`) - Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries =>
            list(
              GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaParameterMapEntry.t()
            )
            | nil,
          :keyType => String.t() | nil,
          :valueType => String.t() | nil
        }

  field(:entries,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaParameterMapEntry,
    type: :list
  )

  field(:keyType)
  field(:valueType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaParameterMap do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaParameterMap.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaParameterMap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
