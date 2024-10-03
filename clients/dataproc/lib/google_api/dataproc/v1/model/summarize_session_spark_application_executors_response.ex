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

defmodule GoogleApi.Dataproc.V1.Model.SummarizeSessionSparkApplicationExecutorsResponse do
  @moduledoc """
  Consolidated summary of executors for a Spark Application.

  ## Attributes

  *   `activeExecutorSummary` (*type:* `GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary.t`, *default:* `nil`) - Consolidated summary for active executors.
  *   `applicationId` (*type:* `String.t`, *default:* `nil`) - Spark Application Id
  *   `deadExecutorSummary` (*type:* `GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary.t`, *default:* `nil`) - Consolidated summary for dead executors.
  *   `totalExecutorSummary` (*type:* `GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary.t`, *default:* `nil`) - Overall consolidated summary for all executors.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeExecutorSummary =>
            GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary.t() | nil,
          :applicationId => String.t() | nil,
          :deadExecutorSummary =>
            GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary.t() | nil,
          :totalExecutorSummary =>
            GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary.t() | nil
        }

  field(:activeExecutorSummary, as: GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary)
  field(:applicationId)
  field(:deadExecutorSummary, as: GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary)
  field(:totalExecutorSummary, as: GoogleApi.Dataproc.V1.Model.ConsolidatedExecutorSummary)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataproc.V1.Model.SummarizeSessionSparkApplicationExecutorsResponse do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.SummarizeSessionSparkApplicationExecutorsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataproc.V1.Model.SummarizeSessionSparkApplicationExecutorsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
