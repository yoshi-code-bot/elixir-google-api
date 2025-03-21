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

defmodule GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest do
  @moduledoc """
  Request message for SearchChangeHistoryEvents RPC.

  ## Attributes

  *   `action` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If set, only return changes that match one or more of these types of actions.
  *   `actorEmail` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If set, only return changes if they are made by a user in this list.
  *   `earliestChangeTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. If set, only return changes made after this time (inclusive).
  *   `latestChangeTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. If set, only return changes made before this time (inclusive).
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of ChangeHistoryEvent items to return. If unspecified, at most 50 items will be returned. The maximum value is 200 (higher values will be coerced to the maximum). Note that the service may return a page with fewer items than this value specifies (potentially even zero), and that there still may be additional pages. If you want a particular number of items, you'll need to continue requesting additional pages using `page_token` until you get the needed number.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. A page token, received from a previous `SearchChangeHistoryEvents` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `SearchChangeHistoryEvents` must match the call that provided the page token.
  *   `property` (*type:* `String.t`, *default:* `nil`) - Optional. Resource name for a child property. If set, only return changes made to this property or its child resources. Format: properties/{propertyId} Example: `properties/100`
  *   `resourceType` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If set, only return changes if they are for a resource that matches at least one of these types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => list(String.t()) | nil,
          :actorEmail => list(String.t()) | nil,
          :earliestChangeTime => DateTime.t() | nil,
          :latestChangeTime => DateTime.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :property => String.t() | nil,
          :resourceType => list(String.t()) | nil
        }

  field(:action, type: :list)
  field(:actorEmail, type: :list)
  field(:earliestChangeTime, as: DateTime)
  field(:latestChangeTime, as: DateTime)
  field(:pageSize)
  field(:pageToken)
  field(:property)
  field(:resourceType, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
