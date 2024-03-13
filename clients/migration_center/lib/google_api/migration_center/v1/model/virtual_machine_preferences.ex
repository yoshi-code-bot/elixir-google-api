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

defmodule GoogleApi.MigrationCenter.V1.Model.VirtualMachinePreferences do
  @moduledoc """
  VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.

  ## Attributes

  *   `commitmentPlan` (*type:* `String.t`, *default:* `nil`) - Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  *   `computeEnginePreferences` (*type:* `GoogleApi.MigrationCenter.V1.Model.ComputeEnginePreferences.t`, *default:* `nil`) - Compute Engine preferences concern insights and recommendations for Compute Engine target.
  *   `regionPreferences` (*type:* `GoogleApi.MigrationCenter.V1.Model.RegionPreferences.t`, *default:* `nil`) - Region preferences for assets using this preference set. If you are unsure which value to set, the migration service API region is often a good value to start with.
  *   `sizingOptimizationStrategy` (*type:* `String.t`, *default:* `nil`) - Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
  *   `soleTenancyPreferences` (*type:* `GoogleApi.MigrationCenter.V1.Model.SoleTenancyPreferences.t`, *default:* `nil`) - Preferences concerning Sole Tenant nodes and virtual machines.
  *   `targetProduct` (*type:* `String.t`, *default:* `nil`) - Target product for assets using this preference set. Specify either target product or business goal, but not both.
  *   `vmwareEnginePreferences` (*type:* `GoogleApi.MigrationCenter.V1.Model.VmwareEnginePreferences.t`, *default:* `nil`) - Preferences concerning insights and recommendations for Google Cloud VMware Engine.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commitmentPlan => String.t() | nil,
          :computeEnginePreferences =>
            GoogleApi.MigrationCenter.V1.Model.ComputeEnginePreferences.t() | nil,
          :regionPreferences => GoogleApi.MigrationCenter.V1.Model.RegionPreferences.t() | nil,
          :sizingOptimizationStrategy => String.t() | nil,
          :soleTenancyPreferences =>
            GoogleApi.MigrationCenter.V1.Model.SoleTenancyPreferences.t() | nil,
          :targetProduct => String.t() | nil,
          :vmwareEnginePreferences =>
            GoogleApi.MigrationCenter.V1.Model.VmwareEnginePreferences.t() | nil
        }

  field(:commitmentPlan)

  field(:computeEnginePreferences, as: GoogleApi.MigrationCenter.V1.Model.ComputeEnginePreferences)

  field(:regionPreferences, as: GoogleApi.MigrationCenter.V1.Model.RegionPreferences)
  field(:sizingOptimizationStrategy)
  field(:soleTenancyPreferences, as: GoogleApi.MigrationCenter.V1.Model.SoleTenancyPreferences)
  field(:targetProduct)
  field(:vmwareEnginePreferences, as: GoogleApi.MigrationCenter.V1.Model.VmwareEnginePreferences)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.VirtualMachinePreferences do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.VirtualMachinePreferences.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.VirtualMachinePreferences do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end