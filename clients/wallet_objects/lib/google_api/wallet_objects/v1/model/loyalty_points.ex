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

defmodule GoogleApi.WalletObjects.V1.Model.LoyaltyPoints do
  @moduledoc """


  ## Attributes

  *   `balance` (*type:* `GoogleApi.WalletObjects.V1.Model.LoyaltyPointsBalance.t`, *default:* `nil`) - The account holder's loyalty point balance, such as "500" or "$10.00". Recommended maximum length is 7 characters. This is a required field of `loyaltyPoints` and `secondaryLoyaltyPoints`.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The loyalty points label, such as "Points". Recommended maximum length is 9 characters.
  *   `localizedLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the label. Recommended maximum length is 9 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :balance => GoogleApi.WalletObjects.V1.Model.LoyaltyPointsBalance.t() | nil,
          :label => String.t() | nil,
          :localizedLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil
        }

  field(:balance, as: GoogleApi.WalletObjects.V1.Model.LoyaltyPointsBalance)
  field(:label)
  field(:localizedLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.LoyaltyPoints do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.LoyaltyPoints.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.LoyaltyPoints do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end