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

defmodule GoogleApi.AndroidPublisher.V3.Model.DeviceTierConfig do
  @moduledoc """
  LINT.IfChange Configuration describing device targeting criteria for the content of an app.

  ## Attributes

  *   `deviceGroups` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.DeviceGroup.t)`, *default:* `nil`) - Definition of device groups for the app.
  *   `deviceTierConfigId` (*type:* `String.t`, *default:* `nil`) - Output only. The device tier config ID.
  *   `deviceTierSet` (*type:* `GoogleApi.AndroidPublisher.V3.Model.DeviceTierSet.t`, *default:* `nil`) - Definition of the set of device tiers for the app.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceGroups => list(GoogleApi.AndroidPublisher.V3.Model.DeviceGroup.t()) | nil,
          :deviceTierConfigId => String.t() | nil,
          :deviceTierSet => GoogleApi.AndroidPublisher.V3.Model.DeviceTierSet.t() | nil
        }

  field(:deviceGroups, as: GoogleApi.AndroidPublisher.V3.Model.DeviceGroup, type: :list)
  field(:deviceTierConfigId)
  field(:deviceTierSet, as: GoogleApi.AndroidPublisher.V3.Model.DeviceTierSet)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceTierConfig do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.DeviceTierConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceTierConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
