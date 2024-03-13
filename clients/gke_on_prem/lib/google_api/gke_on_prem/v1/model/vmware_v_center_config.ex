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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareVCenterConfig do
  @moduledoc """
  Represents configuration for the VMware VCenter for the user cluster.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - Output only. The vCenter IP address.
  *   `caCertData` (*type:* `String.t`, *default:* `nil`) - Contains the vCenter CA certificate public key for SSL verification.
  *   `cluster` (*type:* `String.t`, *default:* `nil`) - The name of the vCenter cluster for the user cluster.
  *   `datacenter` (*type:* `String.t`, *default:* `nil`) - The name of the vCenter datacenter for the user cluster.
  *   `datastore` (*type:* `String.t`, *default:* `nil`) - The name of the vCenter datastore for the user cluster.
  *   `folder` (*type:* `String.t`, *default:* `nil`) - The name of the vCenter folder for the user cluster.
  *   `resourcePool` (*type:* `String.t`, *default:* `nil`) - The name of the vCenter resource pool for the user cluster.
  *   `storagePolicyName` (*type:* `String.t`, *default:* `nil`) - The name of the vCenter storage policy for the user cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :caCertData => String.t() | nil,
          :cluster => String.t() | nil,
          :datacenter => String.t() | nil,
          :datastore => String.t() | nil,
          :folder => String.t() | nil,
          :resourcePool => String.t() | nil,
          :storagePolicyName => String.t() | nil
        }

  field(:address)
  field(:caCertData)
  field(:cluster)
  field(:datacenter)
  field(:datastore)
  field(:folder)
  field(:resourcePool)
  field(:storagePolicyName)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareVCenterConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareVCenterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareVCenterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end