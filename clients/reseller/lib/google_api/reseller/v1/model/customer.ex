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

defmodule GoogleApi.Reseller.V1.Model.Customer do
  @moduledoc """
  When a Google customer's account is registered with a reseller, the customer's subscriptions for Google services are managed by this reseller. A customer is described by a primary domain name and a physical address.

  ## Attributes

  *   `alternateEmail` (*type:* `String.t`, *default:* `nil`) - Like the "Customer email" in the reseller tools, this email is the secondary contact used if something happens to the customer's service such as service outage or a security issue. This property is required when creating a new customer and should not use the same domain as `customerDomain`.
  *   `customerDomain` (*type:* `String.t`, *default:* `nil`) - The customer's primary domain name string. `customerDomain` is required when creating a new customer. Do not include the `www` prefix in the domain when adding a customer.
  *   `customerDomainVerified` (*type:* `boolean()`, *default:* `nil`) - Whether the customer's primary domain has been verified.
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - This property will always be returned in a response as the unique identifier generated by Google. In a request, this property can be either the primary domain or the unique identifier generated by Google.
  *   `kind` (*type:* `String.t`, *default:* `reseller#customer`) - Identifies the resource as a customer. Value: `reseller#customer`
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - Customer contact phone number. Must start with "+" followed by the country code. The rest of the number can be contiguous numbers or respect the phone local format conventions, but it must be a real phone number and not, for example, "123". This field is silently ignored if invalid.
  *   `postalAddress` (*type:* `GoogleApi.Reseller.V1.Model.Address.t`, *default:* `nil`) - A customer's address information. Each field has a limit of 255 charcters.
  *   `resourceUiUrl` (*type:* `String.t`, *default:* `nil`) - URL to customer's Admin console dashboard. The read-only URL is generated by the API service. This is used if your client application requires the customer to complete a task in the Admin console.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateEmail => String.t(),
          :customerDomain => String.t(),
          :customerDomainVerified => boolean(),
          :customerId => String.t(),
          :kind => String.t(),
          :phoneNumber => String.t(),
          :postalAddress => GoogleApi.Reseller.V1.Model.Address.t(),
          :resourceUiUrl => String.t()
        }

  field(:alternateEmail)
  field(:customerDomain)
  field(:customerDomainVerified)
  field(:customerId)
  field(:kind)
  field(:phoneNumber)
  field(:postalAddress, as: GoogleApi.Reseller.V1.Model.Address)
  field(:resourceUiUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.Customer do
  def decode(value, options) do
    GoogleApi.Reseller.V1.Model.Customer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.Customer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
