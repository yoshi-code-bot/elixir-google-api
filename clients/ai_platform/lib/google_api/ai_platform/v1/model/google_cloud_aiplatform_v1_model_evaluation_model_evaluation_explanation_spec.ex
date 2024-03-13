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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec do
  @moduledoc """


  ## Attributes

  *   `explanationSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec.t`, *default:* `nil`) - Explanation spec details.
  *   `explanationType` (*type:* `String.t`, *default:* `nil`) - Explanation type. For AutoML Image Classification models, possible values are: * `image-integrated-gradients` * `image-xrai`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explanationSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec.t() | nil,
          :explanationType => String.t() | nil
        }

  field(:explanationSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExplanationSpec)

  field(:explanationType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end