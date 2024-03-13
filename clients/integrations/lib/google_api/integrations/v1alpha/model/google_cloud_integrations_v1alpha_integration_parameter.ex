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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaIntegrationParameter do
  @moduledoc """
  Integration Parameter is defined in the integration config and are used to provide information about data types of the expected parameters and provide any default values if needed. They can also be used to add custom attributes. These are static in nature and should not be used for dynamic event definition.

  ## Attributes

  *   `containsLargeData` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this variable contains large data and need to be uploaded to Cloud Storage.
  *   `dataType` (*type:* `String.t`, *default:* `nil`) - Type of the parameter.
  *   `defaultValue` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaValueType.t`, *default:* `nil`) - Default values for the defined keys. Each value can either be string, int, double or any proto message or a serialized object.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name (without prefix) to be displayed in the UI for this parameter. E.g. if the key is "foo.bar.myName", then the name would be "myName".
  *   `inputOutputType` (*type:* `String.t`, *default:* `nil`) - Specifies the input/output type for the parameter.
  *   `isTransient` (*type:* `boolean()`, *default:* `nil`) - Whether this parameter is a transient parameter.
  *   `jsonSchema` (*type:* `String.t`, *default:* `nil`) - This schema will be used to validate runtime JSON-typed values of this parameter.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  *   `masked` (*type:* `boolean()`, *default:* `nil`) - True if this parameter should be masked in the logs
  *   `producer` (*type:* `String.t`, *default:* `nil`) - The identifier of the node (TaskConfig/TriggerConfig) this parameter was produced by, if it is a transient param or a copy of an input param.
  *   `searchable` (*type:* `boolean()`, *default:* `nil`) - Searchable in the execution log or not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containsLargeData => boolean() | nil,
          :dataType => String.t() | nil,
          :defaultValue =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaValueType.t() | nil,
          :displayName => String.t() | nil,
          :inputOutputType => String.t() | nil,
          :isTransient => boolean() | nil,
          :jsonSchema => String.t() | nil,
          :key => String.t() | nil,
          :masked => boolean() | nil,
          :producer => String.t() | nil,
          :searchable => boolean() | nil
        }

  field(:containsLargeData)
  field(:dataType)

  field(:defaultValue,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaValueType
  )

  field(:displayName)
  field(:inputOutputType)
  field(:isTransient)
  field(:jsonSchema)
  field(:key)
  field(:masked)
  field(:producer)
  field(:searchable)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaIntegrationParameter do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaIntegrationParameter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaIntegrationParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end