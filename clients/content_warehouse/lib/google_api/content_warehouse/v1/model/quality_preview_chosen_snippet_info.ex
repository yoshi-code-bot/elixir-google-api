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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityPreviewChosenSnippetInfo do
  @moduledoc """
  Information for chosen snippet. Next ID: 8

  ## Attributes

  *   `isVulgar` (*type:* `boolean()`, *default:* `nil`) - Whether this snippet is a vulgar candidate.
  *   `leadingTextType` (*type:* `String.t`, *default:* `nil`) - 
  *   `snippetHtml` (*type:* `String.t`, *default:* `nil`) - The rendered snippet html.
  *   `snippetType` (*type:* `String.t`, *default:* `nil`) - 
  *   `source` (*type:* `String.t`, *default:* `nil`) - Source of the chosen snippet, decided in PORC. String value of quality.porc.TextSnippetCandidate.TextSnippetSource defined at google3/quality/porc/proto/text_snippet.proto
  *   `tidbits` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityPreviewChosenSnippetInfoTidbitInfo.t)`, *default:* `nil`) - 
  *   `trailingEllipsis` (*type:* `boolean()`, *default:* `nil`) - Whether this snippet has trailing ellipsis.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isVulgar => boolean() | nil,
          :leadingTextType => String.t() | nil,
          :snippetHtml => String.t() | nil,
          :snippetType => String.t() | nil,
          :source => String.t() | nil,
          :tidbits =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.QualityPreviewChosenSnippetInfoTidbitInfo.t()
            )
            | nil,
          :trailingEllipsis => boolean() | nil
        }

  field(:isVulgar)
  field(:leadingTextType)
  field(:snippetHtml)
  field(:snippetType)
  field(:source)

  field(:tidbits,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityPreviewChosenSnippetInfoTidbitInfo,
    type: :list
  )

  field(:trailingEllipsis)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityPreviewChosenSnippetInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityPreviewChosenSnippetInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityPreviewChosenSnippetInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end