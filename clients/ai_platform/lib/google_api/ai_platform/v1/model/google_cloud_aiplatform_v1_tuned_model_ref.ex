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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TunedModelRef do
  @moduledoc """
  TunedModel Reference for legacy model migration.

  ## Attributes

  *   `pipelineJob` (*type:* `String.t`, *default:* `nil`) - Support migration from tuning job list page, from bison model to gemini model.
  *   `tunedModel` (*type:* `String.t`, *default:* `nil`) - Support migration from model registry.
  *   `tuningJob` (*type:* `String.t`, *default:* `nil`) - Support migration from tuning job list page, from gemini-1.0-pro-002 to 1.5 and above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pipelineJob => String.t() | nil,
          :tunedModel => String.t() | nil,
          :tuningJob => String.t() | nil
        }

  field(:pipelineJob)
  field(:tunedModel)
  field(:tuningJob)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TunedModelRef do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TunedModelRef.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TunedModelRef do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
