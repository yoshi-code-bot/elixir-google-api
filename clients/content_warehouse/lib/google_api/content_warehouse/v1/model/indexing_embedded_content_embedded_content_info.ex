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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedContentInfo do
  @moduledoc """
  This protobuf is used (1) To pass data between EmbeddedExporter and the publisher, and (2) As a member of CompositeDoc, to stick embedded content output into the docjoins. Next tag available: 21

  ## Attributes

  *   `compressedDocumentTrees` (*type:* `String.t`, *default:* `nil`) - The document's DOM and render tree produced by WebKit as a side effect of rendering the page. It might be compressed or not. Thus, use indexing::embedded_content::UncompressWebkitDocument to decode it.
  *   `convertedContents` (*type:* `String.t`, *default:* `nil`) - The converted contents, as produced by the same DocumentUpdater transaction that generated the render tree. Useful whenever one of our users wants to experiment with deriving an annotation from the render tree.
  *   `embeddedLinksInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedLinksInfo.t`, *default:* `nil`) - Information about all external resources needed to render this page, a.k.a. embedded links. This includes .css files, images embedded in a page, external javascripts, iframes etc.
  *   `headlessResponse` (*type:* `GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderResponse.t`, *default:* `nil`) - The headless response for rendering the document.
  *   `isAlternateSnapshot` (*type:* `boolean()`, *default:* `nil`) - Indicate if the snapshot is generated from alternate snapshot. If true, the snapshot will be exported even if the snapshot quality score is low.
  *   `originalEncoding` (*type:* `integer()`, *default:* `nil`) - The original encoding of the content crawled from trawler. It's the value of enum i18n::encodings::encoding. We put a int32 here instead of encoding proto to maintain the compatibility of "py_api_version = 1"
  *   `rawRedirectInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRawRedirectInfo.t`, *default:* `nil`) - *** DEPRECATED *** This field is only populated in fresh_doc which is shutting down.
  *   `referencedResource` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoReferencedResource.t)`, *default:* `nil`) - Information about all external resources used to render this page, a.k.a. embedded links. This includes .css files, images embedded in a page, external javascripts, iframes etc.
  *   `renderedSnapshot` (*type:* `GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoImage.t`, *default:* `nil`) - Only exist in dry run mode.
  *   `renderedSnapshotImage` (*type:* `String.t`, *default:* `nil`) - Snapshot image of a rendered html document (possibly encoded as png, jpeg, or webp).
  *   `renderedSnapshotMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotMetadata.t`, *default:* `nil`) - A collection of values which are needed by the users of the Kodachrome bigtable.
  *   `renderedSnapshotQualityScore` (*type:* `float()`, *default:* `nil`) - The quality of the image, 0.0 is the worst, 1.0 is the best. If all dependencies are successfully crawled, the quality should be 1.0. If one or more of the dependencies are unknown, the quality will be lower.
  *   `renderingOutputMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingOutputMetadata.t`, *default:* `nil`) - 
  *   `richcontentData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData.t`, *default:* `nil`) - The rich content data to recover the original contents from the converted_contents. Useful for offline content analysis.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compressedDocumentTrees => String.t() | nil,
          :convertedContents => String.t() | nil,
          :embeddedLinksInfo =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedLinksInfo.t() | nil,
          :headlessResponse =>
            GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderResponse.t()
            | nil,
          :isAlternateSnapshot => boolean() | nil,
          :originalEncoding => integer() | nil,
          :rawRedirectInfo =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRawRedirectInfo.t() | nil,
          :referencedResource =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoReferencedResource.t()
            )
            | nil,
          :renderedSnapshot =>
            GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoImage.t() | nil,
          :renderedSnapshotImage => String.t() | nil,
          :renderedSnapshotMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotMetadata.t() | nil,
          :renderedSnapshotQualityScore => float() | nil,
          :renderingOutputMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingOutputMetadata.t()
            | nil,
          :richcontentData =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData.t() | nil
        }

  field(:compressedDocumentTrees)
  field(:convertedContents)

  field(:embeddedLinksInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedLinksInfo
  )

  field(:headlessResponse,
    as: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderResponse
  )

  field(:isAlternateSnapshot)
  field(:originalEncoding)

  field(:rawRedirectInfo, as: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRawRedirectInfo)

  field(:referencedResource,
    as: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoReferencedResource,
    type: :list
  )

  field(:renderedSnapshot,
    as: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoImage
  )

  field(:renderedSnapshotImage)

  field(:renderedSnapshotMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotMetadata
  )

  field(:renderedSnapshotQualityScore)

  field(:renderingOutputMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingOutputMetadata
  )

  field(:richcontentData, as: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterRichContentData)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedContentInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedContentInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedContentInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
