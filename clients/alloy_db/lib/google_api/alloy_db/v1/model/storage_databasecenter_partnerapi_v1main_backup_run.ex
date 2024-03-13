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

defmodule GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainBackupRun do
  @moduledoc """
  A backup run.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the backup operation completed. REQUIRED
  *   `error` (*type:* `GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainOperationError.t`, *default:* `nil`) - Information about why the backup operation failed. This is only present if the run has the FAILED status. OPTIONAL
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the backup operation started. REQUIRED
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of this run. REQUIRED
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :error =>
            GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainOperationError.t()
            | nil,
          :startTime => DateTime.t() | nil,
          :status => String.t() | nil
        }

  field(:endTime, as: DateTime)

  field(:error, as: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainOperationError)

  field(:startTime, as: DateTime)
  field(:status)
end

defimpl Poison.Decoder,
  for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainBackupRun do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainBackupRun.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainBackupRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end