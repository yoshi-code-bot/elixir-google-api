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

defmodule GoogleApi.Chat.V1.Model.Message do
  @moduledoc """
  A message in a Google Chat space.

  ## Attributes

  *   `accessoryWidgets` (*type:* `list(GoogleApi.Chat.V1.Model.AccessoryWidget.t)`, *default:* `nil`) - Optional. One or more interactive widgets that appear at the bottom of a message. You can add accessory widgets to messages that contain text, cards, or both text and cards. Not supported for messages that contain dialogs. For details, see [Add interactive widgets at the bottom of a message](https://developers.google.com/workspace/chat/create-messages#add-accessory-widgets). Creating a message with accessory widgets requires [app authentication] (https://developers.google.com/workspace/chat/authenticate-authorize-chat-app).
  *   `actionResponse` (*type:* `GoogleApi.Chat.V1.Model.ActionResponse.t`, *default:* `nil`) - Input only. Parameters that a Chat app can use to configure how its response is posted.
  *   `annotations` (*type:* `list(GoogleApi.Chat.V1.Model.Annotation.t)`, *default:* `nil`) - Output only. Annotations associated with the `text` in this message.
  *   `argumentText` (*type:* `String.t`, *default:* `nil`) - Output only. Plain-text body of the message with all Chat app mentions stripped out.
  *   `attachedGifs` (*type:* `list(GoogleApi.Chat.V1.Model.AttachedGif.t)`, *default:* `nil`) - Output only. GIF images that are attached to the message.
  *   `attachment` (*type:* `list(GoogleApi.Chat.V1.Model.Attachment.t)`, *default:* `nil`) - Optional. User-uploaded attachment.
  *   `cards` (*type:* `list(GoogleApi.Chat.V1.Model.Card.t)`, *default:* `nil`) - Deprecated: Use `cards_v2` instead. Rich, formatted, and interactive cards that you can use to display UI elements such as: formatted texts, buttons, and clickable images. Cards are normally displayed below the plain-text body of the message. `cards` and `cards_v2` can have a maximum size of 32 KB.
  *   `cardsV2` (*type:* `list(GoogleApi.Chat.V1.Model.CardWithId.t)`, *default:* `nil`) - Optional. An array of [cards](https://developers.google.com/workspace/chat/api/reference/rest/v1/cards). Only Chat apps can create cards. If your Chat app [authenticates as a user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), the messages can't contain cards. To learn how to create a message that contains cards, see [Send a message](https://developers.google.com/workspace/chat/create-messages). [Card builder](https://addons.gsuite.google.com/uikit/builder)
  *   `clientAssignedMessageId` (*type:* `String.t`, *default:* `nil`) - Optional. A custom ID for the message. You can use field to identify a message, or to get, delete, or update a message. To set a custom ID, specify the [`messageId`](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages/create#body.QUERY_PARAMETERS.message_id) field when you create the message. For details, see [Name a message](https://developers.google.com/workspace/chat/create-messages#name_a_created_message).
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Immutable. For spaces created in Chat, the time at which the message was created. This field is output only, except when used in import mode spaces. For import mode spaces, set this field to the historical timestamp at which the message was created in the source in order to preserve the original creation time.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the message was deleted in Google Chat. If the message is never deleted, this field is empty.
  *   `deletionMetadata` (*type:* `GoogleApi.Chat.V1.Model.DeletionMetadata.t`, *default:* `nil`) - Output only. Information about a deleted message. A message is deleted when `delete_time` is set.
  *   `emojiReactionSummaries` (*type:* `list(GoogleApi.Chat.V1.Model.EmojiReactionSummary.t)`, *default:* `nil`) - Output only. The list of emoji reaction summaries on the message.
  *   `fallbackText` (*type:* `String.t`, *default:* `nil`) - Optional. A plain-text description of the message's cards, used when the actual cards can't be displayed—for example, mobile notifications.
  *   `formattedText` (*type:* `String.t`, *default:* `nil`) - Output only. Contains the message `text` with markups added to communicate formatting. This field might not capture all formatting visible in the UI, but includes the following: * [Markup syntax](https://developers.google.com/workspace/chat/format-messages) for bold, italic, strikethrough, monospace, monospace block, and bulleted list. * [User mentions](https://developers.google.com/workspace/chat/format-messages#messages-@mention) using the format ``. * Custom hyperlinks using the format `<{url}|{rendered_text}>` where the first string is the URL and the second is the rendered text—for example, ``. * Custom emoji using the format `:{emoji_name}:`—for example, `:smile:`. This doesn't apply to Unicode emoji, such as `U+1F600` for a grinning face emoji. For more information, see [View text formatting sent in a message](https://developers.google.com/workspace/chat/format-messages#view_text_formatting_sent_in_a_message)
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the message was last edited by a user. If the message has never been edited, this field is empty.
  *   `matchedUrl` (*type:* `GoogleApi.Chat.V1.Model.MatchedUrl.t`, *default:* `nil`) - Output only. A URL in `spaces.messages.text` that matches a link preview pattern. For more information, see [Preview links](https://developers.google.com/workspace/chat/preview-links).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Resource name of the message. Format: `spaces/{space}/messages/{message}` Where `{space}` is the ID of the space where the message is posted and `{message}` is a system-assigned ID for the message. For example, `spaces/AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`. If you set a custom ID when you create a message, you can use this ID to specify the message in a request by replacing `{message}` with the value from the `clientAssignedMessageId` field. For example, `spaces/AAAAAAAAAAA/messages/client-custom-name`. For details, see [Name a message](https://developers.google.com/workspace/chat/create-messages#name_a_created_message).
  *   `privateMessageViewer` (*type:* `GoogleApi.Chat.V1.Model.User.t`, *default:* `nil`) - Optional. Immutable. Input for creating a message, otherwise output only. The user that can view the message. When set, the message is private and only visible to the specified user and the Chat app. To include this field in your request, you must call the Chat API using [app authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app) and omit the following: * [Attachments](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages.attachments) * [Accessory widgets](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages#Message.AccessoryWidget) For details, see [Send a message privately](https://developers.google.com/workspace/chat/create-messages#private).
  *   `quotedMessageMetadata` (*type:* `GoogleApi.Chat.V1.Model.QuotedMessageMetadata.t`, *default:* `nil`) - Output only. Information about a message that's quoted by a Google Chat user in a space. Google Chat users can quote a message to reply to it.
  *   `sender` (*type:* `GoogleApi.Chat.V1.Model.User.t`, *default:* `nil`) - Output only. The user who created the message. If your Chat app [authenticates as a user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), the output populates the [user](https://developers.google.com/workspace/chat/api/reference/rest/v1/User) `name` and `type`.
  *   `slashCommand` (*type:* `GoogleApi.Chat.V1.Model.SlashCommand.t`, *default:* `nil`) - Output only. Slash command information, if applicable.
  *   `space` (*type:* `GoogleApi.Chat.V1.Model.Space.t`, *default:* `nil`) - Output only. If your Chat app [authenticates as a user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user), the output only populates the [space](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces) `name`.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Optional. Plain-text body of the message. The first link to an image, video, or web page generates a [preview chip](https://developers.google.com/workspace/chat/preview-links). You can also [@mention a Google Chat user](https://developers.google.com/workspace/chat/format-messages#messages-@mention), or everyone in the space. To learn about creating text messages, see [Send a message](https://developers.google.com/workspace/chat/create-messages).
  *   `thread` (*type:* `GoogleApi.Chat.V1.Model.Thread.t`, *default:* `nil`) - The thread the message belongs to. For example usage, see [Start or reply to a message thread](https://developers.google.com/workspace/chat/create-messages#create-message-thread).
  *   `threadReply` (*type:* `boolean()`, *default:* `nil`) - Output only. When `true`, the message is a response in a reply thread. When `false`, the message is visible in the space's top-level conversation as either the first message of a thread or a message with no threaded replies. If the space doesn't support reply in threads, this field is always `false`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessoryWidgets => list(GoogleApi.Chat.V1.Model.AccessoryWidget.t()) | nil,
          :actionResponse => GoogleApi.Chat.V1.Model.ActionResponse.t() | nil,
          :annotations => list(GoogleApi.Chat.V1.Model.Annotation.t()) | nil,
          :argumentText => String.t() | nil,
          :attachedGifs => list(GoogleApi.Chat.V1.Model.AttachedGif.t()) | nil,
          :attachment => list(GoogleApi.Chat.V1.Model.Attachment.t()) | nil,
          :cards => list(GoogleApi.Chat.V1.Model.Card.t()) | nil,
          :cardsV2 => list(GoogleApi.Chat.V1.Model.CardWithId.t()) | nil,
          :clientAssignedMessageId => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :deletionMetadata => GoogleApi.Chat.V1.Model.DeletionMetadata.t() | nil,
          :emojiReactionSummaries => list(GoogleApi.Chat.V1.Model.EmojiReactionSummary.t()) | nil,
          :fallbackText => String.t() | nil,
          :formattedText => String.t() | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :matchedUrl => GoogleApi.Chat.V1.Model.MatchedUrl.t() | nil,
          :name => String.t() | nil,
          :privateMessageViewer => GoogleApi.Chat.V1.Model.User.t() | nil,
          :quotedMessageMetadata => GoogleApi.Chat.V1.Model.QuotedMessageMetadata.t() | nil,
          :sender => GoogleApi.Chat.V1.Model.User.t() | nil,
          :slashCommand => GoogleApi.Chat.V1.Model.SlashCommand.t() | nil,
          :space => GoogleApi.Chat.V1.Model.Space.t() | nil,
          :text => String.t() | nil,
          :thread => GoogleApi.Chat.V1.Model.Thread.t() | nil,
          :threadReply => boolean() | nil
        }

  field(:accessoryWidgets, as: GoogleApi.Chat.V1.Model.AccessoryWidget, type: :list)
  field(:actionResponse, as: GoogleApi.Chat.V1.Model.ActionResponse)
  field(:annotations, as: GoogleApi.Chat.V1.Model.Annotation, type: :list)
  field(:argumentText)
  field(:attachedGifs, as: GoogleApi.Chat.V1.Model.AttachedGif, type: :list)
  field(:attachment, as: GoogleApi.Chat.V1.Model.Attachment, type: :list)
  field(:cards, as: GoogleApi.Chat.V1.Model.Card, type: :list)
  field(:cardsV2, as: GoogleApi.Chat.V1.Model.CardWithId, type: :list)
  field(:clientAssignedMessageId)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:deletionMetadata, as: GoogleApi.Chat.V1.Model.DeletionMetadata)
  field(:emojiReactionSummaries, as: GoogleApi.Chat.V1.Model.EmojiReactionSummary, type: :list)
  field(:fallbackText)
  field(:formattedText)
  field(:lastUpdateTime, as: DateTime)
  field(:matchedUrl, as: GoogleApi.Chat.V1.Model.MatchedUrl)
  field(:name)
  field(:privateMessageViewer, as: GoogleApi.Chat.V1.Model.User)
  field(:quotedMessageMetadata, as: GoogleApi.Chat.V1.Model.QuotedMessageMetadata)
  field(:sender, as: GoogleApi.Chat.V1.Model.User)
  field(:slashCommand, as: GoogleApi.Chat.V1.Model.SlashCommand)
  field(:space, as: GoogleApi.Chat.V1.Model.Space)
  field(:text)
  field(:thread, as: GoogleApi.Chat.V1.Model.Thread)
  field(:threadReply)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Message do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
