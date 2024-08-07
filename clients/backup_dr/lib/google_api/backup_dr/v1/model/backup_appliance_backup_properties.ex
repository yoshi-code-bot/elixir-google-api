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

defmodule GoogleApi.BackupDR.V1.Model.BackupApplianceBackupProperties do
  @moduledoc """
  BackupApplianceBackupProperties represents BackupDR backup appliance's properties.

  ## Attributes

  *   `finalizeTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when this backup object was finalized (if none, backup is not finalized).
  *   `generationId` (*type:* `integer()`, *default:* `nil`) - Output only. The numeric generation ID of the backup (monotonically increasing).
  *   `recoveryRangeEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The latest timestamp of data available in this Backup.
  *   `recoveryRangeStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The earliest timestamp of data available in this Backup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :finalizeTime => DateTime.t() | nil,
          :generationId => integer() | nil,
          :recoveryRangeEndTime => DateTime.t() | nil,
          :recoveryRangeStartTime => DateTime.t() | nil
        }

  field(:finalizeTime, as: DateTime)
  field(:generationId)
  field(:recoveryRangeEndTime, as: DateTime)
  field(:recoveryRangeStartTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.BackupApplianceBackupProperties do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.BackupApplianceBackupProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.BackupApplianceBackupProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
