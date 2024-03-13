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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRecurrent do
  @moduledoc """
  expressions: "every Monday after December 1" "every morning starting from this Friday". Note: if a recurrent DATE/TIME expression is bounded (limited by a finite interval or a finite count), e.g., "every monday in the next 3 months", "... at 11:00am every Monday for 4 times" the grammar will resolve it to a finite number of |range|s. Next available ID: 17.

  ## Attributes

  *   `countRestriction` (*type:* `integer()`, *default:* `nil`) - How many times it repeats.
  *   `exception` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t)`, *default:* `nil`) - An arbitrary exception to the recurrence. This can be an absolute point, a relative, a range or a recurrent expression. Examples: * "every Tuesday except for July 13th 2021" * "every Tuesday except for July 13th and November 2nd" * "every second Monday except during the summer" * "everyday except Thursdays" * "every Friday, except from October 1st to October 22nd"
  *   `frequency` (*type:* `integer()`, *default:* `nil`) - |frequency| is used to represent the frequency of the recurrence over a given recurrent period. E.g. "twice a week", "once a month". An unknown frequency is represented with 0, as in just "repeating".
  *   `metadata` (*type:* `String.t`, *default:* `nil`) - 
  *   `period` (*type:* `integer()`, *default:* `nil`) - |period| and |unit| specify how often |start_point| or |start_range| repeats. |period| should not be 0.
  *   `rangeRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange.t`, *default:* `nil`) - 
  *   `relativeRangeRestriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t`, *default:* `nil`) - 
  *   `restriction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t`, *default:* `nil`) - A recurrent expression can be restricted by either a datetime |restriction| or |count_restriction| below. The restriction datetime can be expressed as an explicit range a relative datetime expression, a datetime point or a recurrent datetime. E.g. "every monday [next month]", "every second tuesday [this year]", etc. If |period| is > 0 and |restriction| is not set, repeat indefinitely. Note that this can support recurrent expressions as |restriction| as well. For example in the expression "every monday on [every other month]" where [every other month] is a restriction expressed as a recurrent datetime.
  *   `start` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t)`, *default:* `nil`) - |start| is used to represent the starting points, ranges or relative datetims in a recurrent expression, for example: "every morning", (range) "everyday at 5 pm", (point) "every second monday" (relative) |start| should never contain a recurrent element.
  *   `startPoint` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t)`, *default:* `nil`) - DO NOT USE: deprecated fields soon to be removed.
  *   `startRange` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange.t)`, *default:* `nil`) - 
  *   `startRelative` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t)`, *default:* `nil`) - 
  *   `target` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTargetToFetch.t`, *default:* `nil`) - The target to be fetched. This could be a named day-of-week or month (e.g., "Monday", "April"), or a date/time unit (e.g., "day", "week", "month").
  *   `timeInterval` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity.t`, *default:* `nil`) - |time_interval| is a time amount or duration, used to described the time interval between the instances of the recurrence. (e.g. "every 3 hours", "every 35 minutes", "every 2 months and 15 days", etc)
  *   `unit` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countRestriction => integer() | nil,
          :exception =>
            list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t()) | nil,
          :frequency => integer() | nil,
          :metadata => String.t() | nil,
          :period => integer() | nil,
          :rangeRestriction =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange.t() | nil,
          :relativeRangeRestriction =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t()
            | nil,
          :restriction =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t() | nil,
          :start =>
            list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t()) | nil,
          :startPoint =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t()
            )
            | nil,
          :startRange =>
            list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange.t()) | nil,
          :startRelative =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t()
            )
            | nil,
          :target =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTargetToFetch.t() | nil,
          :timeInterval =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity.t() | nil,
          :unit => String.t() | nil
        }

  field(:countRestriction)

  field(:exception,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime,
    type: :list
  )

  field(:frequency)
  field(:metadata)
  field(:period)

  field(:rangeRestriction, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange)

  field(:relativeRangeRestriction,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime
  )

  field(:restriction, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime)

  field(:start,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime,
    type: :list
  )

  field(:startPoint,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime,
    type: :list
  )

  field(:startRange,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange,
    type: :list
  )

  field(:startRelative,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime,
    type: :list
  )

  field(:target, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTargetToFetch)
  field(:timeInterval, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeQuantity)
  field(:unit)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRecurrent do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRecurrent.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRecurrent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end