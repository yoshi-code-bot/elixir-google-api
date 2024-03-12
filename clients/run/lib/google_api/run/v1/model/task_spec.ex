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

defmodule GoogleApi.Run.V1.Model.TaskSpec do
  @moduledoc """
  TaskSpec is a description of a task.

  ## Attributes

  *   `containers` (*type:* `list(GoogleApi.Run.V1.Model.Container.t)`, *default:* `nil`) - Optional. List of containers belonging to the task. We disallow a number of fields on this Container.
  *   `maxRetries` (*type:* `integer()`, *default:* `nil`) - Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  *   `serviceAccountName` (*type:* `String.t`, *default:* `nil`) - Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  *   `timeoutSeconds` (*type:* `String.t`, *default:* `nil`) - Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  *   `volumes` (*type:* `list(GoogleApi.Run.V1.Model.Volume.t)`, *default:* `nil`) - Optional. List of volumes that can be mounted by containers belonging to the task.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containers => list(GoogleApi.Run.V1.Model.Container.t()) | nil,
          :maxRetries => integer() | nil,
          :serviceAccountName => String.t() | nil,
          :timeoutSeconds => String.t() | nil,
          :volumes => list(GoogleApi.Run.V1.Model.Volume.t()) | nil
        }

  field(:containers, as: GoogleApi.Run.V1.Model.Container, type: :list)
  field(:maxRetries)
  field(:serviceAccountName)
  field(:timeoutSeconds)
  field(:volumes, as: GoogleApi.Run.V1.Model.Volume, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.TaskSpec do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.TaskSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.TaskSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
