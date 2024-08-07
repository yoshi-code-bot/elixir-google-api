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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialContext do
  @moduledoc """


  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A human-readable field which can store a description of this context. This will become part of the resulting Trial's description field.
  *   `parameters` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialParameter.t)`, *default:* `nil`) - If/when a Trial is generated or selected from this Context, its Parameters will match any parameters specified here. (I.e. if this context specifies parameter name:'a' int_value:3, then a resulting Trial will have int_value:3 for its parameter named 'a'.) Note that we first attempt to match existing REQUESTED Trials with contexts, and if there are no matches, we generate suggestions in the subspace defined by the parameters specified here. NOTE: a Context without any Parameters matches the entire feasible search space.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :parameters =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialParameter.t()) | nil
        }

  field(:description)

  field(:parameters,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialParameter,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialContext do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrialContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
