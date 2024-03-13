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

defmodule GoogleApi.GKEOnPrem.V1.Model.BareMetalNetworkConfig do
  @moduledoc """
  Specifies the cluster network configuration.

  ## Attributes

  *   `advancedNetworking` (*type:* `boolean()`, *default:* `nil`) - Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  *   `islandModeCidr` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalIslandModeCidrConfig.t`, *default:* `nil`) - Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  *   `multipleNetworkInterfacesConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalMultipleNetworkInterfacesConfig.t`, *default:* `nil`) - Configuration for multiple network interfaces.
  *   `srIovConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalSrIovConfig.t`, *default:* `nil`) - Configuration for SR-IOV.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advancedNetworking => boolean() | nil,
          :islandModeCidr => GoogleApi.GKEOnPrem.V1.Model.BareMetalIslandModeCidrConfig.t() | nil,
          :multipleNetworkInterfacesConfig =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalMultipleNetworkInterfacesConfig.t() | nil,
          :srIovConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalSrIovConfig.t() | nil
        }

  field(:advancedNetworking)
  field(:islandModeCidr, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalIslandModeCidrConfig)

  field(:multipleNetworkInterfacesConfig,
    as: GoogleApi.GKEOnPrem.V1.Model.BareMetalMultipleNetworkInterfacesConfig
  )

  field(:srIovConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalSrIovConfig)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalNetworkConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.BareMetalNetworkConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalNetworkConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end