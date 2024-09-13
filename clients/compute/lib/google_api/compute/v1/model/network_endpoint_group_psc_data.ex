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

defmodule GoogleApi.Compute.V1.Model.NetworkEndpointGroupPscData do
  @moduledoc """
  All data that is specifically relevant to only network endpoint groups of type PRIVATE_SERVICE_CONNECT.

  ## Attributes

  *   `consumerPscAddress` (*type:* `String.t`, *default:* `nil`) - [Output Only] Address allocated from given subnetwork for PSC. This IP address acts as a VIP for a PSC NEG, allowing it to act as an endpoint in L7 PSC-XLB.
  *   `producerPort` (*type:* `integer()`, *default:* `nil`) - The psc producer port is used to connect PSC NEG with specific port on the PSC Producer side; should only be used for the PRIVATE_SERVICE_CONNECT NEG type
  *   `pscConnectionId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The PSC connection id of the PSC Network Endpoint Group Consumer.
  *   `pscConnectionStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] The connection status of the PSC Forwarding Rule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerPscAddress => String.t() | nil,
          :producerPort => integer() | nil,
          :pscConnectionId => String.t() | nil,
          :pscConnectionStatus => String.t() | nil
        }

  field(:consumerPscAddress)
  field(:producerPort)
  field(:pscConnectionId)
  field(:pscConnectionStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointGroupPscData do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkEndpointGroupPscData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointGroupPscData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
