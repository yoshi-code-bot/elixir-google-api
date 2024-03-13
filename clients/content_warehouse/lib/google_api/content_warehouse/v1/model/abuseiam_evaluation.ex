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

defmodule GoogleApi.ContentWarehouse.V1.Model.AbuseiamEvaluation do
  @moduledoc """
  Backends return Evaluations to AbuseIAm. One of the things Evaluations are used for is to explain Verdicts.

  ## Attributes

  *   `abuseType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamAbuseType.t`, *default:* `nil`) - 
  *   `backend` (*type:* `String.t`, *default:* `nil`) - Who creates this Evaluation. This field is required.
  *   `clusterEvaluationContext` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamClusterEvaluationContext.t`, *default:* `nil`) - Extra information regarding the cluster review context where the case received the evaluation.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - Backends can choose to put some debug info in addition to abuse_type, score, and status.
  *   `feature` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamFeature.t)`, *default:* `nil`) - A set of repeated features to allow adapters to return semi structured data. Please, prefer using feature instead of the old misc_data field since it supports richer and more structured data to be passed back.
  *   `manualReviewInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamManualReviewEvaluationInfo.t`, *default:* `nil`) - Information about the manual review, for manual review evaluations. Do NOT expect this field to be set if `backend != MANUAL_REVIEW`.
  *   `miscData` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamNameValuePair.t)`, *default:* `nil`) - This field is used to store miscellaneous information that Backend might provide. If you find youself here considering to use this field, please prefer using the repeated feature field below instead. It supports a richer structure for passing complex data back from the backend.
  *   `processTimeMillisecs` (*type:* `String.t`, *default:* `nil`) - Time in milliseconds when the Backend processed this Evaluation.
  *   `processedMicros` (*type:* `String.t`, *default:* `nil`) - When the evaluation was processed by the decision script.
  *   `region` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamRegion.t)`, *default:* `nil`) - The list of regions where the evaluation applies.
  *   `score` (*type:* `float()`, *default:* `nil`) - 
  *   `status` (*type:* `String.t`, *default:* `nil`) - 
  *   `target` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamTarget.t`, *default:* `nil`) - 
  *   `timestampMicros` (*type:* `String.t`, *default:* `nil`) - When the Evaluation was generated.
  *   `userRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamUserRestriction.t`, *default:* `nil`) - A boolean expression tree used to define the restrictions where the verdict applies. Please use java/com/google/ccc/abuse/abuseiam/client/TakedownManager.java to evaluate this proto.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Version of Backend. For rules, this string is the only way to differentiate between them.
  *   `videoReviewData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AbuseiamVideoReviewData.t`, *default:* `nil`) - Information about the video review, for video review evaluations. Do NOT expect this field to be set if `backend != VIDEO_REVIEW`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abuseType => GoogleApi.ContentWarehouse.V1.Model.AbuseiamAbuseType.t() | nil,
          :backend => String.t() | nil,
          :clusterEvaluationContext =>
            GoogleApi.ContentWarehouse.V1.Model.AbuseiamClusterEvaluationContext.t() | nil,
          :comment => String.t() | nil,
          :feature => list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamFeature.t()) | nil,
          :manualReviewInfo =>
            GoogleApi.ContentWarehouse.V1.Model.AbuseiamManualReviewEvaluationInfo.t() | nil,
          :miscData => list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamNameValuePair.t()) | nil,
          :processTimeMillisecs => String.t() | nil,
          :processedMicros => String.t() | nil,
          :region => list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamRegion.t()) | nil,
          :score => float() | nil,
          :status => String.t() | nil,
          :target => GoogleApi.ContentWarehouse.V1.Model.AbuseiamTarget.t() | nil,
          :timestampMicros => String.t() | nil,
          :userRestriction =>
            GoogleApi.ContentWarehouse.V1.Model.AbuseiamUserRestriction.t() | nil,
          :version => String.t() | nil,
          :videoReviewData =>
            GoogleApi.ContentWarehouse.V1.Model.AbuseiamVideoReviewData.t() | nil
        }

  field(:abuseType, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamAbuseType)
  field(:backend)

  field(:clusterEvaluationContext,
    as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamClusterEvaluationContext
  )

  field(:comment)
  field(:feature, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamFeature, type: :list)

  field(:manualReviewInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamManualReviewEvaluationInfo
  )

  field(:miscData, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamNameValuePair, type: :list)
  field(:processTimeMillisecs)
  field(:processedMicros)
  field(:region, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamRegion, type: :list)
  field(:score)
  field(:status)
  field(:target, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamTarget)
  field(:timestampMicros)
  field(:userRestriction, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamUserRestriction)
  field(:version)
  field(:videoReviewData, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamVideoReviewData)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AbuseiamEvaluation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AbuseiamEvaluation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AbuseiamEvaluation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
