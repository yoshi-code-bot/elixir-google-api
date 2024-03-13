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

defmodule GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServicePromptFeedback do
  @moduledoc """
  Content filter results for a prompt sent in the request.

  ## Attributes

  *   `blockReason` (*type:* `String.t`, *default:* `nil`) - Blocked reason.
  *   `blockReasonMessage` (*type:* `String.t`, *default:* `nil`) - A readable block reason message.
  *   `safetyRatings` (*type:* `list(GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceSafetyRating.t)`, *default:* `nil`) - Safety ratings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockReason => String.t() | nil,
          :blockReasonMessage => String.t() | nil,
          :safetyRatings =>
            list(GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceSafetyRating.t()) | nil
        }

  field(:blockReason)
  field(:blockReasonMessage)

  field(:safetyRatings,
    as: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServiceSafetyRating,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServicePromptFeedback do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServicePromptFeedback.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiNlLlmProtoServicePromptFeedback do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end