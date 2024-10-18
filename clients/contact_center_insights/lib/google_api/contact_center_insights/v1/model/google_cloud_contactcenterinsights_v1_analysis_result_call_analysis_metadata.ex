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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata do
  @moduledoc """
  Call-specific metadata created during analysis.

  ## Attributes

  *   `annotations` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1CallAnnotation.t)`, *default:* `nil`) - A list of call annotations that apply to this call.
  *   `entities` (*type:* `%{optional(String.t) => GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Entity.t}`, *default:* `nil`) - All the entities in the call.
  *   `intents` (*type:* `%{optional(String.t) => GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Intent.t}`, *default:* `nil`) - All the matched intents in the call.
  *   `issueModelResult` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IssueModelResult.t`, *default:* `nil`) - Overall conversation-level issue modeling result.
  *   `phraseMatchers` (*type:* `%{optional(String.t) => GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchData.t}`, *default:* `nil`) - All the matched phrase matchers in the call.
  *   `qaScorecardResults` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecardResult.t)`, *default:* `nil`) - Results of scoring QaScorecards.
  *   `sentiments` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment.t)`, *default:* `nil`) - Overall conversation-level sentiment for each channel of the call.
  *   `silence` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationLevelSilence.t`, *default:* `nil`) - Overall conversation-level silence during the call.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1CallAnnotation.t()
            )
            | nil,
          :entities =>
            %{
              optional(String.t()) =>
                GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Entity.t()
            }
            | nil,
          :intents =>
            %{
              optional(String.t()) =>
                GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Intent.t()
            }
            | nil,
          :issueModelResult =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IssueModelResult.t()
            | nil,
          :phraseMatchers =>
            %{
              optional(String.t()) =>
                GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchData.t()
            }
            | nil,
          :qaScorecardResults =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecardResult.t()
            )
            | nil,
          :sentiments =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment.t()
            )
            | nil,
          :silence =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationLevelSilence.t()
            | nil
        }

  field(:annotations,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1CallAnnotation,
    type: :list
  )

  field(:entities,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Entity,
    type: :map
  )

  field(:intents,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Intent,
    type: :map
  )

  field(:issueModelResult,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IssueModelResult
  )

  field(:phraseMatchers,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1PhraseMatchData,
    type: :map
  )

  field(:qaScorecardResults,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecardResult,
    type: :list
  )

  field(:sentiments,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationLevelSentiment,
    type: :list
  )

  field(:silence,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1ConversationLevelSilence
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
