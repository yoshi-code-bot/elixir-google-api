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

defmodule GoogleApi.GKEHub.V1.Model.ClusterUpgradeIgnoredMembership do
  @moduledoc """
  IgnoredMembership represents a membership ignored by the feature. A membership can be ignored because it was manually upgraded to a newer version than RC default.

  ## Attributes

  *   `ignoredTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the membership was first set to ignored.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Reason why the membership is ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ignoredTime => DateTime.t() | nil,
          :reason => String.t() | nil
        }

  field(:ignoredTime, as: DateTime)
  field(:reason)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ClusterUpgradeIgnoredMembership do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ClusterUpgradeIgnoredMembership.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ClusterUpgradeIgnoredMembership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end