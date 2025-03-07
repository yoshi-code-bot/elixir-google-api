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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContent do
  @moduledoc """
  Base structured datatype containing multi-part content of a message.

  ## Attributes

  *   `parts` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContentPart.t)`, *default:* `nil`) - Ordered `Parts` that constitute a single message.
  *   `role` (*type:* `String.t`, *default:* `nil`) - Producer of the content. Must be either `user` or `model`. Intended to be used for multi-turn conversations. Otherwise, it can be left unset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parts =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContentPart.t()
            )
            | nil,
          :role => String.t() | nil
        }

  field(:parts,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContentPart,
    type: :list
  )

  field(:role)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContent do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaGroundedGenerationContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
