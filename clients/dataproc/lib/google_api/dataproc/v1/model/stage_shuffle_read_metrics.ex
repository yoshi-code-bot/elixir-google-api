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

defmodule GoogleApi.Dataproc.V1.Model.StageShuffleReadMetrics do
  @moduledoc """
  Shuffle data read for the stage.

  ## Attributes

  *   `bytesRead` (*type:* `String.t`, *default:* `nil`) - 
  *   `fetchWaitTimeMillis` (*type:* `String.t`, *default:* `nil`) - 
  *   `localBlocksFetched` (*type:* `String.t`, *default:* `nil`) - 
  *   `localBytesRead` (*type:* `String.t`, *default:* `nil`) - 
  *   `recordsRead` (*type:* `String.t`, *default:* `nil`) - 
  *   `remoteBlocksFetched` (*type:* `String.t`, *default:* `nil`) - 
  *   `remoteBytesRead` (*type:* `String.t`, *default:* `nil`) - 
  *   `remoteBytesReadToDisk` (*type:* `String.t`, *default:* `nil`) - 
  *   `remoteReqsDuration` (*type:* `String.t`, *default:* `nil`) - 
  *   `stageShufflePushReadMetrics` (*type:* `GoogleApi.Dataproc.V1.Model.StageShufflePushReadMetrics.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytesRead => String.t() | nil,
          :fetchWaitTimeMillis => String.t() | nil,
          :localBlocksFetched => String.t() | nil,
          :localBytesRead => String.t() | nil,
          :recordsRead => String.t() | nil,
          :remoteBlocksFetched => String.t() | nil,
          :remoteBytesRead => String.t() | nil,
          :remoteBytesReadToDisk => String.t() | nil,
          :remoteReqsDuration => String.t() | nil,
          :stageShufflePushReadMetrics =>
            GoogleApi.Dataproc.V1.Model.StageShufflePushReadMetrics.t() | nil
        }

  field(:bytesRead)
  field(:fetchWaitTimeMillis)
  field(:localBlocksFetched)
  field(:localBytesRead)
  field(:recordsRead)
  field(:remoteBlocksFetched)
  field(:remoteBytesRead)
  field(:remoteBytesReadToDisk)
  field(:remoteReqsDuration)
  field(:stageShufflePushReadMetrics, as: GoogleApi.Dataproc.V1.Model.StageShufflePushReadMetrics)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.StageShuffleReadMetrics do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.StageShuffleReadMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.StageShuffleReadMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
