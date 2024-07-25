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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResult do
  @moduledoc """
  The security assessment result for one resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time of the assessment of this resource. This could lag behind `assessment_time` due to caching within the backend.
  *   `error` (*type:* `GoogleApi.Apigee.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - The error status if scoring fails.
  *   `resource` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultResource.t`, *default:* `nil`) - The assessed resource.
  *   `scoringResult` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResult.t`, *default:* `nil`) - The result of the assessment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :error => GoogleApi.Apigee.V1.Model.GoogleRpcStatus.t() | nil,
          :resource =>
            GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultResource.t()
            | nil,
          :scoringResult =>
            GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResult.t()
            | nil
        }

  field(:createTime, as: DateTime)
  field(:error, as: GoogleApi.Apigee.V1.Model.GoogleRpcStatus)

  field(:resource,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultResource
  )

  field(:scoringResult,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResultScoringResult
  )
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResult do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
