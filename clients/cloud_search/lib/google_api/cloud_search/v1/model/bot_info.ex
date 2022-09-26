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

defmodule GoogleApi.CloudSearch.V1.Model.BotInfo do
  @moduledoc """
  Bot-specific profile information.

  ## Attributes

  *   `appAllowlistStatus` (*type:* `String.t`, *default:* `nil`) - 
  *   `appId` (*type:* `GoogleApi.CloudSearch.V1.Model.AppId.t`, *default:* `nil`) - Identifier of the application associated with the bot.
  *   `botAvatarUrl` (*type:* `String.t`, *default:* `nil`) - URL for the avatar picture of the User in dynamite. This field should be populated if the request is FetchBotCategories/ListBotCatalogEntries
  *   `botName` (*type:* `String.t`, *default:* `nil`) - Non-unique, user-defined display name of the Bot. This field should be populated if the request is FetchBotCategories/ListBotCatalogEntries.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Short description for the bot.
  *   `developerName` (*type:* `String.t`, *default:* `nil`) - Name of bot developer.
  *   `marketPlaceBannerUrl` (*type:* `String.t`, *default:* `nil`) - URL for the banner image in GSuite Market Place. The banner will be 220x140.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Indicates whether bot is enabled/disabled.
  *   `supportHomeScreen` (*type:* `boolean()`, *default:* `nil`) - If the app supports a home screen.
  *   `supportUrls` (*type:* `GoogleApi.CloudSearch.V1.Model.SupportUrls.t`, *default:* `nil`) - Urls with additional information related to the bot. This field should always be set even if all the fields within it are empty, so that it is convenient for clients to work with this field in javascript.
  *   `supportedUses` (*type:* `list(String.t)`, *default:* `nil`) - The supported uses are limited according to the user that made the request. If the user does not have permission to use the bot, the list will be empty. This could occur for non whitelisted bots in the catalog.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appAllowlistStatus => String.t() | nil,
          :appId => GoogleApi.CloudSearch.V1.Model.AppId.t() | nil,
          :botAvatarUrl => String.t() | nil,
          :botName => String.t() | nil,
          :description => String.t() | nil,
          :developerName => String.t() | nil,
          :marketPlaceBannerUrl => String.t() | nil,
          :status => String.t() | nil,
          :supportHomeScreen => boolean() | nil,
          :supportUrls => GoogleApi.CloudSearch.V1.Model.SupportUrls.t() | nil,
          :supportedUses => list(String.t()) | nil
        }

  field(:appAllowlistStatus)
  field(:appId, as: GoogleApi.CloudSearch.V1.Model.AppId)
  field(:botAvatarUrl)
  field(:botName)
  field(:description)
  field(:developerName)
  field(:marketPlaceBannerUrl)
  field(:status)
  field(:supportHomeScreen)
  field(:supportUrls, as: GoogleApi.CloudSearch.V1.Model.SupportUrls)
  field(:supportedUses, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.BotInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.BotInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.BotInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
