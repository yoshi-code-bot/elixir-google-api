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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent do
  @moduledoc """
  Https latency routine is run periodically and `TelemetryHttpsLatencyChangeEvent` is triggered if a latency problem was detected or if the device has recovered from a latency problem. * Granular permission needed: TELEMETRY_API_NETWORK_REPORT

  ## Attributes

  *   `httpsLatencyRoutineData` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1HttpsLatencyRoutineData.t`, *default:* `nil`) - HTTPS latency routine data that triggered the event.
  *   `httpsLatencyState` (*type:* `String.t`, *default:* `nil`) - Current HTTPS latency state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpsLatencyRoutineData =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1HttpsLatencyRoutineData.t()
            | nil,
          :httpsLatencyState => String.t() | nil
        }

  field(:httpsLatencyRoutineData,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1HttpsLatencyRoutineData
  )

  field(:httpsLatencyState)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end