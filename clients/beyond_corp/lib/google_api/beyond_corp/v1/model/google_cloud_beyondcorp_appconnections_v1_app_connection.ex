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

defmodule GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnection do
  @moduledoc """
  A BeyondCorp AppConnection resource represents a BeyondCorp protected AppConnection to a remote application. It creates all the necessary GCP components needed for creating a BeyondCorp protected AppConnection. Multiple connectors can be authorised for a single AppConnection.

  ## Attributes

  *   `applicationEndpoint` (*type:* `GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint.t`, *default:* `nil`) - Required. Address of the remote application endpoint for the BeyondCorp AppConnection.
  *   `connectors` (*type:* `list(String.t)`, *default:* `nil`) - Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be associated with this AppConnection.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when the resource was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. An arbitrary user-provided name for the AppConnection. Cannot exceed 64 characters.
  *   `gateway` (*type:* `GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway.t`, *default:* `nil`) - Optional. Gateway used by the AppConnection.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user provided metadata.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Unique resource name of the AppConnection. The name is ignored when creating a AppConnection.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the AppConnection.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The type of network connectivity used by the AppConnection.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. A unique identifier for the instance generated by the system.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when the resource was last modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationEndpoint =>
            GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint.t()
            | nil,
          :connectors => list(String.t()) | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :gateway =>
            GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway.t()
            | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:applicationEndpoint,
    as:
      GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint
  )

  field(:connectors, type: :list)
  field(:createTime, as: DateTime)
  field(:displayName)

  field(:gateway,
    as: GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway
  )

  field(:labels, type: :map)
  field(:name)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:state)
  field(:type)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnection do
  def decode(value, options) do
    GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnection.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BeyondCorp.V1.Model.GoogleCloudBeyondcorpAppconnectionsV1AppConnection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
