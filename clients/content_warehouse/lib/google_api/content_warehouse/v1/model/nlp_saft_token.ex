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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSaftToken do
  @moduledoc """
  A document token marks a span of bytes in the document text as a token or word. Next available index: 16.

  ## Attributes

  *   `breakLevel` (*type:* `String.t`, *default:* `nil`) - 
  *   `breakSkippedText` (*type:* `boolean()`, *default:* `nil`) - Whether the break skipped over non-tag text (excluding script/style).
  *   `category` (*type:* `String.t`, *default:* `nil`) - Coarse-grained word category for token. See README.categories for category inventory.
  *   `end` (*type:* `integer()`, *default:* `nil`) - 
  *   `head` (*type:* `integer()`, *default:* `nil`) - Head of this token in the dependency tree: the id of the token which has an arc going to this one. If it is the root token of a sentence, then it is set to -1.
  *   `info` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - Annotation for this token.
  *   `label` (*type:* `String.t`, *default:* `nil`) - Label for dependency relation between this token and its head. See README.labels for label inventory.
  *   `lemma` (*type:* `String.t`, *default:* `nil`) - Word lemma. This is only filled if the lemma is different from the word form.
  *   `morph` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSaftMorphology.t`, *default:* `nil`) - Morphology information.
  *   `scriptCode` (*type:* `String.t`, *default:* `nil`) - A string representation (typically four letters, sometimes longer) of the token's Unicode script code, based on BCP 47/CLDR, capitalized according to ISO 15924. See i18n/identifiers/scriptcode.h for details.
  *   `start` (*type:* `integer()`, *default:* `nil`) - [start, end] describe the inclusive byte range of the UTF-8 encoded token in document.text. End gives the index of the last byte, which may be a UTF-8 continuation byte, and the length in bytes is end - start + 1. begin/end options are for goldmine AnnotationsFinder to locate the offsets of saft tokens. Start is inclusive by default and end is marked.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - Part-of-speech tag for token. See README.tags for tag inventory.
  *   `tagConfidence` (*type:* `number()`, *default:* `nil`) - Confidence score for the tag prediction -- should be interpreted as a probability estimate that the tag is correct.
  *   `textProperties` (*type:* `integer()`, *default:* `nil`) - 
  *   `word` (*type:* `String.t`, *default:* `nil`) - Token word form. This may not be identical to the original. For example, in goldmine annotation we do UTF-8 normalization and punctuation normalization. The punctuation normalization includes inferring the directionality of straight doublequotes -- that is, we map " to open quote (``) or close quote (''), and sometimes we get it wrong. SAFT processing in other contexts (such as queries in qrewrite) involves different normalizations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :breakLevel => String.t() | nil,
          :breakSkippedText => boolean() | nil,
          :category => String.t() | nil,
          :end => integer() | nil,
          :head => integer() | nil,
          :info => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :label => String.t() | nil,
          :lemma => String.t() | nil,
          :morph => GoogleApi.ContentWarehouse.V1.Model.NlpSaftMorphology.t() | nil,
          :scriptCode => String.t() | nil,
          :start => integer() | nil,
          :tag => String.t() | nil,
          :tagConfidence => number() | nil,
          :textProperties => integer() | nil,
          :word => String.t() | nil
        }

  field(:breakLevel)
  field(:breakSkippedText)
  field(:category)
  field(:end)
  field(:head)
  field(:info, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
  field(:label)
  field(:lemma)
  field(:morph, as: GoogleApi.ContentWarehouse.V1.Model.NlpSaftMorphology)
  field(:scriptCode)
  field(:start)
  field(:tag)
  field(:tagConfidence)
  field(:textProperties)
  field(:word)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftToken do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSaftToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end