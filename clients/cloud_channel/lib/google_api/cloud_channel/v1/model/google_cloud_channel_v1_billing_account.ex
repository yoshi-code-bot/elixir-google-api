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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1BillingAccount do
  @moduledoc """
  Represents a billing account.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when this billing account was created.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - Output only. The 3-letter currency code defined in ISO 4217.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the billing account.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the billing account. Format: accounts/{account_id}/billingAccounts/{billing_account_id}.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Output only. The CLDR region code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :currencyCode => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:currencyCode)
  field(:displayName)
  field(:name)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1BillingAccount do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1BillingAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1BillingAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end