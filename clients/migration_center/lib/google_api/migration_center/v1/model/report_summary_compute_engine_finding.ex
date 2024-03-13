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

defmodule GoogleApi.MigrationCenter.V1.Model.ReportSummaryComputeEngineFinding do
  @moduledoc """
  A set of findings that applies to assets destined for Compute Engine.

  ## Attributes

  *   `allocatedAssetCount` (*type:* `String.t`, *default:* `nil`) - Count of assets which were allocated.
  *   `allocatedDiskTypes` (*type:* `list(String.t)`, *default:* `nil`) - Set of disk types allocated to assets.
  *   `allocatedRegions` (*type:* `list(String.t)`, *default:* `nil`) - Set of regions in which the assets were allocated.
  *   `machineSeriesAllocations` (*type:* `list(GoogleApi.MigrationCenter.V1.Model.ReportSummaryMachineSeriesAllocation.t)`, *default:* `nil`) - Distribution of assets based on the Machine Series.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allocatedAssetCount => String.t() | nil,
          :allocatedDiskTypes => list(String.t()) | nil,
          :allocatedRegions => list(String.t()) | nil,
          :machineSeriesAllocations =>
            list(GoogleApi.MigrationCenter.V1.Model.ReportSummaryMachineSeriesAllocation.t())
            | nil
        }

  field(:allocatedAssetCount)
  field(:allocatedDiskTypes, type: :list)
  field(:allocatedRegions, type: :list)

  field(:machineSeriesAllocations,
    as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryMachineSeriesAllocation,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.ReportSummaryComputeEngineFinding do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.ReportSummaryComputeEngineFinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.ReportSummaryComputeEngineFinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end