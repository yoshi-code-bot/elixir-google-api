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

defmodule GoogleApi.GKEOnPrem.V1.Model.BareMetalNodePoolUpgradePolicy do
  @moduledoc """
  BareMetalNodePoolUpgradePolicy defines the node pool upgrade policy.

  ## Attributes

  *   `parallelUpgradeConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalParallelUpgradeConfig.t`, *default:* `nil`) - The parallel upgrade settings for worker node pools.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parallelUpgradeConfig =>
            GoogleApi.GKEOnPrem.V1.Model.BareMetalParallelUpgradeConfig.t() | nil
        }

  field(:parallelUpgradeConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalParallelUpgradeConfig)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalNodePoolUpgradePolicy do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.BareMetalNodePoolUpgradePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalNodePoolUpgradePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end