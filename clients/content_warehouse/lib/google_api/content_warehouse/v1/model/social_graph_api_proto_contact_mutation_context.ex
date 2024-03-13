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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoContactMutationContext do
  @moduledoc """
  This message is the generic mutation message which will encapsulate the fields which are shared between the create, update, and delete actions, including source of change, timestamp, and metadata messages passed in from the source for any source specific data (such as phone name/model from FSA).

  ## Attributes

  *   `androidDeviceInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoAndroidDeviceInfo.t`, *default:* `nil`) - Android device info should always be set when using either ANDROID_FSA1 or ANDROID_FSA2 as the source of the delete.
  *   `hostAppInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoHostAppInfo.t`, *default:* `nil`) - Host app info should always be set when using CONTACTS_COMPANION as the source.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The source of a mutate should provide all needed information a user should know, and should be enough information for the front end to generate a proper human readable string to describe the mutate to the user.
  *   `thirdPartyInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoThirdPartyInfo.t`, *default:* `nil`) - Third party info should always be set when using THIRD_PARTY as the source.
  *   `timestamp` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp representing when the contact was mutated. This should not be set on write, as it is the job of focus backend to determine this timestamp. This field will be populated on read with the data written by FBS.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidDeviceInfo =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoAndroidDeviceInfo.t() | nil,
          :hostAppInfo =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoHostAppInfo.t() | nil,
          :source => String.t() | nil,
          :thirdPartyInfo =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoThirdPartyInfo.t() | nil,
          :timestamp => DateTime.t() | nil
        }

  field(:androidDeviceInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoAndroidDeviceInfo
  )

  field(:hostAppInfo, as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoHostAppInfo)
  field(:source)

  field(:thirdPartyInfo, as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoThirdPartyInfo)

  field(:timestamp, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoContactMutationContext do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoContactMutationContext.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoContactMutationContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
