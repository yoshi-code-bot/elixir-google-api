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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection do
  @moduledoc """


  ## Attributes

  *   `machineTypes` (*type:* `list(String.t)`, *default:* `nil`) - Full machine-type names, e.g. "n1-standard-16".
  *   `rank` (*type:* `integer()`, *default:* `nil`) - Preference of this instance selection. Lower number means higher preference. MIG will first try to create a VM based on the machine-type with lowest rank and fallback to next rank based on availability. Machine types and instance selections with the same rank have the same preference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :machineTypes => list(String.t()) | nil,
          :rank => integer() | nil
        }

  field(:machineTypes, type: :list)
  field(:rank)
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
