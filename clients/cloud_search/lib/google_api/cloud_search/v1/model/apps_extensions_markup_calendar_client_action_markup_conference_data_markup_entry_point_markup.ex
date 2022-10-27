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

defmodule GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup do
  @moduledoc """
  A way to join the conference.

  ## Attributes

  *   `accessCode` (*type:* `String.t`, *default:* `nil`) - An access code for accessing the conference. Maximum 128 characters long.
  *   `features` (*type:* `list(String.t)`, *default:* `nil`) - Features of the entry point, such as being toll or toll-free. One entry point can have multiple features.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The label of the entry point to display to the user. Maximum 512 characters long.
  *   `meetingCode` (*type:* `String.t`, *default:* `nil`) - A meeting code for accessing the conference. Maximum 128 characters long.
  *   `passcode` (*type:* `String.t`, *default:* `nil`) - A passcode for accessing the conference. Maximum 128 characters long.
  *   `password` (*type:* `String.t`, *default:* `nil`) - A password for accessing the conference. Maximum 128 characters long.
  *   `pin` (*type:* `String.t`, *default:* `nil`) - A PIN for accessing the conference. Maximum 128 characters long.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - The CLDR/ISO 3166 region code for the country associated with this entry point. Applicable only to `Type.PHONE`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the entry point. Required.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - A URI for joining the conference. Supports tel: and http(s): and should be at most 1300 characters long. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessCode => String.t() | nil,
          :features => list(String.t()) | nil,
          :label => String.t() | nil,
          :meetingCode => String.t() | nil,
          :passcode => String.t() | nil,
          :password => String.t() | nil,
          :pin => String.t() | nil,
          :regionCode => String.t() | nil,
          :type => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:accessCode)
  field(:features, type: :list)
  field(:label)
  field(:meetingCode)
  field(:passcode)
  field(:password)
  field(:pin)
  field(:regionCode)
  field(:type)
  field(:uri)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end