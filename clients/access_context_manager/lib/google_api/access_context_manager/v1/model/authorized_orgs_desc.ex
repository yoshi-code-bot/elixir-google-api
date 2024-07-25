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

defmodule GoogleApi.AccessContextManager.V1.Model.AuthorizedOrgsDesc do
  @moduledoc """
  `AuthorizedOrgsDesc` contains data for an organization's authorization policy.

  ## Attributes

  *   `assetType` (*type:* `String.t`, *default:* `nil`) - The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  *   `authorizationDirection` (*type:* `String.t`, *default:* `nil`) - The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  *   `authorizationType` (*type:* `String.t`, *default:* `nil`) - A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  *   `orgs` (*type:* `list(String.t)`, *default:* `nil`) - The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetType => String.t() | nil,
          :authorizationDirection => String.t() | nil,
          :authorizationType => String.t() | nil,
          :name => String.t() | nil,
          :orgs => list(String.t()) | nil
        }

  field(:assetType)
  field(:authorizationDirection)
  field(:authorizationType)
  field(:name)
  field(:orgs, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.AuthorizedOrgsDesc do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.AuthorizedOrgsDesc.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.AuthorizedOrgsDesc do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
