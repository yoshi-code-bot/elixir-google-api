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

defmodule GoogleApi.GKEOnPrem.V1.Model.VmwareNodePool do
  @moduledoc """
  Resource VmwareNodePool represents a VMware node pool. ##

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  *   `config` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareNodeConfig.t`, *default:* `nil`) - Required. The node configuration of the node pool.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this node pool was created.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this node pool was deleted. If the resource is not deleted, this must be empty
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name for the node pool.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of this node pool.
  *   `nodePoolAutoscaling` (*type:* `GoogleApi.GKEOnPrem.V1.Model.VmwareNodePoolAutoscalingConfig.t`, *default:* `nil`) - Node pool autoscaling config for the node pool.
  *   `onPremVersion` (*type:* `String.t`, *default:* `nil`) - Anthos version for the node pool. Defaults to the user cluster version.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. If set, there are currently changes in flight to the node pool.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the node pool.
  *   `status` (*type:* `GoogleApi.GKEOnPrem.V1.Model.ResourceStatus.t`, *default:* `nil`) - Output only. ResourceStatus representing the detailed VMware node pool state.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of the node pool.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this node pool was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :config => GoogleApi.GKEOnPrem.V1.Model.VmwareNodeConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :nodePoolAutoscaling =>
            GoogleApi.GKEOnPrem.V1.Model.VmwareNodePoolAutoscalingConfig.t() | nil,
          :onPremVersion => String.t() | nil,
          :reconciling => boolean() | nil,
          :state => String.t() | nil,
          :status => GoogleApi.GKEOnPrem.V1.Model.ResourceStatus.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:config, as: GoogleApi.GKEOnPrem.V1.Model.VmwareNodeConfig)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:etag)
  field(:name)
  field(:nodePoolAutoscaling, as: GoogleApi.GKEOnPrem.V1.Model.VmwareNodePoolAutoscalingConfig)
  field(:onPremVersion)
  field(:reconciling)
  field(:state)
  field(:status, as: GoogleApi.GKEOnPrem.V1.Model.ResourceStatus)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareNodePool do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.VmwareNodePool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.VmwareNodePool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end