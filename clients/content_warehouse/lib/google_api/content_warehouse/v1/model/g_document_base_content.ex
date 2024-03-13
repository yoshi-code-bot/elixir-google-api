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

defmodule GoogleApi.ContentWarehouse.V1.Model.GDocumentBaseContent do
  @moduledoc """
  Main content section

  ## Attributes

  *   `AuthMethod` (*type:* `integer()`, *default:* `nil`) - 
  *   `ContentLength` (*type:* `integer()`, *default:* `nil`) - The actual length of the content: If Representation is compressed, this equals to Content.UncompressedLength; otherwise it is the length of the representation string.
  *   `ContentType` (*type:* `integer()`, *default:* `nil`) - See enum ContentType in //depot/google3/webutil/http/content-type.proto.
  *   `CrawlTime` (*type:* `String.t`, *default:* `nil`) - Seconds since Unix epoch.
  *   `Encoding` (*type:* `integer()`, *default:* `nil`) - See //depot/google3/i18n/encodings/public/encodings.h Encoding of representation
  *   `HasHttpHeader` (*type:* `boolean()`, *default:* `nil`) - Set to false if Representation does not contain HTTP headers.
  *   `Language` (*type:* `integer()`, *default:* `nil`) - A Language enum value. See: go/language-enum Default is english
  *   `OriginalEncoding` (*type:* `integer()`, *default:* `nil`) - If OriginalEncoding is present, the body part of the Representation was converted to UTF-8, Encoding was set to UTF8, and OriginalEncoding was set to the original encoding before conversion. However, the HTTP headers part of the content might not be valid UTF-8. -1=an invalid value
  *   `Representation` (*type:* `String.t`, *default:* `nil`) - Possibly compressed for old documents. It is not compressed for docjoins produced by Raffia after ~2012.
  *   `UncompressedLength` (*type:* `integer()`, *default:* `nil`) - Historically present if Representation is compressed.
  *   `VisualType` (*type:* `integer()`, *default:* `nil`) - Whether the content was visual right-to-left, and if so, what type of visual document it is. Must be one of the values in enum VisualType from google3/repository/rtl/visualtype.h Default is NOT_VISUAL_DOCUMENT. See http://wiki/Main/RtlLanguages for background.
  *   `crawledFileSize` (*type:* `integer()`, *default:* `nil`) - Crawled file size of the original document.
  *   `encodedGeometryAnnotations` (*type:* `String.t`, *default:* `nil`) - GeometryAnnotations, encoded with GeometryUtil::DeltaEncode() to reduce disk space usage. Use GeometryUtil::DeltaDecode() to decode this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :AuthMethod => integer() | nil,
          :ContentLength => integer() | nil,
          :ContentType => integer() | nil,
          :CrawlTime => String.t() | nil,
          :Encoding => integer() | nil,
          :HasHttpHeader => boolean() | nil,
          :Language => integer() | nil,
          :OriginalEncoding => integer() | nil,
          :Representation => String.t() | nil,
          :UncompressedLength => integer() | nil,
          :VisualType => integer() | nil,
          :crawledFileSize => integer() | nil,
          :encodedGeometryAnnotations => String.t() | nil
        }

  field(:AuthMethod)
  field(:ContentLength)
  field(:ContentType)
  field(:CrawlTime)
  field(:Encoding)
  field(:HasHttpHeader)
  field(:Language)
  field(:OriginalEncoding)
  field(:Representation)
  field(:UncompressedLength)
  field(:VisualType)
  field(:crawledFileSize)
  field(:encodedGeometryAnnotations)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GDocumentBaseContent do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GDocumentBaseContent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GDocumentBaseContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
