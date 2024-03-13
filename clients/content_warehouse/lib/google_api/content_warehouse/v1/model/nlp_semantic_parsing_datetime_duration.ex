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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDuration do
  @moduledoc """
  To represent unanchored durations - the length of a date/time expression not related to calendar in local context. E.g., "play first (DURATION: 5 minutes) of Yellow Submarine", "it takes (DURATION: more than 3 days) to finish." In contrast, queries like: "wake me up in 5 minutes" will be resolved to a AbsoluteDateTime since the query indicates that the reference is now. A duration can be turned into a range if either end is anchored.

  ## Attributes

  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - This field of the Duration message should not in general be used by outside clients of the grammar. It is intended to be used internally in Aqua for evaluation purposes. The rationale is that token counts depend on the particular tokenization used in Aqua which may be different from the one used by the client and may change from time to time. Outside clients should not create a dependency on the current tokenization used in Aqua.
  *   `modifier` (*type:* `String.t`, *default:* `nil`) - For expressions such as "about 2 hrs".
  *   `quantity` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity.t`, *default:* `nil`) - 
  *   `span` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeSpan.t`, *default:* `nil`) - See comments of Span.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :modifier => String.t() | nil,
          :quantity =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity.t() | nil,
          :span => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeSpan.t() | nil
        }

  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:modifier)
  field(:quantity, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity)
  field(:span, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeSpan)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDuration do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDuration.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDuration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end