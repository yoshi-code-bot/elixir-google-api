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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VoiceConfig do
  @moduledoc """
  The configuration for the voice to use.

  ## Attributes

  *   `prebuiltVoiceConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PrebuiltVoiceConfig.t`, *default:* `nil`) - The configuration for the prebuilt voice to use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :prebuiltVoiceConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PrebuiltVoiceConfig.t() | nil
        }

  field(:prebuiltVoiceConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PrebuiltVoiceConfig
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VoiceConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VoiceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VoiceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
