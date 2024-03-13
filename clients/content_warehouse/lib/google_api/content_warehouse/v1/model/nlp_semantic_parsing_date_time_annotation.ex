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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation do
  @moduledoc """
  Example: "Remind me to go to the store on (Friday) (9am)" would output two non-overlapping and unrelated annotations. One would have a start_date = Friday and the other would have start_time = 9am. It's possible for Friday to be one of several upcoming Friday's, so start_date is a repeated field. Next ID: 10

  ## Attributes

  *   `dateType` (*type:* `String.t`, *default:* `nil`) - 
  *   `endDate` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `endTime` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `endWeekday` (*type:* `String.t`, *default:* `nil`) - 
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - 
  *   `startDate` (*type:* `list(String.t)`, *default:* `nil`) - NOTE: None of these are co-indexed. If the query is 'morning', there could be multiple start_time's, start_date's, end_date's, and end_time's, and they do not correspond to one another in any structured way.
  *   `startTime` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `startWeekday` (*type:* `String.t`, *default:* `nil`) - 
  *   `timeType` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateType => String.t() | nil,
          :endDate => list(String.t()) | nil,
          :endTime => list(String.t()) | nil,
          :endWeekday => String.t() | nil,
          :rawText => String.t() | nil,
          :startDate => list(String.t()) | nil,
          :startTime => list(String.t()) | nil,
          :startWeekday => String.t() | nil,
          :timeType => String.t() | nil
        }

  field(:dateType)
  field(:endDate, type: :list)
  field(:endTime, type: :list)
  field(:endWeekday)
  field(:rawText)
  field(:startDate, type: :list)
  field(:startTime, type: :list)
  field(:startWeekday)
  field(:timeType)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end