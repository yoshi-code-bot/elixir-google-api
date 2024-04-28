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

defmodule GoogleApi.BigQueryConnection.V1.Model.ConnectorConfiguration do
  @moduledoc """
  Represents concrete parameter values for Connector Configuration.

  ## Attributes

  *   `asset` (*type:* `GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAsset.t`, *default:* `nil`) - Optional. Data asset.
  *   `authentication` (*type:* `GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAuthentication.t`, *default:* `nil`) - Client authentication.
  *   `connectorId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The ID of the Connector these parameters are configured for.
  *   `endpoint` (*type:* `GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationEndpoint.t`, *default:* `nil`) - Specifies how to reach the remote system this connection is pointing to.
  *   `network` (*type:* `GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationNetwork.t`, *default:* `nil`) - Networking configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asset => GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAsset.t() | nil,
          :authentication =>
            GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAuthentication.t() | nil,
          :connectorId => String.t() | nil,
          :endpoint =>
            GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationEndpoint.t() | nil,
          :network =>
            GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationNetwork.t() | nil
        }

  field(:asset, as: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAsset)

  field(:authentication,
    as: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationAuthentication
  )

  field(:connectorId)
  field(:endpoint, as: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationEndpoint)
  field(:network, as: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfigurationNetwork)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfiguration do
  def decode(value, options) do
    GoogleApi.BigQueryConnection.V1.Model.ConnectorConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryConnection.V1.Model.ConnectorConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
