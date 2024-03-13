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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefDocumentMetadata do
  @moduledoc """
  Information about the document which is not produced by webref, typically copied from the docjoin. Next available tag: 15

  ## Attributes

  *   `crawlTime` (*type:* `String.t`, *default:* `nil`) - The timestamp of when the document was crawled (if known). Copied from CompositeDoc.Content.CrawlTime.
  *   `docFp` (*type:* `String.t`, *default:* `nil`) - Fingerprint of the document. We compute and set this fingerprint when creating the pagesets that we use for evals. Otherwise, this field is not normally set. We use the field to make sure that the human ratings that we have are generated for the same version of the document, otherwise they might be invalid. We do not compute the fingerprint on the fly (e.g. as a fingerprint of the proto buffer serialization of the cdoc) because protocol buffer serialization is not stable.
  *   `docId` (*type:* `String.t`, *default:* `nil`) - DocId of the annotated document as read from cdoc.doc().docid().
  *   `forwardingUrls` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefForwardingUrls.t`, *default:* `nil`) - Urls that forward to this url. Needed for url -> topical entity entries.
  *   `isDisambiguationPage` (*type:* `boolean()`, *default:* `nil`) - Set to true if the document is a known disambiguation page, e.g. https://en.wikipedia.org/wiki/Orange.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The document language, as read from doc().content().language(). This is go/language-enum value.
  *   `numIncomingAnchors` (*type:* `number()`, *default:* `nil`) - The (weighted) number of incoming anchors (links from other documents).
  *   `salientTerms` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSalientTermSet.t`, *default:* `nil`) - The salient terms for this document. Only set if --webref_doc_metadata_copy_salient_terms is true. Same motivation as the title field above.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the document. Only set if --webref_doc_metadata_set_title is true. The idea is that we can use this to more easily learn things like: title contains "restaurants" -> more likely to be a list page.
  *   `totalClicks` (*type:* `number()`, *default:* `nil`) - The total clicks on this document, taken from navboost data.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The url of the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crawlTime => String.t() | nil,
          :docFp => String.t() | nil,
          :docId => String.t() | nil,
          :forwardingUrls =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefForwardingUrls.t() | nil,
          :isDisambiguationPage => boolean() | nil,
          :language => String.t() | nil,
          :numIncomingAnchors => number() | nil,
          :salientTerms =>
            GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSalientTermSet.t() | nil,
          :title => String.t() | nil,
          :totalClicks => number() | nil,
          :url => String.t() | nil
        }

  field(:crawlTime)
  field(:docFp)
  field(:docId)
  field(:forwardingUrls, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefForwardingUrls)
  field(:isDisambiguationPage)
  field(:language)
  field(:numIncomingAnchors)
  field(:salientTerms, as: GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSalientTermSet)
  field(:title)
  field(:totalClicks)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefDocumentMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefDocumentMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefDocumentMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
