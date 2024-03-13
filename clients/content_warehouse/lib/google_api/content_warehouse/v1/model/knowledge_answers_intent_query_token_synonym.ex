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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryTokenSynonym do
  @moduledoc """
  A TokenSynonym contains information about synonyms of a Token's ngram. The synonyms were the ones used during parsing for token explanation in place of the original ngrams. Example 1: [present population of nyc] We can generate interpretation kc:/location/statistical_region:population by converting "present" to its synonym "current", which is a context phrase for the intent. The ngram for this token would be "present" and the string "current" would be stored in synonym_ngram. Example 2: [nys important cities] We can generate interpretation kc:/location/us_state:cities by converting "important" to its synonym "major" or its synonym "biggest", because both "major cities" and "biggest cities" are attribute phrases for the intent. In this case, the ngram in this Token is "important cities", and the token_synonyms (specifically, the synonym_ngram field) would store "major cities" and "biggest cities", since those are the actual synonym ngrams that match the attribute phrases. For context phrases, we generally should have only one matched_squery_synonyms, since we try to find the best synonyms to use using the context phrase score. However, for attribute phrase we don't really have enough info to determine which synonym is better if they both trigger the same intent, and hence we will propagate both synonyms.

  ## Attributes

  *   `source` (*type:* `String.t`, *default:* `nil`) - 
  *   `synonymNgram` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :source => String.t() | nil,
          :synonymNgram => String.t() | nil
        }

  field(:source)
  field(:synonymNgram)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryTokenSynonym do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryTokenSynonym.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryTokenSynonym do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
