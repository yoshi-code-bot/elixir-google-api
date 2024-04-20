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

defmodule GoogleApi.GKEBackup.V1.Model.RpoConfig do
  @moduledoc """
  Defines RPO scheduling configuration for automatically creating Backups via this BackupPlan.

  ## Attributes

  *   `exclusionWindows` (*type:* `list(GoogleApi.GKEBackup.V1.Model.ExclusionWindow.t)`, *default:* `nil`) - Optional. User specified time windows during which backup can NOT happen for this BackupPlan - backups should start and finish outside of any given exclusion window. Note: backup jobs will be scheduled to start and finish outside the duration of the window as much as possible, but running jobs will not get canceled when it runs into the window. All the time and date values in exclusion_windows entry in the API are in UTC. We only allow <=1 recurrence (daily or weekly) exclusion window for a BackupPlan while no restriction on number of single occurrence windows.
  *   `targetRpoMinutes` (*type:* `integer()`, *default:* `nil`) - Required. Defines the target RPO for the BackupPlan in minutes, which means the target maximum data loss in time that is acceptable for this BackupPlan. This must be at least 60, i.e., 1 hour, and at most 86400, i.e., 60 days.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exclusionWindows => list(GoogleApi.GKEBackup.V1.Model.ExclusionWindow.t()) | nil,
          :targetRpoMinutes => integer() | nil
        }

  field(:exclusionWindows, as: GoogleApi.GKEBackup.V1.Model.ExclusionWindow, type: :list)
  field(:targetRpoMinutes)
end

defimpl Poison.Decoder, for: GoogleApi.GKEBackup.V1.Model.RpoConfig do
  def decode(value, options) do
    GoogleApi.GKEBackup.V1.Model.RpoConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEBackup.V1.Model.RpoConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end