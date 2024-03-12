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

defmodule GoogleApi.PlayIntegrity.V1.Model.AppAccessRiskVerdict do
  @moduledoc """
  Contains signals about others apps on the device which could be used to access or control the requesting app.

  ## Attributes

  *   `otherApps` (*type:* `String.t`, *default:* `nil`) - Required. App access risk verdict related to apps that are not installed by Google Play, and are not preloaded on the system image by the device manufacturer.
  *   `playOrSystemApps` (*type:* `String.t`, *default:* `nil`) - Required. App access risk verdict related to apps that are not installed by the Google Play Store, and are not preloaded on the system image by the device manufacturer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :otherApps => String.t() | nil,
          :playOrSystemApps => String.t() | nil
        }

  field(:otherApps)
  field(:playOrSystemApps)
end

defimpl Poison.Decoder, for: GoogleApi.PlayIntegrity.V1.Model.AppAccessRiskVerdict do
  def decode(value, options) do
    GoogleApi.PlayIntegrity.V1.Model.AppAccessRiskVerdict.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayIntegrity.V1.Model.AppAccessRiskVerdict do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
