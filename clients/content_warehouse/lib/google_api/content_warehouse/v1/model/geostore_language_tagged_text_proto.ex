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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreLanguageTaggedTextProto do
  @moduledoc """
  Represents a piece of text with an associated language.

  ## Attributes

  *   `language` (*type:* `String.t`, *default:* `nil`) - The external form of a Google International Identifiers Initiative (III) LanguageCode object. See google3/i18n/identifiers/languagecode.h for details. We place extra restrictions on languages in addition to what the III library requires. See http://go/geo-schema-reference/feature-properties/languages.md
  *   `text` (*type:* `String.t`, *default:* `nil`) - The text (UTF-8 encoding).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :language => String.t() | nil,
          :text => String.t() | nil
        }

  field(:language)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreLanguageTaggedTextProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreLanguageTaggedTextProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreLanguageTaggedTextProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end