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

defmodule GoogleApi.Spanner.V1.Model.BackupSchedule do
  @moduledoc """
  BackupSchedule expresses the automated backup creation specification for a Spanner database.

  ## Attributes

  *   `encryptionConfig` (*type:* `GoogleApi.Spanner.V1.Model.CreateBackupEncryptionConfig.t`, *default:* `nil`) - Optional. The encryption configuration that is used to encrypt the backup. If this field is not specified, the backup uses the same encryption configuration as the database.
  *   `fullBackupSpec` (*type:* `GoogleApi.Spanner.V1.Model.FullBackupSpec.t`, *default:* `nil`) - The schedule creates only full backups.
  *   `incrementalBackupSpec` (*type:* `GoogleApi.Spanner.V1.Model.IncrementalBackupSpec.t`, *default:* `nil`) - The schedule creates incremental backup chains.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Output only for the CreateBackupSchedule operation. Required for the UpdateBackupSchedule operation. A globally unique identifier for the backup schedule which cannot be changed. Values are of the form `projects//instances//databases//backupSchedules/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length.
  *   `retentionDuration` (*type:* `String.t`, *default:* `nil`) - Optional. The retention duration of a backup that must be at least 6 hours and at most 366 days. The backup is eligible to be automatically deleted once the retention period has elapsed.
  *   `spec` (*type:* `GoogleApi.Spanner.V1.Model.BackupScheduleSpec.t`, *default:* `nil`) - Optional. The schedule specification based on which the backup creations are triggered.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp at which the schedule was last updated. If the schedule has never been updated, this field contains the timestamp when the schedule was first created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptionConfig => GoogleApi.Spanner.V1.Model.CreateBackupEncryptionConfig.t() | nil,
          :fullBackupSpec => GoogleApi.Spanner.V1.Model.FullBackupSpec.t() | nil,
          :incrementalBackupSpec => GoogleApi.Spanner.V1.Model.IncrementalBackupSpec.t() | nil,
          :name => String.t() | nil,
          :retentionDuration => String.t() | nil,
          :spec => GoogleApi.Spanner.V1.Model.BackupScheduleSpec.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:encryptionConfig, as: GoogleApi.Spanner.V1.Model.CreateBackupEncryptionConfig)
  field(:fullBackupSpec, as: GoogleApi.Spanner.V1.Model.FullBackupSpec)
  field(:incrementalBackupSpec, as: GoogleApi.Spanner.V1.Model.IncrementalBackupSpec)
  field(:name)
  field(:retentionDuration)
  field(:spec, as: GoogleApi.Spanner.V1.Model.BackupScheduleSpec)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.BackupSchedule do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.BackupSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.BackupSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
