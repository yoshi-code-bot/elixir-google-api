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

defmodule GoogleApi.Dataproc.V1.Model.StreamingQueryData do
  @moduledoc """
  Streaming

  ## Attributes

  *   `endTimestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `exception` (*type:* `String.t`, *default:* `nil`) - 
  *   `isActive` (*type:* `boolean()`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `runId` (*type:* `String.t`, *default:* `nil`) - 
  *   `startTimestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `streamingQueryId` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTimestamp => String.t() | nil,
          :exception => String.t() | nil,
          :isActive => boolean() | nil,
          :name => String.t() | nil,
          :runId => String.t() | nil,
          :startTimestamp => String.t() | nil,
          :streamingQueryId => String.t() | nil
        }

  field(:endTimestamp)
  field(:exception)
  field(:isActive)
  field(:name)
  field(:runId)
  field(:startTimestamp)
  field(:streamingQueryId)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.StreamingQueryData do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.StreamingQueryData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.StreamingQueryData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
