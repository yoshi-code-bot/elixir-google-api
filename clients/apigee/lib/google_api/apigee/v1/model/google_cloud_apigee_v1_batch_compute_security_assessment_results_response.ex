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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse do
  @moduledoc """
  Response for BatchComputeSecurityAssessmentResults.

  ## Attributes

  *   `assessmentTime` (*type:* `DateTime.t`, *default:* `nil`) - The time of the assessment api call.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that can be sent as `page_token` to retrieve the next page. If this field is blank, there are no subsequent pages.
  *   `securityAssessmentResults` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResult.t)`, *default:* `nil`) - Default sort order is by resource name in alphabetic order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assessmentTime => DateTime.t() | nil,
          :nextPageToken => String.t() | nil,
          :securityAssessmentResults =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResult.t()) | nil
        }

  field(:assessmentTime, as: DateTime)
  field(:nextPageToken)

  field(:securityAssessmentResults,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityAssessmentResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
