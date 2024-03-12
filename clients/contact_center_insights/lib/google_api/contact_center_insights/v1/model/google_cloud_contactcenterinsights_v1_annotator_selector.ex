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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotatorSelector do
  @moduledoc """
  Selector of all available annotators and phrase matchers to run.

  ## Attributes

  *   `issueModels` (*type:* `list(String.t)`, *default:* `nil`) - The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.
  *   `phraseMatchers` (*type:* `list(String.t)`, *default:* `nil`) - The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  *   `runEntityAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the entity annotator.
  *   `runIntentAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the intent annotator.
  *   `runInterruptionAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the interruption annotator.
  *   `runIssueModelAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the issue model annotator. A model should have already been deployed for this to take effect.
  *   `runPhraseMatcherAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the active phrase matcher annotator(s).
  *   `runSentimentAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the sentiment annotator.
  *   `runSilenceAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the silence annotator.
  *   `runSummarizationAnnotator` (*type:* `boolean()`, *default:* `nil`) - Whether to run the summarization annotator.
  *   `summarizationConfig` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig.t`, *default:* `nil`) - Configuration for the summarization annotator.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :issueModels => list(String.t()) | nil,
          :phraseMatchers => list(String.t()) | nil,
          :runEntityAnnotator => boolean() | nil,
          :runIntentAnnotator => boolean() | nil,
          :runInterruptionAnnotator => boolean() | nil,
          :runIssueModelAnnotator => boolean() | nil,
          :runPhraseMatcherAnnotator => boolean() | nil,
          :runSentimentAnnotator => boolean() | nil,
          :runSilenceAnnotator => boolean() | nil,
          :runSummarizationAnnotator => boolean() | nil,
          :summarizationConfig =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig.t()
            | nil
        }

  field(:issueModels, type: :list)
  field(:phraseMatchers, type: :list)
  field(:runEntityAnnotator)
  field(:runIntentAnnotator)
  field(:runInterruptionAnnotator)
  field(:runIssueModelAnnotator)
  field(:runPhraseMatcherAnnotator)
  field(:runSentimentAnnotator)
  field(:runSilenceAnnotator)
  field(:runSummarizationAnnotator)

  field(:summarizationConfig,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotatorSelector do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotatorSelector.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1AnnotatorSelector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
