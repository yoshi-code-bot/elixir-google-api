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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse do
  @moduledoc """
  Response for DownloadIntegrationVersion.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - String representation of the requested file.
  *   `files` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSerializedFile.t)`, *default:* `nil`) - List containing String represendation for multiple file with type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t() | nil,
          :files =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSerializedFile.t())
            | nil
        }

  field(:content)

  field(:files,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSerializedFile,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
