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

defmodule GoogleApi.GKEBackup.V1.Model.BackupPlan do
  @moduledoc """
  Defines the configuration and scheduling for a "line" of Backups.

  ## Attributes

  *   `backupConfig` (*type:* `GoogleApi.GKEBackup.V1.Model.BackupConfig.t`, *default:* `nil`) - Optional. Defines the configuration of Backups created via this BackupPlan.
  *   `backupSchedule` (*type:* `GoogleApi.GKEBackup.V1.Model.Schedule.t`, *default:* `nil`) - Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  *   `cluster` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this BackupPlan resource was created.
  *   `deactivated` (*type:* `boolean()`, *default:* `nil`) - Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User specified descriptive string for this BackupPlan.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup plan from overwriting each other. It is strongly suggested that systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackupPlan`, and systems are expected to put that etag in the request to `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will be applied to the same version of the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. A set of custom labels supplied by user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`
  *   `protectedPodCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  *   `retentionPolicy` (*type:* `GoogleApi.GKEBackup.V1.Model.RetentionPolicy.t`, *default:* `nil`) - Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  *   `rpoRiskLevel` (*type:* `integer()`, *default:* `nil`) - Output only. A number that represents the current risk level of this BackupPlan from RPO perspective with 1 being no risk and 5 being highest risk.
  *   `rpoRiskReason` (*type:* `String.t`, *default:* `nil`) - Output only. Human-readable description of why the BackupPlan is in the current rpo_risk_level and action items if any.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the BackupPlan. This State field reflects the various stages a BackupPlan can be in during the Create operation. It will be set to "DEACTIVATED" if the BackupPlan is deactivated on an Update
  *   `stateReason` (*type:* `String.t`, *default:* `nil`) - Output only. Human-readable description of why BackupPlan is in the current `state`
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this BackupPlan resource was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupConfig => GoogleApi.GKEBackup.V1.Model.BackupConfig.t() | nil,
          :backupSchedule => GoogleApi.GKEBackup.V1.Model.Schedule.t() | nil,
          :cluster => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :deactivated => boolean() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :protectedPodCount => integer() | nil,
          :retentionPolicy => GoogleApi.GKEBackup.V1.Model.RetentionPolicy.t() | nil,
          :rpoRiskLevel => integer() | nil,
          :rpoRiskReason => String.t() | nil,
          :state => String.t() | nil,
          :stateReason => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:backupConfig, as: GoogleApi.GKEBackup.V1.Model.BackupConfig)
  field(:backupSchedule, as: GoogleApi.GKEBackup.V1.Model.Schedule)
  field(:cluster)
  field(:createTime, as: DateTime)
  field(:deactivated)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:protectedPodCount)
  field(:retentionPolicy, as: GoogleApi.GKEBackup.V1.Model.RetentionPolicy)
  field(:rpoRiskLevel)
  field(:rpoRiskReason)
  field(:state)
  field(:stateReason)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GKEBackup.V1.Model.BackupPlan do
  def decode(value, options) do
    GoogleApi.GKEBackup.V1.Model.BackupPlan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEBackup.V1.Model.BackupPlan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
