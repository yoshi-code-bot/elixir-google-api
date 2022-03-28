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

defmodule GoogleApi.AndroidPublisher.V3.Model.DeviceGroup do
  @moduledoc """
  LINT.IfChange A group of devices. A group is defined by a set of device selectors. A device belongs to the group if it matches any selector (logical OR).

  ## Attributes

  *   `deviceSelectors` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.DeviceSelector.t)`, *default:* `nil`) - Device selectors for this group. A device matching any of the selectors is included in this group.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceSelectors => list(GoogleApi.AndroidPublisher.V3.Model.DeviceSelector.t()) | nil,
          :name => String.t() | nil
        }

  field(:deviceSelectors, as: GoogleApi.AndroidPublisher.V3.Model.DeviceSelector, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceGroup do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.DeviceGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.DeviceGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
