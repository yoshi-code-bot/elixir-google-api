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

defmodule GoogleApi.Batch.V1.Model.AgentMetadata do
  @moduledoc """
  VM Agent Metadata.

  ## Attributes

  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - When the VM agent started. Use agent_startup_time instead.
  *   `creator` (*type:* `String.t`, *default:* `nil`) - Full name of the entity that created this vm. For MIG, this path is: projects/{project}/regions/{region}/InstanceGroupManagers/{igm} The value is retrieved from the vm metadata key of "created-by".
  *   `imageVersion` (*type:* `String.t`, *default:* `nil`) - image version for the VM that this agent is installed on.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - GCP instance name (go/instance-name).
  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - GCP instance ID (go/instance-id).
  *   `instancePreemptionNoticeReceived` (*type:* `boolean()`, *default:* `nil`) - If the GCP instance has received preemption notice.
  *   `osRelease` (*type:* `map()`, *default:* `nil`) - parsed contents of /etc/os-release
  *   `version` (*type:* `String.t`, *default:* `nil`) - agent binary version running on VM
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Agent zone.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => DateTime.t() | nil,
          :creator => String.t() | nil,
          :imageVersion => String.t() | nil,
          :instance => String.t() | nil,
          :instanceId => String.t() | nil,
          :instancePreemptionNoticeReceived => boolean() | nil,
          :osRelease => map() | nil,
          :version => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:creationTime, as: DateTime)
  field(:creator)
  field(:imageVersion)
  field(:instance)
  field(:instanceId)
  field(:instancePreemptionNoticeReceived)
  field(:osRelease, type: :map)
  field(:version)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.AgentMetadata do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.AgentMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.AgentMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end