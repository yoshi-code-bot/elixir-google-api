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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput do
  @moduledoc """
  Instance and metric spec for RubricBasedInstructionFollowing metric.

  ## Attributes

  *   `instance` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingInstance.t`, *default:* `nil`) - Required. Instance for RubricBasedInstructionFollowing metric.
  *   `metricSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec.t`, *default:* `nil`) - Required. Spec for RubricBasedInstructionFollowing metric.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instance =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingInstance.t()
            | nil,
          :metricSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec.t()
            | nil
        }

  field(:instance,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingInstance
  )

  field(:metricSpec,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
