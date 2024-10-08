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

defmodule GoogleApi.Translate.V3.Model.AdaptiveMtTranslateRequest do
  @moduledoc """
  The request for sending an AdaptiveMt translation query.

  ## Attributes

  *   `content` (*type:* `list(String.t)`, *default:* `nil`) - Required. The content of the input in string format.
  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Required. The resource name for the dataset to use for adaptive MT. `projects/{project}/locations/{location-id}/adaptiveMtDatasets/{dataset}`
  *   `glossaryConfig` (*type:* `GoogleApi.Translate.V3.Model.GlossaryConfig.t`, *default:* `nil`) - Optional. Glossary to be applied. The glossary must be within the same region (have the same location-id) as the model, otherwise an INVALID_ARGUMENT (400) error is returned.
  *   `referenceSentenceConfig` (*type:* `GoogleApi.Translate.V3.Model.ReferenceSentenceConfig.t`, *default:* `nil`) - Configuration for caller provided reference sentences.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => list(String.t()) | nil,
          :dataset => String.t() | nil,
          :glossaryConfig => GoogleApi.Translate.V3.Model.GlossaryConfig.t() | nil,
          :referenceSentenceConfig =>
            GoogleApi.Translate.V3.Model.ReferenceSentenceConfig.t() | nil
        }

  field(:content, type: :list)
  field(:dataset)
  field(:glossaryConfig, as: GoogleApi.Translate.V3.Model.GlossaryConfig)
  field(:referenceSentenceConfig, as: GoogleApi.Translate.V3.Model.ReferenceSentenceConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.AdaptiveMtTranslateRequest do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.AdaptiveMtTranslateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.AdaptiveMtTranslateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
