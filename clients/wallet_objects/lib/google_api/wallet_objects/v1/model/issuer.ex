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

defmodule GoogleApi.WalletObjects.V1.Model.Issuer do
  @moduledoc """


  ## Attributes

  *   `callbackOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.CallbackOptions.t`, *default:* `nil`) - Allows the issuer to provide their callback settings.
  *   `contactInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.IssuerContactInfo.t`, *default:* `nil`) - Issuer contact information.
  *   `homepageUrl` (*type:* `String.t`, *default:* `nil`) - URL for the issuer's home page.
  *   `issuerId` (*type:* `String.t`, *default:* `nil`) - The unique identifier for an issuer account. This is automatically generated when the issuer is inserted.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The account name of the issuer.
  *   `smartTapMerchantData` (*type:* `GoogleApi.WalletObjects.V1.Model.SmartTapMerchantData.t`, *default:* `nil`) - Available only to Smart Tap enabled partners. Contact support for additional guidance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callbackOptions => GoogleApi.WalletObjects.V1.Model.CallbackOptions.t() | nil,
          :contactInfo => GoogleApi.WalletObjects.V1.Model.IssuerContactInfo.t() | nil,
          :homepageUrl => String.t() | nil,
          :issuerId => String.t() | nil,
          :name => String.t() | nil,
          :smartTapMerchantData => GoogleApi.WalletObjects.V1.Model.SmartTapMerchantData.t() | nil
        }

  field(:callbackOptions, as: GoogleApi.WalletObjects.V1.Model.CallbackOptions)
  field(:contactInfo, as: GoogleApi.WalletObjects.V1.Model.IssuerContactInfo)
  field(:homepageUrl)
  field(:issuerId)
  field(:name)
  field(:smartTapMerchantData, as: GoogleApi.WalletObjects.V1.Model.SmartTapMerchantData)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.Issuer do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.Issuer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.Issuer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end