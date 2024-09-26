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

defmodule GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1BrowserInfo do
  @moduledoc """
  Browser-specific fields reported by the [Endpoint Verification extension](https://chromewebstore.google.com/detail/endpoint-verification/callobklhcbilhphinckomhgkigmfocg?pli=1).

  ## Attributes

  *   `browserManagementState` (*type:* `String.t`, *default:* `nil`) - Output only. Browser's management state.
  *   `browserVersion` (*type:* `String.t`, *default:* `nil`) - Version of the request initiating browser. E.g. `91.0.4442.4`.
  *   `isBuiltInDnsClientEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [built-in DNS client](https://chromeenterprise.google/policies/#BuiltInDnsClientEnabled).
  *   `isBulkDataEntryAnalysisEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [bulk data analysis](https://chromeenterprise.google/policies/#OnBulkDataEntryEnterpriseConnector). Set to true if provider list from Chrome is non-empty.
  *   `isChromeCleanupEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [Chrome Cleanup](https://chromeenterprise.google/policies/#ChromeCleanupEnabled).
  *   `isChromeRemoteDesktopAppBlocked` (*type:* `boolean()`, *default:* `nil`) - Current state of [Chrome Remote Desktop app](https://chromeenterprise.google/policies/#URLBlocklist).
  *   `isFileDownloadAnalysisEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [file download analysis](https://chromeenterprise.google/policies/#OnFileDownloadedEnterpriseConnector). Set to true if provider list from Chrome is non-empty.
  *   `isFileUploadAnalysisEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [file upload analysis](https://chromeenterprise.google/policies/#OnFileAttachedEnterpriseConnector). Set to true if provider list from Chrome is non-empty.
  *   `isRealtimeUrlCheckEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [real-time URL check](https://chromeenterprise.google/policies/#EnterpriseRealTimeUrlCheckMode). Set to true if provider list from Chrome is non-empty.
  *   `isSecurityEventAnalysisEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [security event analysis](https://chromeenterprise.google/policies/#OnSecurityEventEnterpriseConnector). Set to true if provider list from Chrome is non-empty.
  *   `isSiteIsolationEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [site isolation](https://chromeenterprise.google/policies/?policy=IsolateOrigins).
  *   `isThirdPartyBlockingEnabled` (*type:* `boolean()`, *default:* `nil`) - Current state of [third-party blocking](https://chromeenterprise.google/policies/#ThirdPartyBlockingEnabled).
  *   `passwordProtectionWarningTrigger` (*type:* `String.t`, *default:* `nil`) - Current state of [password protection trigger](https://chromeenterprise.google/policies/#PasswordProtectionWarningTrigger).
  *   `safeBrowsingProtectionLevel` (*type:* `String.t`, *default:* `nil`) - Current state of [Safe Browsing protection level](https://chromeenterprise.google/policies/#SafeBrowsingProtectionLevel).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :browserManagementState => String.t() | nil,
          :browserVersion => String.t() | nil,
          :isBuiltInDnsClientEnabled => boolean() | nil,
          :isBulkDataEntryAnalysisEnabled => boolean() | nil,
          :isChromeCleanupEnabled => boolean() | nil,
          :isChromeRemoteDesktopAppBlocked => boolean() | nil,
          :isFileDownloadAnalysisEnabled => boolean() | nil,
          :isFileUploadAnalysisEnabled => boolean() | nil,
          :isRealtimeUrlCheckEnabled => boolean() | nil,
          :isSecurityEventAnalysisEnabled => boolean() | nil,
          :isSiteIsolationEnabled => boolean() | nil,
          :isThirdPartyBlockingEnabled => boolean() | nil,
          :passwordProtectionWarningTrigger => String.t() | nil,
          :safeBrowsingProtectionLevel => String.t() | nil
        }

  field(:browserManagementState)
  field(:browserVersion)
  field(:isBuiltInDnsClientEnabled)
  field(:isBulkDataEntryAnalysisEnabled)
  field(:isChromeCleanupEnabled)
  field(:isChromeRemoteDesktopAppBlocked)
  field(:isFileDownloadAnalysisEnabled)
  field(:isFileUploadAnalysisEnabled)
  field(:isRealtimeUrlCheckEnabled)
  field(:isSecurityEventAnalysisEnabled)
  field(:isSiteIsolationEnabled)
  field(:isThirdPartyBlockingEnabled)
  field(:passwordProtectionWarningTrigger)
  field(:safeBrowsingProtectionLevel)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1BrowserInfo do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1BrowserInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1BrowserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
