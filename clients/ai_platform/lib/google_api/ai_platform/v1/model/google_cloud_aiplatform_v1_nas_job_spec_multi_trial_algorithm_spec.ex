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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec do
  @moduledoc """
  The spec of multi-trial Neural Architecture Search (NAS).

  ## Attributes

  *   `metric` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec.t`, *default:* `nil`) - Metric specs for the NAS job. Validation for this field is done at `multi_trial_algorithm_spec` field.
  *   `multiTrialAlgorithm` (*type:* `String.t`, *default:* `nil`) - The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
  *   `searchTrialSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec.t`, *default:* `nil`) - Required. Spec for search trials.
  *   `trainTrialSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec.t`, *default:* `nil`) - Spec for train trials. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metric =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec.t()
            | nil,
          :multiTrialAlgorithm => String.t() | nil,
          :searchTrialSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec.t()
            | nil,
          :trainTrialSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec.t()
            | nil
        }

  field(:metric,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec
  )

  field(:multiTrialAlgorithm)

  field(:searchTrialSpec,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec
  )

  field(:trainTrialSpec,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end