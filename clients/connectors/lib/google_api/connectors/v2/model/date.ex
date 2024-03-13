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

defmodule GoogleApi.Connectors.V2.Model.Date do
  @moduledoc """
  Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

  ## Attributes

  *   `day` (*type:* `integer()`, *default:* `nil`) - Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
  *   `month` (*type:* `integer()`, *default:* `nil`) - Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
  *   `year` (*type:* `integer()`, *default:* `nil`) - Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :day => integer() | nil,
          :month => integer() | nil,
          :year => integer() | nil
        }

  field(:day)
  field(:month)
  field(:year)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V2.Model.Date do
  def decode(value, options) do
    GoogleApi.Connectors.V2.Model.Date.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V2.Model.Date do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
