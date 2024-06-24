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

defmodule GoogleApi.DataFusion.V1.Model.TimeWindow do
  @moduledoc """
  Represents an arbitrary window of time.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The end time of the time window provided in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format. The end time should take place after the start time. Example: "2024-01-02T12:04:06-06:00"
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The start time of the time window provided in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format. Example: "2024-01-01T12:04:06-04:00"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1.Model.TimeWindow do
  def decode(value, options) do
    GoogleApi.DataFusion.V1.Model.TimeWindow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1.Model.TimeWindow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
