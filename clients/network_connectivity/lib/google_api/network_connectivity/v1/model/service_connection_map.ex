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

defmodule GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionMap do
  @moduledoc """
  The ServiceConnectionMap resource.

  ## Attributes

  *   `consumerPscConfigs` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConfig.t)`, *default:* `nil`) - The PSC configurations on consumer side.
  *   `consumerPscConnections` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConnection.t)`, *default:* `nil`) - Output only. PSC connection details on consumer side.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the ServiceConnectionMap was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of this resource.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `infrastructure` (*type:* `String.t`, *default:* `nil`) - Output only. The infrastructure used for connections between consumers/producers.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-defined labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  *   `producerPscConfigs` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.ProducerPscConfig.t)`, *default:* `nil`) - The PSC configurations on producer side.
  *   `serviceClass` (*type:* `String.t`, *default:* `nil`) - The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  *   `serviceClassUri` (*type:* `String.t`, *default:* `nil`) - Output only. The service class uri this ServiceConnectionMap is for.
  *   `token` (*type:* `String.t`, *default:* `nil`) - The token provided by the consumer. This token authenticates that the consumer can create a connection within the specified project and network.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the ServiceConnectionMap was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerPscConfigs =>
            list(GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConfig.t()) | nil,
          :consumerPscConnections =>
            list(GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConnection.t()) | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :infrastructure => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :producerPscConfigs =>
            list(GoogleApi.NetworkConnectivity.V1.Model.ProducerPscConfig.t()) | nil,
          :serviceClass => String.t() | nil,
          :serviceClassUri => String.t() | nil,
          :token => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:consumerPscConfigs,
    as: GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConfig,
    type: :list
  )

  field(:consumerPscConnections,
    as: GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConnection,
    type: :list
  )

  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:infrastructure)
  field(:labels, type: :map)
  field(:name)

  field(:producerPscConfigs,
    as: GoogleApi.NetworkConnectivity.V1.Model.ProducerPscConfig,
    type: :list
  )

  field(:serviceClass)
  field(:serviceClassUri)
  field(:token)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionMap do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionMap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionMap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
