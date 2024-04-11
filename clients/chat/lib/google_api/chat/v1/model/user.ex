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

defmodule GoogleApi.Chat.V1.Model.User do
  @moduledoc """
  A user in Google Chat. When returned as an output from a request, if your Chat app [authenticates as a user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), the output for a `User` resource only populates the user's `name` and `type`.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The user's display name.
  *   `domainId` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the user's Google Workspace domain.
  *   `isAnonymous` (*type:* `boolean()`, *default:* `nil`) - Output only. When `true`, the user is deleted or their profile is not visible.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name for a Google Chat user. Format: `users/{user}`. `users/app` can be used as an alias for the calling app bot user. For human users, `{user}` is the same user identifier as: - the `id` for the [Person](https://developers.google.com/people/api/rest/v1/people) in the People API. For example, `users/123456789` in Chat API represents the same person as the `123456789` Person profile ID in People API. - the `id` for a [user](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users) in the Admin SDK Directory API. - the user's email address can be used as an alias for `{user}` in API requests. For example, if the People API Person profile ID for `user@example.com` is `123456789`, you can use `users/user@example.com` as an alias to reference `users/123456789`. Only the canonical resource name (for example `users/123456789`) will be returned from the API.
  *   `type` (*type:* `String.t`, *default:* `nil`) - User type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :domainId => String.t() | nil,
          :isAnonymous => boolean() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:displayName)
  field(:domainId)
  field(:isAnonymous)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.User do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
