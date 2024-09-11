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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest do
  @moduledoc """
  Request message for [NotebookService.CreateNotebookExecutionJob]

  ## Attributes

  *   `notebookExecutionJob` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookExecutionJob.t`, *default:* `nil`) - Required. The NotebookExecutionJob to create.
  *   `notebookExecutionJobId` (*type:* `String.t`, *default:* `nil`) - Optional. User specified ID for the NotebookExecutionJob.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Location to create the NotebookExecutionJob. Format: `projects/{project}/locations/{location}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :notebookExecutionJob =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookExecutionJob.t() | nil,
          :notebookExecutionJobId => String.t() | nil,
          :parent => String.t() | nil
        }

  field(:notebookExecutionJob,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookExecutionJob
  )

  field(:notebookExecutionJobId)
  field(:parent)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
