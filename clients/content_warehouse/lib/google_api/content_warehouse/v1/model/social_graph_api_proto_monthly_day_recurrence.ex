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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoMonthlyDayRecurrence do
  @moduledoc """
  Pattern for a MONTHLY recurrence. This Monthly reccurence supports: 1. Absolute days of the month (i.e. the 1st and 15th) 2. Relative day from the end of the month (i.e. -1 for last day, -2 for second-to-last day). Used in PeopleAPI layers + FBS/ContactsService (not in ProfileService)

  ## Attributes

  *   `monthDay` (*type:* `list(integer())`, *default:* `nil`) - Absolute day of the month (if positive) or relative day from the end of the month (if negative). Example: 2nd and 20th of the month [2, 20]. Example: Last day of the month [-1]. Positive values should correspond to actual calendar day number (indexing starts at 1).
  *   `useLastDayIfMonthDayPastEnd` (*type:* `boolean()`, *default:* `nil`) - If true, month_day beyond the end of month (i.e. month_day=31 in February) will default to the last day of the month.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :monthDay => list(integer()) | nil,
          :useLastDayIfMonthDayPastEnd => boolean() | nil
        }

  field(:monthDay, type: :list)
  field(:useLastDayIfMonthDayPastEnd)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoMonthlyDayRecurrence do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoMonthlyDayRecurrence.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoMonthlyDayRecurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end