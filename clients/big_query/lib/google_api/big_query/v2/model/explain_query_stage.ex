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

defmodule GoogleApi.BigQuery.V2.Model.ExplainQueryStage do
  @moduledoc """


  ## Attributes

  *   `completedParallelInputs` (*type:* `String.t`, *default:* `nil`) - Number of parallel input segments completed.
  *   `computeMsAvg` (*type:* `String.t`, *default:* `nil`) - Milliseconds the average shard spent on CPU-bound tasks.
  *   `computeMsMax` (*type:* `String.t`, *default:* `nil`) - Milliseconds the slowest shard spent on CPU-bound tasks.
  *   `computeRatioAvg` (*type:* `float()`, *default:* `nil`) - Relative amount of time the average shard spent on CPU-bound tasks.
  *   `computeRatioMax` (*type:* `float()`, *default:* `nil`) - Relative amount of time the slowest shard spent on CPU-bound tasks.
  *   `endMs` (*type:* `String.t`, *default:* `nil`) - Stage end time represented as milliseconds since epoch.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique ID for stage within plan.
  *   `inputStages` (*type:* `list(String.t)`, *default:* `nil`) - IDs for stages that are inputs to this stage.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Human-readable name for stage.
  *   `parallelInputs` (*type:* `String.t`, *default:* `nil`) - Number of parallel input segments to be processed.
  *   `readMsAvg` (*type:* `String.t`, *default:* `nil`) - Milliseconds the average shard spent reading input.
  *   `readMsMax` (*type:* `String.t`, *default:* `nil`) - Milliseconds the slowest shard spent reading input.
  *   `readRatioAvg` (*type:* `float()`, *default:* `nil`) - Relative amount of time the average shard spent reading input.
  *   `readRatioMax` (*type:* `float()`, *default:* `nil`) - Relative amount of time the slowest shard spent reading input.
  *   `recordsRead` (*type:* `String.t`, *default:* `nil`) - Number of records read into the stage.
  *   `recordsWritten` (*type:* `String.t`, *default:* `nil`) - Number of records written by the stage.
  *   `shuffleOutputBytes` (*type:* `String.t`, *default:* `nil`) - Total number of bytes written to shuffle.
  *   `shuffleOutputBytesSpilled` (*type:* `String.t`, *default:* `nil`) - Total number of bytes written to shuffle and spilled to disk.
  *   `slotMs` (*type:* `String.t`, *default:* `nil`) - Slot-milliseconds used by the stage.
  *   `startMs` (*type:* `String.t`, *default:* `nil`) - Stage start time represented as milliseconds since epoch.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Current status for the stage.
  *   `steps` (*type:* `list(GoogleApi.BigQuery.V2.Model.ExplainQueryStep.t)`, *default:* `nil`) - List of operations within the stage in dependency order (approximately chronological).
  *   `waitMsAvg` (*type:* `String.t`, *default:* `nil`) - Milliseconds the average shard spent waiting to be scheduled.
  *   `waitMsMax` (*type:* `String.t`, *default:* `nil`) - Milliseconds the slowest shard spent waiting to be scheduled.
  *   `waitRatioAvg` (*type:* `float()`, *default:* `nil`) - Relative amount of time the average shard spent waiting to be scheduled.
  *   `waitRatioMax` (*type:* `float()`, *default:* `nil`) - Relative amount of time the slowest shard spent waiting to be scheduled.
  *   `writeMsAvg` (*type:* `String.t`, *default:* `nil`) - Milliseconds the average shard spent on writing output.
  *   `writeMsMax` (*type:* `String.t`, *default:* `nil`) - Milliseconds the slowest shard spent on writing output.
  *   `writeRatioAvg` (*type:* `float()`, *default:* `nil`) - Relative amount of time the average shard spent on writing output.
  *   `writeRatioMax` (*type:* `float()`, *default:* `nil`) - Relative amount of time the slowest shard spent on writing output.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completedParallelInputs => String.t() | nil,
          :computeMsAvg => String.t() | nil,
          :computeMsMax => String.t() | nil,
          :computeRatioAvg => float() | nil,
          :computeRatioMax => float() | nil,
          :endMs => String.t() | nil,
          :id => String.t() | nil,
          :inputStages => list(String.t()) | nil,
          :name => String.t() | nil,
          :parallelInputs => String.t() | nil,
          :readMsAvg => String.t() | nil,
          :readMsMax => String.t() | nil,
          :readRatioAvg => float() | nil,
          :readRatioMax => float() | nil,
          :recordsRead => String.t() | nil,
          :recordsWritten => String.t() | nil,
          :shuffleOutputBytes => String.t() | nil,
          :shuffleOutputBytesSpilled => String.t() | nil,
          :slotMs => String.t() | nil,
          :startMs => String.t() | nil,
          :status => String.t() | nil,
          :steps => list(GoogleApi.BigQuery.V2.Model.ExplainQueryStep.t()) | nil,
          :waitMsAvg => String.t() | nil,
          :waitMsMax => String.t() | nil,
          :waitRatioAvg => float() | nil,
          :waitRatioMax => float() | nil,
          :writeMsAvg => String.t() | nil,
          :writeMsMax => String.t() | nil,
          :writeRatioAvg => float() | nil,
          :writeRatioMax => float() | nil
        }

  field(:completedParallelInputs)
  field(:computeMsAvg)
  field(:computeMsMax)
  field(:computeRatioAvg)
  field(:computeRatioMax)
  field(:endMs)
  field(:id)
  field(:inputStages, type: :list)
  field(:name)
  field(:parallelInputs)
  field(:readMsAvg)
  field(:readMsMax)
  field(:readRatioAvg)
  field(:readRatioMax)
  field(:recordsRead)
  field(:recordsWritten)
  field(:shuffleOutputBytes)
  field(:shuffleOutputBytesSpilled)
  field(:slotMs)
  field(:startMs)
  field(:status)
  field(:steps, as: GoogleApi.BigQuery.V2.Model.ExplainQueryStep, type: :list)
  field(:waitMsAvg)
  field(:waitMsMax)
  field(:waitRatioAvg)
  field(:waitRatioMax)
  field(:writeMsAvg)
  field(:writeMsMax)
  field(:writeRatioAvg)
  field(:writeRatioMax)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ExplainQueryStage do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ExplainQueryStage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ExplainQueryStage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
