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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesRequest do
  @moduledoc """
  Request message for ModelService.BatchImportModelEvaluationSlices

  ## Attributes

  *   `modelEvaluationSlices` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSlice.t)`, *default:* `nil`) - Required. Model evaluation slice resource to be imported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :modelEvaluationSlices =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSlice.t())
            | nil
        }

  field(:modelEvaluationSlices,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationSlice,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end