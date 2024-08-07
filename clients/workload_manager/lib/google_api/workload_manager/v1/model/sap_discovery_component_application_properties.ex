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

defmodule GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentApplicationProperties do
  @moduledoc """
  A set of properties describing an SAP Application layer.

  ## Attributes

  *   `abap` (*type:* `boolean()`, *default:* `nil`) - Optional. Deprecated: ApplicationType now tells you whether this is ABAP or Java.
  *   `appInstanceNumber` (*type:* `String.t`, *default:* `nil`) - Optional. Instance number of the SAP application instance.
  *   `applicationType` (*type:* `String.t`, *default:* `nil`) - Required. Type of the application. Netweaver, etc.
  *   `ascsInstanceNumber` (*type:* `String.t`, *default:* `nil`) - Optional. Instance number of the ASCS instance.
  *   `ascsUri` (*type:* `String.t`, *default:* `nil`) - Optional. Resource URI of the recognized ASCS host of the application.
  *   `ersInstanceNumber` (*type:* `String.t`, *default:* `nil`) - Optional. Instance number of the ERS instance.
  *   `kernelVersion` (*type:* `String.t`, *default:* `nil`) - Optional. Kernel version for Netweaver running in the system.
  *   `nfsUri` (*type:* `String.t`, *default:* `nil`) - Optional. Resource URI of the recognized shared NFS of the application. May be empty if the application server has only a single node.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abap => boolean() | nil,
          :appInstanceNumber => String.t() | nil,
          :applicationType => String.t() | nil,
          :ascsInstanceNumber => String.t() | nil,
          :ascsUri => String.t() | nil,
          :ersInstanceNumber => String.t() | nil,
          :kernelVersion => String.t() | nil,
          :nfsUri => String.t() | nil
        }

  field(:abap)
  field(:appInstanceNumber)
  field(:applicationType)
  field(:ascsInstanceNumber)
  field(:ascsUri)
  field(:ersInstanceNumber)
  field(:kernelVersion)
  field(:nfsUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentApplicationProperties do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentApplicationProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentApplicationProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
