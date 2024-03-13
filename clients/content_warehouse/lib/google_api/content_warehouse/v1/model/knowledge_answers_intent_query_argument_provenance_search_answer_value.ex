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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceSearchAnswerValue do
  @moduledoc """
  The value was carried over from a SearchAnswerValue triggered by a previous query (go/search-answer-values). For example: U: Movies with Tom Cruise. [Movies(actor=/m/tom_cruise)] G: Tom Cruise's movies include Top Gun, The Mummy, and 52 others. U: Reviews for the second one. [Reviews(movie=/m/the_mummy)] The "movie" argument in the last query would have a provenance of SEARCH_ANSWER_VALUE.

  ## Attributes

  *   `eventId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.EventIdMessage.t`, *default:* `nil`) - This identifies the SearchAnswerValues where this value was pulled from.
  *   `metadataValueIndex` (*type:* `integer()`, *default:* `nil`) - Each SearchAnswerValue can have a primary value and a list of metadata values. If this index is set, this value was pulled from the metadata value at this index, otherwise it was pulled from the primary value.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The display text of this answer value. It's taken from the search answer value display text if present, or the canonical name if it's an entity.
  *   `valueIndex` (*type:* `integer()`, *default:* `nil`) - The index of the SearchAnswerValue where this value was pulled from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventId => GoogleApi.ContentWarehouse.V1.Model.EventIdMessage.t() | nil,
          :metadataValueIndex => integer() | nil,
          :text => String.t() | nil,
          :valueIndex => integer() | nil
        }

  field(:eventId, as: GoogleApi.ContentWarehouse.V1.Model.EventIdMessage)
  field(:metadataValueIndex)
  field(:text)
  field(:valueIndex)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceSearchAnswerValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceSearchAnswerValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceSearchAnswerValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end