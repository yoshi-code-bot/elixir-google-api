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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics do
  @moduledoc """
  Stores the metric values at specific top-k levels.

  ## Attributes

  *   `top1` (*type:* `float()`, *default:* `nil`) - The top-1 value.
  *   `top10` (*type:* `float()`, *default:* `nil`) - The top-10 value.
  *   `top3` (*type:* `float()`, *default:* `nil`) - The top-3 value.
  *   `top5` (*type:* `float()`, *default:* `nil`) - The top-5 value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :top1 => float() | nil,
          :top10 => float() | nil,
          :top3 => float() | nil,
          :top5 => float() | nil
        }

  field(:top1)
  field(:top10)
  field(:top3)
  field(:top5)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
