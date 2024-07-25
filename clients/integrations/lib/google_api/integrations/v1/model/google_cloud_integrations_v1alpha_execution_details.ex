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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecutionDetails do
  @moduledoc """
  Contains the details of the execution info: this includes the tasks execution details plus the event execution statistics.

  ## Attributes

  *   `attemptStats` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAttemptStats.t)`, *default:* `nil`) - List of Start and end time of the execution attempts.
  *   `eventExecutionSnapshotsSize` (*type:* `String.t`, *default:* `nil`) - Total size of all event_execution_snapshots for an execution
  *   `executionSnapshots` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecutionSnapshot.t)`, *default:* `nil`) - List of snapshots taken during the execution.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Status of the execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attemptStats =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAttemptStats.t())
            | nil,
          :eventExecutionSnapshotsSize => String.t() | nil,
          :executionSnapshots =>
            list(
              GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecutionSnapshot.t()
            )
            | nil,
          :state => String.t() | nil
        }

  field(:attemptStats,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAttemptStats,
    type: :list
  )

  field(:eventExecutionSnapshotsSize)

  field(:executionSnapshots,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecutionSnapshot,
    type: :list
  )

  field(:state)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecutionDetails do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecutionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaExecutionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
