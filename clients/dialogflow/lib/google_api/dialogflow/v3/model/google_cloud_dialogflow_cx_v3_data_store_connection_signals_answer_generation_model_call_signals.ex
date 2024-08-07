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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals do
  @moduledoc """
  Diagnostic info related to the answer generation model call.

  ## Attributes

  *   `model` (*type:* `String.t`, *default:* `nil`) - Name of the generative model. For example, "gemini-ultra", "gemini-pro", "gemini-1.5-flash" etc. Defaults to "Other" if the model is unknown.
  *   `modelOutput` (*type:* `String.t`, *default:* `nil`) - Output of the generative model.
  *   `renderedPrompt` (*type:* `String.t`, *default:* `nil`) - Prompt as sent to the model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :model => String.t() | nil,
          :modelOutput => String.t() | nil,
          :renderedPrompt => String.t() | nil
        }

  field(:model)
  field(:modelOutput)
  field(:renderedPrompt)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
