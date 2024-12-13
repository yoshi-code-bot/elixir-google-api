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

defmodule GoogleApi.NetworkManagement.V1.Model.VpcFlowLogsConfig do
  @moduledoc """
  A configuration to generate VPC Flow Logs.

  ## Attributes

  *   `aggregationInterval` (*type:* `String.t`, *default:* `nil`) - Optional. The aggregation interval for the logs. Default value is INTERVAL_5_SEC.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the config was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum of 512 characters.
  *   `filterExpr` (*type:* `String.t`, *default:* `nil`) - Optional. Export filter used to define which VPC Flow Logs should be logged.
  *   `flowSampling` (*type:* `number()`, *default:* `nil`) - Optional. The value of the field must be in (0, 1]. The sampling rate of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use the state field instead. Default value is 1.0.
  *   `interconnectAttachment` (*type:* `String.t`, *default:* `nil`) - Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user-provided metadata.
  *   `metadata` (*type:* `String.t`, *default:* `nil`) - Optional. Configures whether all, none or a subset of metadata fields should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  *   `metadataFields` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Custom metadata fields to include in the reported VPC flow logs. Can only be specified if "metadata" was set to CUSTOM_METADATA.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Unique name of the configuration using the form: `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Optional. The state of the VPC Flow Log configuration. Default value is ENABLED. When creating a new configuration, it must be enabled.
  *   `targetResourceState` (*type:* `String.t`, *default:* `nil`) - Output only. A diagnostic bit - describes the state of the configured target resource for diagnostic purposes.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the config was updated.
  *   `vpnTunnel` (*type:* `String.t`, *default:* `nil`) - Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregationInterval => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :filterExpr => String.t() | nil,
          :flowSampling => number() | nil,
          :interconnectAttachment => String.t() | nil,
          :labels => map() | nil,
          :metadata => String.t() | nil,
          :metadataFields => list(String.t()) | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :targetResourceState => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :vpnTunnel => String.t() | nil
        }

  field(:aggregationInterval)
  field(:createTime, as: DateTime)
  field(:description)
  field(:filterExpr)
  field(:flowSampling)
  field(:interconnectAttachment)
  field(:labels, type: :map)
  field(:metadata)
  field(:metadataFields, type: :list)
  field(:name)
  field(:state)
  field(:targetResourceState)
  field(:updateTime, as: DateTime)
  field(:vpnTunnel)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.VpcFlowLogsConfig do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.VpcFlowLogsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.VpcFlowLogsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
