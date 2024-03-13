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

defmodule GoogleApi.Batch.V1.Model.NetworkInterface do
  @moduledoc """
  A network interface.

  ## Attributes

  *   `network` (*type:* `String.t`, *default:* `nil`) - The URL of an existing network resource. You can specify the network as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} * projects/{project}/global/networks/{network} * global/networks/{network}
  *   `noExternalIpAddress` (*type:* `boolean()`, *default:* `nil`) - Default is false (with an external IP address). Required if no external public IP address is attached to the VM. If no external public IP address, additional configuration is required to allow the VM to access Google Services. See https://cloud.google.com/vpc/docs/configure-private-google-access and https://cloud.google.com/nat/docs/gce-example#create-nat for more information.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - The URL of an existing subnetwork resource in the network. You can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetwork} * projects/{project}/regions/{region}/subnetworks/{subnetwork} * regions/{region}/subnetworks/{subnetwork}
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :network => String.t() | nil,
          :noExternalIpAddress => boolean() | nil,
          :subnetwork => String.t() | nil
        }

  field(:network)
  field(:noExternalIpAddress)
  field(:subnetwork)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.NetworkInterface do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.NetworkInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.NetworkInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end