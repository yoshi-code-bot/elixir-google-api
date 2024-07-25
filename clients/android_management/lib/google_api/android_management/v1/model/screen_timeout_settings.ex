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

defmodule GoogleApi.AndroidManagement.V1.Model.ScreenTimeoutSettings do
  @moduledoc """
  Controls the screen timeout settings.

  ## Attributes

  *   `screenTimeout` (*type:* `String.t`, *default:* `nil`) - Optional. Controls the screen timeout duration. The screen timeout duration must be greater than 0, otherwise it is rejected. Additionally, it should not be greater than maximumTimeToLock, otherwise the screen timeout is set to maximumTimeToLock and a NonComplianceDetail with INVALID_VALUE reason and SCREEN_TIMEOUT_GREATER_THAN_MAXIMUM_TIME_TO_LOCK specific reason is reported. If the screen timeout is less than a certain lower bound, it is set to the lower bound. The lower bound may vary across devices. If this is set, screenTimeoutMode must be SCREEN_TIMEOUT_ENFORCED. Supported on Android 9 and above on fully managed devices. A NonComplianceDetail with API_LEVEL is reported if the Android version is less than 9.
  *   `screenTimeoutMode` (*type:* `String.t`, *default:* `nil`) - Optional. Controls whether the user is allowed to configure the screen timeout.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :screenTimeout => String.t() | nil,
          :screenTimeoutMode => String.t() | nil
        }

  field(:screenTimeout)
  field(:screenTimeoutMode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ScreenTimeoutSettings do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ScreenTimeoutSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ScreenTimeoutSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
