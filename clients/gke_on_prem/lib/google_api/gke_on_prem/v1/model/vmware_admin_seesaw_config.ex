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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareAdminSeesawConfig do
  @moduledoc """
  VmwareSeesawConfig represents configuration parameters for an already existing Seesaw load balancer. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update Seesaw configurations it can only bind a pre-existing configuration to a new user cluster. IMPORTANT: When attempting to create a user cluster with a pre-existing Seesaw load balancer you will need to follow some preparation steps before calling the 'CreateVmwareCluster' API method. First you will need to create the user cluster's namespace via kubectl. The namespace will need to use the following naming convention : -gke-onprem-mgmt or -gke-onprem-mgmt depending on whether you used the 'VmwareCluster.local_name' to disambiguate collisions; for more context see the documentation of 'VmwareCluster.local_name'. Once the namespace is created you will need to create a secret resource via kubectl. This secret will contain copies of your Seesaw credentials. The Secret must be called 'user-cluster-creds' and contain Seesaw's SSH and Cert credentials. The credentials must be keyed with the following names: 'seesaw-ssh-private-key', 'seesaw-ssh-public-key', 'seesaw-ssh-ca-key', 'seesaw-ssh-ca-cert'.

  ## Attributes

  *   `enableHa` (*type:* `boolean()`, *default:* `nil`) - Enable two load balancer VMs to achieve a highly-available Seesaw load balancer.
  *   `group` (*type:* `String.t`, *default:* `nil`) - In general the following format should be used for the Seesaw group name: seesaw-for-[cluster_name].
  *   `ipBlocks` (*type:* `list(GoogleApi.GKEOnPrem.V1.Model.VmwareIpBlock.t)`, *default:* `nil`) - The IP Blocks to be used by the Seesaw load balancer
  *   `masterIp` (*type:* `String.t`, *default:* `nil`) - MasterIP is the IP announced by the master of Seesaw group.
  *   `stackdriverName` (*type:* `String.t`, *default:* `nil`) - Name to be used by Stackdriver.
  *   `vms` (*type:* `list(String.t)`, *default:* `nil`) - Names of the VMs created for this Seesaw group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableHa => boolean() | nil,
          :group => String.t() | nil,
          :ipBlocks => list(GoogleApi.GKEOnPrem.V1.Model.VmwareIpBlock.t()) | nil,
          :masterIp => String.t() | nil,
          :stackdriverName => String.t() | nil,
          :vms => list(String.t()) | nil
        }

  field(:enableHa)
  field(:group)
  field(:ipBlocks, as: GoogleApi.GKEOnPrem.V1.Model.VmwareIpBlock, type: :list)
  field(:masterIp)
  field(:stackdriverName)
  field(:vms, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareAdminSeesawConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareAdminSeesawConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareAdminSeesawConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end