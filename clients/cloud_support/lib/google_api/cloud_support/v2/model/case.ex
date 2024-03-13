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

defmodule GoogleApi.CloudSupport.V2.Model.Case do
  @moduledoc """
  A Case is an object that contains the details of a support case. It contains fields for the time it was created, its priority, its classification, and more. Cases can also have comments and attachments that get added over time. A case is parented by a Google Cloud organization or project. Organizations are identified by a number, so the name of a case parented by an organization would look like this: ``` organizations/123/cases/456 ``` Projects have two unique identifiers, an ID and a number, and they look like this: ``` projects/abc/cases/456 ``` ``` projects/123/cases/456 ``` You can use either of them when calling the API. To learn more about project identifiers, see [AIP-2510](https://google.aip.dev/cloud/2510).

  ## Attributes

  *   `classification` (*type:* `GoogleApi.CloudSupport.V2.Model.CaseClassification.t`, *default:* `nil`) - The issue classification applicable to this case.
  *   `contactEmail` (*type:* `String.t`, *default:* `nil`) - A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this case was created.
  *   `creator` (*type:* `GoogleApi.CloudSupport.V2.Model.Actor.t`, *default:* `nil`) - The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A broad description of the issue.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The short summary of the issue reported in this case.
  *   `escalated` (*type:* `boolean()`, *default:* `nil`) - Whether the case is currently escalated.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name for the case.
  *   `priority` (*type:* `String.t`, *default:* `nil`) - The priority of this case.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current status of the support case.
  *   `subscriberEmailAddresses` (*type:* `list(String.t)`, *default:* `nil`) - The email addresses to receive updates on this case.
  *   `testCase` (*type:* `boolean()`, *default:* `nil`) - Whether this case was created for internal API testing and should not be acted on by the support team.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this case was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classification => GoogleApi.CloudSupport.V2.Model.CaseClassification.t() | nil,
          :contactEmail => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :creator => GoogleApi.CloudSupport.V2.Model.Actor.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :escalated => boolean() | nil,
          :languageCode => String.t() | nil,
          :name => String.t() | nil,
          :priority => String.t() | nil,
          :state => String.t() | nil,
          :subscriberEmailAddresses => list(String.t()) | nil,
          :testCase => boolean() | nil,
          :timeZone => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:classification, as: GoogleApi.CloudSupport.V2.Model.CaseClassification)
  field(:contactEmail)
  field(:createTime, as: DateTime)
  field(:creator, as: GoogleApi.CloudSupport.V2.Model.Actor)
  field(:description)
  field(:displayName)
  field(:escalated)
  field(:languageCode)
  field(:name)
  field(:priority)
  field(:state)
  field(:subscriberEmailAddresses, type: :list)
  field(:testCase)
  field(:timeZone)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2.Model.Case do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2.Model.Case.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2.Model.Case do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end