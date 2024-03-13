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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreUrlProto do
  @moduledoc """
  A web location for a Feature. URLs should always be stored in repeated fields because some objects (eg. transit schedules in Brussels) have different URLs for different languages.

  ## Attributes

  *   `language` (*type:* `String.t`, *default:* `nil`) - The external form of a Google International Identifiers Initiative (III) LanguageCode object. See google3/i18n/identifiers/languagecode.h for details. We place extra restrictions on languages in addition to what the III library requires. See http://go/geo-schema-reference/feature-properties/languages.md This field represents the language of the content of the web site. It may be missing if the web site is language-independent or if the language is unknown.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t`, *default:* `nil`) - Field-level metadata for this URL. NOTE: there are multiple UrlProto fields in the Geo Schema. Metadata here is only expected to be present on FeatureProto.website[].
  *   `pagerank` (*type:* `integer()`, *default:* `nil`) - ** DEPRECATED ** The pagerank of this URL. Valid values [0, 65535] See http://wiki/Main/NearestSeeds for more information.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :language => String.t() | nil,
          :metadata => GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t() | nil,
          :pagerank => integer() | nil,
          :url => String.t() | nil
        }

  field(:language)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto)
  field(:pagerank)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreUrlProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreUrlProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreUrlProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end