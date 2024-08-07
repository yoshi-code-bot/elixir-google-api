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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaNextTask do
  @moduledoc """
  The task that is next in line to be executed, if the condition specified evaluated to true.

  ## Attributes

  *   `condition` (*type:* `String.t`, *default:* `nil`) - Standard filter expression for this task to become an eligible next task.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description intended to give additional business context about the task.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User-provided label that is attached to this edge in the UI.
  *   `taskConfigId` (*type:* `String.t`, *default:* `nil`) - ID of the next task.
  *   `taskId` (*type:* `String.t`, *default:* `nil`) - Task number of the next task.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :taskConfigId => String.t() | nil,
          :taskId => String.t() | nil
        }

  field(:condition)
  field(:description)
  field(:displayName)
  field(:taskConfigId)
  field(:taskId)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaNextTask do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaNextTask.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaNextTask do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
