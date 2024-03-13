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

defmodule GoogleApi.VPCAccess.V1.Model.Connector do
  @moduledoc """
  Definition of a Serverless VPC Access connector.

  ## Attributes

  *   `connectedProjects` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of projects using the connector.
  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Machine type of VM Instance underlying connector. Default is e2-micro
  *   `maxInstances` (*type:* `integer()`, *default:* `nil`) - Maximum value of instances in autoscaling group underlying the connector.
  *   `maxThroughput` (*type:* `integer()`, *default:* `nil`) - Maximum throughput of the connector in Mbps. Refers to the expected throughput when using an `e2-micro` machine type. Value must be a multiple of 100 from 300 through 1000. Must be higher than the value specified by --min-throughput. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput. The use of `max-throughput` is discouraged in favor of `max-instances`.
  *   `minInstances` (*type:* `integer()`, *default:* `nil`) - Minimum value of instances in autoscaling group underlying the connector.
  *   `minThroughput` (*type:* `integer()`, *default:* `nil`) - Minimum throughput of the connector in Mbps. Refers to the expected throughput when using an `e2-micro` machine type. Value must be a multiple of 100 from 200 through 900. Must be lower than the value specified by --max-throughput. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput. The use of `min-throughput` is discouraged in favor of `min-instances`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name in the format `projects/*/locations/*/connectors/*`.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Name of a VPC network.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the VPC access connector.
  *   `subnet` (*type:* `GoogleApi.VPCAccess.V1.Model.Subnet.t`, *default:* `nil`) - The subnet in which to house the VPC Access Connector.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectedProjects => list(String.t()) | nil,
          :ipCidrRange => String.t() | nil,
          :machineType => String.t() | nil,
          :maxInstances => integer() | nil,
          :maxThroughput => integer() | nil,
          :minInstances => integer() | nil,
          :minThroughput => integer() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :state => String.t() | nil,
          :subnet => GoogleApi.VPCAccess.V1.Model.Subnet.t() | nil
        }

  field(:connectedProjects, type: :list)
  field(:ipCidrRange)
  field(:machineType)
  field(:maxInstances)
  field(:maxThroughput)
  field(:minInstances)
  field(:minThroughput)
  field(:name)
  field(:network)
  field(:state)
  field(:subnet, as: GoogleApi.VPCAccess.V1.Model.Subnet)
end

defimpl Poison.Decoder, for: GoogleApi.VPCAccess.V1.Model.Connector do
  def decode(value, options) do
    GoogleApi.VPCAccess.V1.Model.Connector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VPCAccess.V1.Model.Connector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end