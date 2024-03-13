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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSnippetDebugInfo do
  @moduledoc """
  Returned by Delver API in Snippet.debug_info.

  ## Attributes

  *   `goldHighlightSentenceIndices` (*type:* `list(integer())`, *default:* `nil`) - Which highlights have sentence overlap with gold snippets. Not ordered. Might only be set for the first gold highlight.
  *   `highlightIdxToOverlap` (*type:* `map()`, *default:* `nil`) - Map of highlight index to best overlap with any gold snippet [0,1].
  *   `highlightIdxToSentenceOverlap` (*type:* `map()`, *default:* `nil`) - Map of highlight index to best overlap with any gold sentence [0,1].
  *   `isGold` (*type:* `boolean()`, *default:* `nil`) - Not set by server; only used by certain evals. Might only be set for the first gold snippet.
  *   `offsetWithinSection` (*type:* `integer()`, *default:* `nil`) - Byte index of text within the full section text (or within title).
  *   `sectionIndex` (*type:* `integer()`, *default:* `nil`) - Section within the document. -1 if title.
  *   `sectionIrScore` (*type:* `number()`, *default:* `nil`) - IR score of the section the snippet is coming from.
  *   `snippetBleuScore` (*type:* `number()`, *default:* `nil`) - BLEU score for the entire snippet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :goldHighlightSentenceIndices => list(integer()) | nil,
          :highlightIdxToOverlap => map() | nil,
          :highlightIdxToSentenceOverlap => map() | nil,
          :isGold => boolean() | nil,
          :offsetWithinSection => integer() | nil,
          :sectionIndex => integer() | nil,
          :sectionIrScore => number() | nil,
          :snippetBleuScore => number() | nil
        }

  field(:goldHighlightSentenceIndices, type: :list)
  field(:highlightIdxToOverlap, type: :map)
  field(:highlightIdxToSentenceOverlap, type: :map)
  field(:isGold)
  field(:offsetWithinSection)
  field(:sectionIndex)
  field(:sectionIrScore)
  field(:snippetBleuScore)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSnippetDebugInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSnippetDebugInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitRetrievalSnippetDebugInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end