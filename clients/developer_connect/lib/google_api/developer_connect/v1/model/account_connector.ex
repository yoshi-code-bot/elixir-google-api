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

defmodule GoogleApi.DeveloperConnect.V1.Model.AccountConnector do
  @moduledoc """
  AccountConnector encapsulates what a platform administrator needs to configure for users to connect to the service providers, which includes, among other fields, the OAuth client ID, client secret, and authorization and token endpoints.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. Allows users to store small amounts of arbitrary data.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the userConnection was created.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels as key value pairs
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the userConnection, in the format `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  *   `oauthStartUri` (*type:* `String.t`, *default:* `nil`) - Output only. Start OAuth flow by clicking on this URL.
  *   `providerOauthConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.ProviderOAuthConfig.t`, *default:* `nil`) - Provider OAuth config.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the userConnection was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :createTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :oauthStartUri => String.t() | nil,
          :providerOauthConfig =>
            GoogleApi.DeveloperConnect.V1.Model.ProviderOAuthConfig.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:createTime, as: DateTime)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:oauthStartUri)
  field(:providerOauthConfig, as: GoogleApi.DeveloperConnect.V1.Model.ProviderOAuthConfig)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DeveloperConnect.V1.Model.AccountConnector do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.AccountConnector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeveloperConnect.V1.Model.AccountConnector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
