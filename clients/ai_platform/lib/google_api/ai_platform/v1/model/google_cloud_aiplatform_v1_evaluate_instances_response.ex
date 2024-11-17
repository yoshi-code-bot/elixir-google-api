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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EvaluateInstancesResponse do
  @moduledoc """
  Response message for EvaluationService.EvaluateInstances.

  ## Attributes

  *   `bleuResults` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BleuResults.t`, *default:* `nil`) - Results for bleu metric.
  *   `coherenceResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CoherenceResult.t`, *default:* `nil`) - Result for coherence metric.
  *   `cometResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CometResult.t`, *default:* `nil`) - Translation metrics. Result for Comet metric.
  *   `exactMatchResults` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExactMatchResults.t`, *default:* `nil`) - Auto metric evaluation results. Results for exact match metric.
  *   `fluencyResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FluencyResult.t`, *default:* `nil`) - LLM-based metric evaluation result. General text generation metrics, applicable to other categories. Result for fluency metric.
  *   `fulfillmentResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FulfillmentResult.t`, *default:* `nil`) - Result for fulfillment metric.
  *   `groundednessResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GroundednessResult.t`, *default:* `nil`) - Result for groundedness metric.
  *   `metricxResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetricxResult.t`, *default:* `nil`) - Result for Metricx metric.
  *   `pairwiseMetricResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseMetricResult.t`, *default:* `nil`) - Result for pairwise metric.
  *   `pairwiseQuestionAnsweringQualityResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityResult.t`, *default:* `nil`) - Result for pairwise question answering quality metric.
  *   `pairwiseSummarizationQualityResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseSummarizationQualityResult.t`, *default:* `nil`) - Result for pairwise summarization quality metric.
  *   `pointwiseMetricResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PointwiseMetricResult.t`, *default:* `nil`) - Generic metrics. Result for pointwise metric.
  *   `questionAnsweringCorrectnessResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringCorrectnessResult.t`, *default:* `nil`) - Result for question answering correctness metric.
  *   `questionAnsweringHelpfulnessResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessResult.t`, *default:* `nil`) - Result for question answering helpfulness metric.
  *   `questionAnsweringQualityResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringQualityResult.t`, *default:* `nil`) - Question answering only metrics. Result for question answering quality metric.
  *   `questionAnsweringRelevanceResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringRelevanceResult.t`, *default:* `nil`) - Result for question answering relevance metric.
  *   `rougeResults` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RougeResults.t`, *default:* `nil`) - Results for rouge metric.
  *   `safetyResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SafetyResult.t`, *default:* `nil`) - Result for safety metric.
  *   `summarizationHelpfulnessResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationHelpfulnessResult.t`, *default:* `nil`) - Result for summarization helpfulness metric.
  *   `summarizationQualityResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationQualityResult.t`, *default:* `nil`) - Summarization only metrics. Result for summarization quality metric.
  *   `summarizationVerbosityResult` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationVerbosityResult.t`, *default:* `nil`) - Result for summarization verbosity metric.
  *   `toolCallValidResults` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolCallValidResults.t`, *default:* `nil`) - Tool call metrics. Results for tool call valid metric.
  *   `toolNameMatchResults` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolNameMatchResults.t`, *default:* `nil`) - Results for tool name match metric.
  *   `toolParameterKeyMatchResults` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolParameterKeyMatchResults.t`, *default:* `nil`) - Results for tool parameter key match metric.
  *   `toolParameterKvMatchResults` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolParameterKVMatchResults.t`, *default:* `nil`) - Results for tool parameter key value match metric.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bleuResults =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BleuResults.t() | nil,
          :coherenceResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CoherenceResult.t() | nil,
          :cometResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CometResult.t() | nil,
          :exactMatchResults =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExactMatchResults.t() | nil,
          :fluencyResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FluencyResult.t() | nil,
          :fulfillmentResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FulfillmentResult.t() | nil,
          :groundednessResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GroundednessResult.t() | nil,
          :metricxResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetricxResult.t() | nil,
          :pairwiseMetricResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseMetricResult.t() | nil,
          :pairwiseQuestionAnsweringQualityResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityResult.t()
            | nil,
          :pairwiseSummarizationQualityResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseSummarizationQualityResult.t()
            | nil,
          :pointwiseMetricResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PointwiseMetricResult.t() | nil,
          :questionAnsweringCorrectnessResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringCorrectnessResult.t()
            | nil,
          :questionAnsweringHelpfulnessResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessResult.t()
            | nil,
          :questionAnsweringQualityResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringQualityResult.t()
            | nil,
          :questionAnsweringRelevanceResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringRelevanceResult.t()
            | nil,
          :rougeResults =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RougeResults.t() | nil,
          :safetyResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SafetyResult.t() | nil,
          :summarizationHelpfulnessResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationHelpfulnessResult.t()
            | nil,
          :summarizationQualityResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationQualityResult.t()
            | nil,
          :summarizationVerbosityResult =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationVerbosityResult.t()
            | nil,
          :toolCallValidResults =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolCallValidResults.t() | nil,
          :toolNameMatchResults =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolNameMatchResults.t() | nil,
          :toolParameterKeyMatchResults =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolParameterKeyMatchResults.t()
            | nil,
          :toolParameterKvMatchResults =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolParameterKVMatchResults.t()
            | nil
        }

  field(:bleuResults, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BleuResults)

  field(:coherenceResult, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CoherenceResult)

  field(:cometResult, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CometResult)

  field(:exactMatchResults,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExactMatchResults
  )

  field(:fluencyResult, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FluencyResult)

  field(:fulfillmentResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FulfillmentResult
  )

  field(:groundednessResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GroundednessResult
  )

  field(:metricxResult, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetricxResult)

  field(:pairwiseMetricResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseMetricResult
  )

  field(:pairwiseQuestionAnsweringQualityResult,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityResult
  )

  field(:pairwiseSummarizationQualityResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PairwiseSummarizationQualityResult
  )

  field(:pointwiseMetricResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PointwiseMetricResult
  )

  field(:questionAnsweringCorrectnessResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringCorrectnessResult
  )

  field(:questionAnsweringHelpfulnessResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessResult
  )

  field(:questionAnsweringQualityResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringQualityResult
  )

  field(:questionAnsweringRelevanceResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1QuestionAnsweringRelevanceResult
  )

  field(:rougeResults, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RougeResults)
  field(:safetyResult, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SafetyResult)

  field(:summarizationHelpfulnessResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationHelpfulnessResult
  )

  field(:summarizationQualityResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationQualityResult
  )

  field(:summarizationVerbosityResult,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SummarizationVerbosityResult
  )

  field(:toolCallValidResults,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolCallValidResults
  )

  field(:toolNameMatchResults,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolNameMatchResults
  )

  field(:toolParameterKeyMatchResults,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolParameterKeyMatchResults
  )

  field(:toolParameterKvMatchResults,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ToolParameterKVMatchResults
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EvaluateInstancesResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EvaluateInstancesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EvaluateInstancesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
