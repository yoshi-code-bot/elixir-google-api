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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Metrics do
  @moduledoc """
  Metrics for a single Key.

  ## Attributes

  *   `challengeMetrics` (*type:* `list(GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.t)`, *default:* `nil`) - Metrics are continuous and in order by dates, and in the granularity of day. Only challenge-based keys (CHECKBOX, INVISIBLE) have challenge-based data.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. The name of the metrics, in the format `projects/{project}/keys/{key}/metrics`.
  *   `scoreMetrics` (*type:* `list(GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ScoreMetrics.t)`, *default:* `nil`) - Metrics are continuous and in order by dates, and in the granularity of day. All Key types should have score-based data.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Inclusive start time aligned to a day in the America/Los_Angeles (Pacific) timezone.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :challengeMetrics =>
            list(
              GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.t()
            )
            | nil,
          :name => String.t() | nil,
          :scoreMetrics =>
            list(
              GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ScoreMetrics.t()
            )
            | nil,
          :startTime => DateTime.t() | nil
        }

  field(:challengeMetrics,
    as: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics,
    type: :list
  )

  field(:name)

  field(:scoreMetrics,
    as: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ScoreMetrics,
    type: :list
  )

  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Metrics do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Metrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1Metrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
