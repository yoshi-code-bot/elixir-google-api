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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VertexAISearch do
  @moduledoc """
  Retrieve from Vertex AI Search datastore for grounding. See https://cloud.google.com/vertex-ai-search-and-conversation

  ## Attributes

  *   `datastore` (*type:* `String.t`, *default:* `nil`) - Required. Fully-qualified Vertex AI Search's datastore resource ID. projects/<>/locations/<>/collections/<>/dataStores/<>
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datastore => String.t() | nil
        }

  field(:datastore)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VertexAISearch do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VertexAISearch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1VertexAISearch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end