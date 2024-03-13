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

defmodule GoogleApi.Notebooks.V2.Model.GceSetup do
  @moduledoc """
  The definition of how to configure a VM instance outside of Resources and Identity.

  ## Attributes

  *   `acceleratorConfigs` (*type:* `list(GoogleApi.Notebooks.V2.Model.AcceleratorConfig.t)`, *default:* `nil`) - Optional. The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list). Currently supports only one accelerator configuration.
  *   `bootDisk` (*type:* `GoogleApi.Notebooks.V2.Model.BootDisk.t`, *default:* `nil`) - Optional. The boot disk for the VM.
  *   `containerImage` (*type:* `GoogleApi.Notebooks.V2.Model.ContainerImage.t`, *default:* `nil`) - Optional. Use a container image to start the notebook instance.
  *   `dataDisks` (*type:* `list(GoogleApi.Notebooks.V2.Model.DataDisk.t)`, *default:* `nil`) - Optional. Data disks attached to the VM instance. Currently supports only one data disk.
  *   `disablePublicIp` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, no external IP will be assigned to this VM instance.
  *   `enableIpForwarding` (*type:* `boolean()`, *default:* `nil`) - Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  *   `gpuDriverConfig` (*type:* `GoogleApi.Notebooks.V2.Model.GPUDriverConfig.t`, *default:* `nil`) - Optional. Configuration for GPU drivers.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Optional. Custom metadata to apply to this instance.
  *   `networkInterfaces` (*type:* `list(GoogleApi.Notebooks.V2.Model.NetworkInterface.t)`, *default:* `nil`) - Optional. The network interfaces for the VM. Supports only one interface.
  *   `serviceAccounts` (*type:* `list(GoogleApi.Notebooks.V2.Model.ServiceAccount.t)`, *default:* `nil`) - Optional. The service account that serves as an identity for the VM instance. Currently supports only one service account.
  *   `shieldedInstanceConfig` (*type:* `GoogleApi.Notebooks.V2.Model.ShieldedInstanceConfig.t`, *default:* `nil`) - Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  *   `vmImage` (*type:* `GoogleApi.Notebooks.V2.Model.VmImage.t`, *default:* `nil`) - Optional. Use a Compute Engine VM image to start the notebook instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorConfigs => list(GoogleApi.Notebooks.V2.Model.AcceleratorConfig.t()) | nil,
          :bootDisk => GoogleApi.Notebooks.V2.Model.BootDisk.t() | nil,
          :containerImage => GoogleApi.Notebooks.V2.Model.ContainerImage.t() | nil,
          :dataDisks => list(GoogleApi.Notebooks.V2.Model.DataDisk.t()) | nil,
          :disablePublicIp => boolean() | nil,
          :enableIpForwarding => boolean() | nil,
          :gpuDriverConfig => GoogleApi.Notebooks.V2.Model.GPUDriverConfig.t() | nil,
          :machineType => String.t() | nil,
          :metadata => map() | nil,
          :networkInterfaces => list(GoogleApi.Notebooks.V2.Model.NetworkInterface.t()) | nil,
          :serviceAccounts => list(GoogleApi.Notebooks.V2.Model.ServiceAccount.t()) | nil,
          :shieldedInstanceConfig =>
            GoogleApi.Notebooks.V2.Model.ShieldedInstanceConfig.t() | nil,
          :tags => list(String.t()) | nil,
          :vmImage => GoogleApi.Notebooks.V2.Model.VmImage.t() | nil
        }

  field(:acceleratorConfigs, as: GoogleApi.Notebooks.V2.Model.AcceleratorConfig, type: :list)
  field(:bootDisk, as: GoogleApi.Notebooks.V2.Model.BootDisk)
  field(:containerImage, as: GoogleApi.Notebooks.V2.Model.ContainerImage)
  field(:dataDisks, as: GoogleApi.Notebooks.V2.Model.DataDisk, type: :list)
  field(:disablePublicIp)
  field(:enableIpForwarding)
  field(:gpuDriverConfig, as: GoogleApi.Notebooks.V2.Model.GPUDriverConfig)
  field(:machineType)
  field(:metadata, type: :map)
  field(:networkInterfaces, as: GoogleApi.Notebooks.V2.Model.NetworkInterface, type: :list)
  field(:serviceAccounts, as: GoogleApi.Notebooks.V2.Model.ServiceAccount, type: :list)
  field(:shieldedInstanceConfig, as: GoogleApi.Notebooks.V2.Model.ShieldedInstanceConfig)
  field(:tags, type: :list)
  field(:vmImage, as: GoogleApi.Notebooks.V2.Model.VmImage)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V2.Model.GceSetup do
  def decode(value, options) do
    GoogleApi.Notebooks.V2.Model.GceSetup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V2.Model.GceSetup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end