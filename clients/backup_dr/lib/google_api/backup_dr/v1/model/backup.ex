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

defmodule GoogleApi.BackupDR.V1.Model.Backup do
  @moduledoc """
  Message describing a Backup object.

  ## Attributes

  *   `backupApplianceBackupProperties` (*type:* `GoogleApi.BackupDR.V1.Model.BackupApplianceBackupProperties.t`, *default:* `nil`) - Output only. Backup Appliance specific backup properties.
  *   `backupApplianceLocks` (*type:* `list(GoogleApi.BackupDR.V1.Model.BackupLock.t)`, *default:* `nil`) - Optional. The list of BackupLocks taken by the accessor Backup Appliance.
  *   `backupType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the backup, unspecified, scheduled or ondemand.
  *   `computeInstanceBackupProperties` (*type:* `GoogleApi.BackupDR.V1.Model.ComputeInstanceBackupProperties.t`, *default:* `nil`) - Output only. Compute Engine specific backup properties.
  *   `consistencyTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The point in time when this backup was captured from the source.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. The description of the Backup instance (2048 characters or less).
  *   `enforcedRetentionEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The backup can not be deleted before this time.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Server specified ETag to prevent updates from overwriting each other.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. When this backup is automatically expired.
  *   `gcpBackupPlanInfo` (*type:* `GoogleApi.BackupDR.V1.Model.GCPBackupPlanInfo.t`, *default:* `nil`) - Output only. Configuration for a Google Cloud resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user provided metadata. No labels currently defined.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. Name of the backup to create. It must have the format`"projects//locations//backupVaults//dataSources/{datasource}/backups/{backup}"`. `{backup}` cannot be changed after creation. It must be between 3-63 characters long and must be unique within the datasource.
  *   `resourceSizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. source resource size in bytes at the time of the backup.
  *   `serviceLocks` (*type:* `list(GoogleApi.BackupDR.V1.Model.BackupLock.t)`, *default:* `nil`) - Output only. The list of BackupLocks taken by the service to prevent the deletion of the backup.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The Backup resource instance state.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupApplianceBackupProperties =>
            GoogleApi.BackupDR.V1.Model.BackupApplianceBackupProperties.t() | nil,
          :backupApplianceLocks => list(GoogleApi.BackupDR.V1.Model.BackupLock.t()) | nil,
          :backupType => String.t() | nil,
          :computeInstanceBackupProperties =>
            GoogleApi.BackupDR.V1.Model.ComputeInstanceBackupProperties.t() | nil,
          :consistencyTime => DateTime.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :enforcedRetentionEndTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :gcpBackupPlanInfo => GoogleApi.BackupDR.V1.Model.GCPBackupPlanInfo.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :resourceSizeBytes => String.t() | nil,
          :serviceLocks => list(GoogleApi.BackupDR.V1.Model.BackupLock.t()) | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:backupApplianceBackupProperties,
    as: GoogleApi.BackupDR.V1.Model.BackupApplianceBackupProperties
  )

  field(:backupApplianceLocks, as: GoogleApi.BackupDR.V1.Model.BackupLock, type: :list)
  field(:backupType)

  field(:computeInstanceBackupProperties,
    as: GoogleApi.BackupDR.V1.Model.ComputeInstanceBackupProperties
  )

  field(:consistencyTime, as: DateTime)
  field(:createTime, as: DateTime)
  field(:description)
  field(:enforcedRetentionEndTime, as: DateTime)
  field(:etag)
  field(:expireTime, as: DateTime)
  field(:gcpBackupPlanInfo, as: GoogleApi.BackupDR.V1.Model.GCPBackupPlanInfo)
  field(:labels, type: :map)
  field(:name)
  field(:resourceSizeBytes)
  field(:serviceLocks, as: GoogleApi.BackupDR.V1.Model.BackupLock, type: :list)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.Backup do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.Backup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.Backup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
