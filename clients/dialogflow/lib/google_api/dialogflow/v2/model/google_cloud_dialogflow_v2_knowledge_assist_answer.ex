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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswer do
  @moduledoc """
  Represents a Knowledge Assist answer.

  ## Attributes

  *   `answerRecord` (*type:* `String.t`, *default:* `nil`) - The name of the answer record. Format: `projects//locations//answer Records/`.
  *   `suggestedQuery` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery.t`, *default:* `nil`) - The query suggested based on the context. Suggestion is made only if it is different from the previous suggestion.
  *   `suggestedQueryAnswer` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer.t`, *default:* `nil`) - The answer generated for the suggested query. Whether or not an answer is generated depends on how confident we are about the generated query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerRecord => String.t() | nil,
          :suggestedQuery =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery.t()
            | nil,
          :suggestedQueryAnswer =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer.t()
            | nil
        }

  field(:answerRecord)

  field(:suggestedQuery,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswerSuggestedQuery
  )

  field(:suggestedQueryAnswer,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswerKnowledgeAnswer
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswer do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswer.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2KnowledgeAssistAnswer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
