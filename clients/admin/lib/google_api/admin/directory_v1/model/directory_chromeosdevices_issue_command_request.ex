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

defmodule GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest do
  @moduledoc """
  A request for issuing a command.

  ## Attributes

  *   `commandType` (*type:* `String.t`, *default:* `nil`) - The type of command.
  *   `payload` (*type:* `String.t`, *default:* `nil`) - The payload for the command, provide it only if command supports it. The following commands support adding payload: * `SET_VOLUME`: Payload is a stringified JSON object in the form: { "volume": 50 }. The volume has to be an integer in the range [0,100]. * `DEVICE_START_CRD_SESSION`: Payload is optionally a stringified JSON object in the form: { "ackedUserPresence": true, "crdSessionType": string }. `ackedUserPresence` is a boolean. By default, `ackedUserPresence` is set to `false`. To start a Chrome Remote Desktop session for an active device, set `ackedUserPresence` to `true`. `crdSessionType` can only select from values `private` (which grants the remote admin exclusive control of the ChromeOS device) or `shared` (which allows the admin and the local user to share control of the ChromeOS device). If not set, `crdSessionType` defaults to `shared`. * `REBOOT`: Payload is a stringified JSON object in the form: { "user_session_delay_seconds": 300 }. The `user_session_delay_seconds` is the amount of seconds to wait before rebooting the device if a user is logged in. It has to be an integer in the range [0,300]. When payload is not present for reboot, 0 delay is the default. Note: This only applies if an actual user is logged in, including a Guest. If the device is in the login screen or in Kiosk mode the value is not respected and the device immediately reboots. * `FETCH_SUPPORT_PACKET`: Payload is optionally a stringified JSON object in the form: {"supportPacketDetails":{ "issueCaseId": optional_support_case_id_string, "issueDescription": optional_issue_description_string, "requestedDataCollectors": []}} The list of available `data_collector_enums` are as following: Chrome System Information (1), Crash IDs (2), Memory Details (3), UI Hierarchy (4), Additional ChromeOS Platform Logs (5), Device Event (6), Intel WiFi NICs Debug Dump (7), Touch Events (8), Lacros (9), Lacros System Information (10), ChromeOS Flex Logs (11), DBus Details (12), ChromeOS Network Routes (13), ChromeOS Shill (Connection Manager) Logs (14), Policies (15), ChromeOS System State and Logs (16), ChromeOS System Logs (17), ChromeOS Chrome User Logs (18), ChromeOS Bluetooth (19), ChromeOS Connected Input Devices (20), ChromeOS Traffic Counters (21), ChromeOS Virtual Keyboard (22), ChromeOS Network Health (23). See more details in [help article](https://support.google.com/chrome/a?p=remote-log).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commandType => String.t() | nil,
          :payload => String.t() | nil
        }

  field(:commandType)
  field(:payload)
end

defimpl Poison.Decoder,
  for: GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Admin.Directory_v1.Model.DirectoryChromeosdevicesIssueCommandRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
