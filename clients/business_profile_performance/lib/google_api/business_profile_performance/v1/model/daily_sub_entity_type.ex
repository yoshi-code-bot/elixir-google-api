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

defmodule GoogleApi.BusinessProfilePerformance.V1.Model.DailySubEntityType do
  @moduledoc """
  Represents all possible subentity types that are associated with DailyMetrics.

  ## Attributes

  *   `dayOfWeek` (*type:* `String.t`, *default:* `nil`) - Represents the day of the week. Eg: MONDAY. Currently supported DailyMetrics = NONE.
  *   `timeOfDay` (*type:* `GoogleApi.BusinessProfilePerformance.V1.Model.TimeOfDay.t`, *default:* `nil`) - Represents the time of the day in 24 hour format. Eg: 13:34:20 Currently supported DailyMetrics = NONE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dayOfWeek => String.t() | nil,
          :timeOfDay => GoogleApi.BusinessProfilePerformance.V1.Model.TimeOfDay.t() | nil
        }

  field(:dayOfWeek)
  field(:timeOfDay, as: GoogleApi.BusinessProfilePerformance.V1.Model.TimeOfDay)
end

defimpl Poison.Decoder, for: GoogleApi.BusinessProfilePerformance.V1.Model.DailySubEntityType do
  def decode(value, options) do
    GoogleApi.BusinessProfilePerformance.V1.Model.DailySubEntityType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BusinessProfilePerformance.V1.Model.DailySubEntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end