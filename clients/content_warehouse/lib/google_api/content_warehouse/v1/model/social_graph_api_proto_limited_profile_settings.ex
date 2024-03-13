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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileSettings do
  @moduledoc """
  Next ID: 10

  ## Attributes

  *   `androidMessages` (*type:* `boolean()`, *default:* `nil`) - Created with user input in Android Messages.
  *   `disableReason` (*type:* `String.t`, *default:* `nil`) - Indicates why the limited profile has been disabled. Will be set iff the limited profile is disabled. Note: When mutating limited profiles, in order to disable them, MutateDataRequest.DisableLimitedProfile must be true. Currently, disables are only performed server-side, so this is read-only for clients.
  *   `gpayOobe` (*type:* `boolean()`, *default:* `nil`) - Created with user input in GPay OOBE. This is not currently used because GPay does not setup mini profile, this might change in the future.
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp indicating when the settings were last stored. Read-only field.
  *   `legacyDiscoverability` (*type:* `String.t`, *default:* `nil`) - A user who had legacy discoverability had a Limited Profile autogenerated for them, either through a healer or in the live path in FBS.
  *   `myAccount` (*type:* `boolean()`, *default:* `nil`) - Created with user input in MyAccount UI.
  *   `nameSettings` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileNameSettings.t`, *default:* `nil`) - Required. Defines how the name should be formatted in the limited profile.
  *   `profilePictureSettings` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfilePictureSettings.t`, *default:* `nil`) - DEPRECATED. Profile picture choices are controlled through the ACL of the Photo field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidMessages => boolean() | nil,
          :disableReason => String.t() | nil,
          :gpayOobe => boolean() | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :legacyDiscoverability => String.t() | nil,
          :myAccount => boolean() | nil,
          :nameSettings =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileNameSettings.t()
            | nil,
          :profilePictureSettings =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfilePictureSettings.t()
            | nil
        }

  field(:androidMessages)
  field(:disableReason)
  field(:gpayOobe)
  field(:lastUpdateTime, as: DateTime)
  field(:legacyDiscoverability)
  field(:myAccount)

  field(:nameSettings,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileNameSettings
  )

  field(:profilePictureSettings,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfilePictureSettings
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileSettings do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
