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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceRecurrenceEnd do
  @moduledoc """
  The end of the recurrence can be represented in one of three ways. 1. An abstract DateTime. (inclusive) 2. An absolute timestamp, in milliseconds from UTC epoch. 3. A number of occurrences. Exactly one of the fields [end_date_time, end_millis, num_occurrences] in this message must be set. Repeating tasks for which the user did not specify an end date are automatically given a reasonable end conditions by the system and auto_renew will be set to true. Similarly, if the user- provided end date is too far in the future to reasonably create all instances, the server will set an auto_renew_until end condition.

  ## Attributes

  *   `autoRenew` (*type:* `boolean()`, *default:* `nil`) - Should be used in cases where the size of the recurrence is infinite (no end date specified), in which case we rely on an offline process to extend. Set by server only, setting it on a new recurrence will throw an exception.
  *   `autoRenewUntil` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t`, *default:* `nil`) - Used in cases where the recurrence is too large to create in a single transaction. In this case we create a manageable number of instances initially and rely on an offline process to continually extend the recurrence until this date. Set by server only, setting it on a new recurrence will throw an exception.
  *   `endDateTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t`, *default:* `nil`) - 
  *   `endMillis` (*type:* `String.t`, *default:* `nil`) - Deprecated - prefer end_date_time.absolute_time_ms.
  *   `numOccurrences` (*type:* `integer()`, *default:* `nil`) - Note that auto-renewing is not supported in conjunction with num_occurrences. Therefore we impose a hard limit of 1000 when using this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoRenew => boolean() | nil,
          :autoRenewUntil =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t() | nil,
          :endDateTime =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation.t() | nil,
          :endMillis => String.t() | nil,
          :numOccurrences => integer() | nil
        }

  field(:autoRenew)

  field(:autoRenewUntil,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation
  )

  field(:endDateTime, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDateTimeAnnotation)

  field(:endMillis)
  field(:numOccurrences)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceRecurrenceEnd do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceRecurrenceEnd.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsRecurrenceRecurrenceEnd do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
