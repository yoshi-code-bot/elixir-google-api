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

defmodule GoogleApi.AndroidPublisher.V3.Model.DeviceTierSet do
  @moduledoc """
  A set of device tiers. A tier set determines what variation of app content gets served to a specific device, for device-targeted content. You should assign a priority level to each tier, which determines the ordering by which they are evaluated by Play. See the documentation of DeviceTier.level for more details.

  ## Attributes

  *   `deviceTiers` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.DeviceTier.t)`, *default:* `nil`) - Device tiers belonging to the set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceTiers => list(GoogleApi.AndroidPublisher.V3.Model.DeviceTier.t()) | nil
        }

  field(:deviceTiers, as: GoogleApi.AndroidPublisher.V3.Model.DeviceTier, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceTierSet do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.DeviceTierSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceTierSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
