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

defmodule GoogleApi.Language.V1.Model.InfraUsage do
  @moduledoc """
  Infra Usage of billing metrics. Next ID: 6

  ## Attributes

  *   `cpuMetrics` (*type:* `list(GoogleApi.Language.V1.Model.CpuMetric.t)`, *default:* `nil`) - Aggregated core metrics since requested start_time.
  *   `diskMetrics` (*type:* `list(GoogleApi.Language.V1.Model.DiskMetric.t)`, *default:* `nil`) - Aggregated persistent disk metrics since requested start_time.
  *   `gpuMetrics` (*type:* `list(GoogleApi.Language.V1.Model.GpuMetric.t)`, *default:* `nil`) - Aggregated gpu metrics since requested start_time.
  *   `ramMetrics` (*type:* `list(GoogleApi.Language.V1.Model.RamMetric.t)`, *default:* `nil`) - Aggregated ram metrics since requested start_time.
  *   `tpuMetrics` (*type:* `list(GoogleApi.Language.V1.Model.TpuMetric.t)`, *default:* `nil`) - Aggregated tpu metrics since requested start_time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuMetrics => list(GoogleApi.Language.V1.Model.CpuMetric.t()) | nil,
          :diskMetrics => list(GoogleApi.Language.V1.Model.DiskMetric.t()) | nil,
          :gpuMetrics => list(GoogleApi.Language.V1.Model.GpuMetric.t()) | nil,
          :ramMetrics => list(GoogleApi.Language.V1.Model.RamMetric.t()) | nil,
          :tpuMetrics => list(GoogleApi.Language.V1.Model.TpuMetric.t()) | nil
        }

  field(:cpuMetrics, as: GoogleApi.Language.V1.Model.CpuMetric, type: :list)
  field(:diskMetrics, as: GoogleApi.Language.V1.Model.DiskMetric, type: :list)
  field(:gpuMetrics, as: GoogleApi.Language.V1.Model.GpuMetric, type: :list)
  field(:ramMetrics, as: GoogleApi.Language.V1.Model.RamMetric, type: :list)
  field(:tpuMetrics, as: GoogleApi.Language.V1.Model.TpuMetric, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.InfraUsage do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.InfraUsage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.InfraUsage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end