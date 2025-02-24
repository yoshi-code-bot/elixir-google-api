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

defmodule GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncState do
  @moduledoc """
  State information for ConfigSync

  ## Attributes

  *   `clusterLevelStopSyncingState` (*type:* `String.t`, *default:* `nil`) - Whether syncing resources to the cluster is stopped at the cluster level.
  *   `crCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of RootSync and RepoSync CRs in the cluster.
  *   `deploymentState` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncDeploymentState.t`, *default:* `nil`) - Information about the deployment of ConfigSync, including the version of the various Pods deployed
  *   `errors` (*type:* `list(GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncError.t)`, *default:* `nil`) - Errors pertaining to the installation of Config Sync.
  *   `reposyncCrd` (*type:* `String.t`, *default:* `nil`) - The state of the Reposync CRD
  *   `rootsyncCrd` (*type:* `String.t`, *default:* `nil`) - The state of the RootSync CRD
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of CS This field summarizes the other fields in this message.
  *   `syncState` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementSyncState.t`, *default:* `nil`) - The state of ConfigSync's process to sync configs to a cluster
  *   `version` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncVersion.t`, *default:* `nil`) - The version of ConfigSync deployed
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterLevelStopSyncingState => String.t() | nil,
          :crCount => integer() | nil,
          :deploymentState =>
            GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncDeploymentState.t() | nil,
          :errors => list(GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncError.t()) | nil,
          :reposyncCrd => String.t() | nil,
          :rootsyncCrd => String.t() | nil,
          :state => String.t() | nil,
          :syncState => GoogleApi.GKEHub.V1.Model.ConfigManagementSyncState.t() | nil,
          :version => GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncVersion.t() | nil
        }

  field(:clusterLevelStopSyncingState)
  field(:crCount)
  field(:deploymentState, as: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncDeploymentState)
  field(:errors, as: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncError, type: :list)
  field(:reposyncCrd)
  field(:rootsyncCrd)
  field(:state)
  field(:syncState, as: GoogleApi.GKEHub.V1.Model.ConfigManagementSyncState)
  field(:version, as: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncVersion)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncState do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSyncState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
