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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiTimeOfDay do
  @moduledoc """
  A civil time relative to a timezone.

  ## Attributes

  *   `hour` (*type:* `integer()`, *default:* `nil`) - The hour, in 0...23.
  *   `minute` (*type:* `integer()`, *default:* `nil`) - The minute, in 0...59.
  *   `nanosecond` (*type:* `integer()`, *default:* `nil`) - The fraction of seconds in nanoseconds, in 0..999999999.
  *   `second` (*type:* `integer()`, *default:* `nil`) - The second, in 0...59. Leap seconds are not supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hour => integer() | nil,
          :minute => integer() | nil,
          :nanosecond => integer() | nil,
          :second => integer() | nil
        }

  field(:hour)
  field(:minute)
  field(:nanosecond)
  field(:second)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiTimeOfDay do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiTimeOfDay.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiTimeOfDay do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
