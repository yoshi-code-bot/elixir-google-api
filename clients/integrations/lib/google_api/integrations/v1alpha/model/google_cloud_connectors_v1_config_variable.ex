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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1ConfigVariable do
  @moduledoc """
  ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Value is a bool.
  *   `encryptionKeyValue` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1EncryptionKey.t`, *default:* `nil`) - Value is a Encryption Key.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Value is an integer
  *   `key` (*type:* `String.t`, *default:* `nil`) - Key of the config variable.
  *   `secretValue` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1Secret.t`, *default:* `nil`) - Value is a secret.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Value is a string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :encryptionKeyValue =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1EncryptionKey.t() | nil,
          :intValue => String.t() | nil,
          :key => String.t() | nil,
          :secretValue =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1Secret.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:boolValue)

  field(:encryptionKeyValue,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1EncryptionKey
  )

  field(:intValue)
  field(:key)
  field(:secretValue, as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1Secret)
  field(:stringValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1ConfigVariable do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1ConfigVariable.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1ConfigVariable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end