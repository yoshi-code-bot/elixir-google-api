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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunk do
  @moduledoc """
  Represents a chunk.

  ## Attributes

  *   `chunkId` (*type:* `String.t`, *default:* `nil`) - ID of the chunk.
  *   `content` (*type:* `String.t`, *default:* `nil`) - Text content of the chunk.
  *   `pageFooters` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageFooter.t)`, *default:* `nil`) - Page footers associated with the chunk.
  *   `pageHeaders` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageHeader.t)`, *default:* `nil`) - Page headers associated with the chunk.
  *   `pageSpan` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageSpan.t`, *default:* `nil`) - Page span of the chunk.
  *   `sourceBlockIds` (*type:* `list(String.t)`, *default:* `nil`) - Unused.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chunkId => String.t() | nil,
          :content => String.t() | nil,
          :pageFooters =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageFooter.t()
            )
            | nil,
          :pageHeaders =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageHeader.t()
            )
            | nil,
          :pageSpan =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageSpan.t()
            | nil,
          :sourceBlockIds => list(String.t()) | nil
        }

  field(:chunkId)
  field(:content)

  field(:pageFooters,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageFooter,
    type: :list
  )

  field(:pageHeaders,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageHeader,
    type: :list
  )

  field(:pageSpan,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunkChunkPageSpan
  )

  field(:sourceBlockIds, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunk do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunk.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentChunkedDocumentChunk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
