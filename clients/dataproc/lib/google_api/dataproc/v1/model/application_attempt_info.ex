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

defmodule GoogleApi.Dataproc.V1.Model.ApplicationAttemptInfo do
  @moduledoc """
  Specific attempt of an application.

  ## Attributes

  *   `appSparkVersion` (*type:* `String.t`, *default:* `nil`) - 
  *   `attemptId` (*type:* `String.t`, *default:* `nil`) - 
  *   `completed` (*type:* `boolean()`, *default:* `nil`) - 
  *   `durationMillis` (*type:* `String.t`, *default:* `nil`) - 
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `lastUpdated` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `sparkUser` (*type:* `String.t`, *default:* `nil`) - 
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appSparkVersion => String.t() | nil,
          :attemptId => String.t() | nil,
          :completed => boolean() | nil,
          :durationMillis => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :lastUpdated => DateTime.t() | nil,
          :sparkUser => String.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:appSparkVersion)
  field(:attemptId)
  field(:completed)
  field(:durationMillis)
  field(:endTime, as: DateTime)
  field(:lastUpdated, as: DateTime)
  field(:sparkUser)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ApplicationAttemptInfo do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ApplicationAttemptInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ApplicationAttemptInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
