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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailabilities do
  @moduledoc """
  The current and future availabilities of a user. The response contains a timeline, which starts before or at the request time, and the timeline is split into a set of disjoint intervals (without gaps), where the first range always contains the request time. Each range represents what should be displayed in the UI during this time range. The time range might be different from the actual time range of the underlying status. For example, if the user is OOO from 09:00 to 10:00, and a request is made at 8:00, the response might contain two intervals: [08:00, 09:00) - "User is INACTIVE, but leaving the office soon" [09:00, 10:00) - "User is OOO till 10:00" For intervals that don't have a clear availability signal coming from Calendar (e.g. OOO), we return INACTIVE. For more details, please see https://docs.google.com/presentation/d/1ADCTxGawjF9UqMnfuVrVNxGvdyjeiV8h4D7p0a9zYgw/edit#slide=id.g3e2824ac6c_12_94 The service returns availabilities for some short period of time - likely one day, but the client should stick to the "next_poll_time" to decide when to query the server again at the latest. Below there is an example response from the server. Let's assume the client calls the service at 17:59:45. The client receives the message and, assuming its current time is between [17:59:45, 18:00:00), it displays "inactive". When the current time becomes 18:00:00 it displays "outside working hours". At 18:00:40 the client issues another rpc which will return the availabilities for the next minute. The original response looks like availabilities { time_range { start_time: 17:59:45 end_time: 18:00:00 } status { inactive {} } } availabilities { time_range { start_time: 18:00:00 end_time: 18:00:45 } status { outside_working_hours { } } } next_poll_time: 18:00:40

  ## Attributes

  *   `availabilities` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailability.t)`, *default:* `nil`) - A list of user availabilities having contiguous time ranges which are ordered chronologically. The first one starts at the time of the request or before, and is guaranteed to contain the request time. That means the first element always indicates the current status of a user. A client that wants to display a user's availability in real time should display the availability whose time range contains the current time.
  *   `nextPollTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the client should issue the next availability query for this user. This field should only be used to control the polling frequency. This time is always before the end of the time range of the last availability so that the client always knows the current availability.
  *   `workingHours` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaWorkingHours.t`, *default:* `nil`) - Information about the user's working hours. This will only be set in case working hours are enabled in their calendar settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availabilities =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailability.t()
            )
            | nil,
          :nextPollTime => DateTime.t() | nil,
          :workingHours =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaWorkingHours.t()
            | nil
        }

  field(:availabilities,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailability,
    type: :list
  )

  field(:nextPollTime, as: DateTime)

  field(:workingHours,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaWorkingHours
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailabilities do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailabilities.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaUserAvailabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
