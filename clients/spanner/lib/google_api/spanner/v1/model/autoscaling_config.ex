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

defmodule GoogleApi.Spanner.V1.Model.AutoscalingConfig do
  @moduledoc """
  Autoscaling configuration for an instance.

  ## Attributes

  *   `autoscalingLimits` (*type:* `GoogleApi.Spanner.V1.Model.AutoscalingLimits.t`, *default:* `nil`) - Required. Autoscaling limits for an instance.
  *   `autoscalingTargets` (*type:* `GoogleApi.Spanner.V1.Model.AutoscalingTargets.t`, *default:* `nil`) - Required. The autoscaling targets for an instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingLimits => GoogleApi.Spanner.V1.Model.AutoscalingLimits.t() | nil,
          :autoscalingTargets => GoogleApi.Spanner.V1.Model.AutoscalingTargets.t() | nil
        }

  field(:autoscalingLimits, as: GoogleApi.Spanner.V1.Model.AutoscalingLimits)
  field(:autoscalingTargets, as: GoogleApi.Spanner.V1.Model.AutoscalingTargets)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.AutoscalingConfig do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.AutoscalingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.AutoscalingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
