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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListSpecialistPoolsResponse do
  @moduledoc """
  Response message for SpecialistPoolService.ListSpecialistPools.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The standard List next-page token.
  *   `specialistPools` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpecialistPool.t)`, *default:* `nil`) - A list of SpecialistPools that matches the specified filter in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :specialistPools =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpecialistPool.t()) | nil
        }

  field(:nextPageToken)

  field(:specialistPools,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpecialistPool,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListSpecialistPoolsResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListSpecialistPoolsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListSpecialistPoolsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end