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

defmodule GoogleApi.Chat.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Chat.V1.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Delete conversations and spaces owned by your organization and remove access to associated files in Google Chat
      "https://www.googleapis.com/auth/chat.admin.delete",

      # View, add, update and remove members and managers in conversations owned by your organization
      "https://www.googleapis.com/auth/chat.admin.memberships",

      # View members and managers in conversations owned by your organization
      "https://www.googleapis.com/auth/chat.admin.memberships.readonly",

      # View or edit display name, description, and other metadata for all Google Chat conversations owned by your organization
      "https://www.googleapis.com/auth/chat.admin.spaces",

      # View display name, description, and other metadata for all Google Chat conversations owned by your organization
      "https://www.googleapis.com/auth/chat.admin.spaces.readonly",

      # On their own behalf, apps in Google Chat can delete conversations and spaces and remove access to associated files
      "https://www.googleapis.com/auth/chat.app.delete",

      # On their own behalf, apps in Google Chat can see, add, update, and remove members from conversations and spaces
      "https://www.googleapis.com/auth/chat.app.memberships",

      # On their own behalf, apps in Google Chat can create conversations and spaces and see or update their metadata (including history settings and access settings)
      "https://www.googleapis.com/auth/chat.app.spaces",

      # On their own behalf, apps in Google Chat can create conversations and spaces
      "https://www.googleapis.com/auth/chat.app.spaces.create",

      # Private Service: https://www.googleapis.com/auth/chat.bot
      "https://www.googleapis.com/auth/chat.bot",

      # Delete conversations and spaces and remove access to associated files in Google Chat
      "https://www.googleapis.com/auth/chat.delete",

      # Import spaces, messages, and memberships into Google Chat.
      "https://www.googleapis.com/auth/chat.import",

      # See, add, update, and remove members from conversations and spaces in Google Chat
      "https://www.googleapis.com/auth/chat.memberships",

      # Add and remove itself from conversations and spaces in Google Chat
      "https://www.googleapis.com/auth/chat.memberships.app",

      # View members in Google Chat conversations.
      "https://www.googleapis.com/auth/chat.memberships.readonly",

      # See, compose, send, update, and delete messages as well as their message content; add, see, and delete reactions to messages.
      "https://www.googleapis.com/auth/chat.messages",

      # Compose and send messages in Google Chat
      "https://www.googleapis.com/auth/chat.messages.create",

      # See, add, and delete reactions as well as their reaction content to messages in Google Chat
      "https://www.googleapis.com/auth/chat.messages.reactions",

      # Add reactions to messages in Google Chat
      "https://www.googleapis.com/auth/chat.messages.reactions.create",

      # View reactions as well as their reaction content to messages in Google Chat
      "https://www.googleapis.com/auth/chat.messages.reactions.readonly",

      # See messages as well as their reactions and message content in Google Chat
      "https://www.googleapis.com/auth/chat.messages.readonly",

      # Create conversations and spaces and see or update metadata (including history settings and access settings) in Google Chat
      "https://www.googleapis.com/auth/chat.spaces",

      # Create new conversations and spaces in Google Chat
      "https://www.googleapis.com/auth/chat.spaces.create",

      # View chat and spaces in Google Chat
      "https://www.googleapis.com/auth/chat.spaces.readonly",

      # View and modify last read time for Google Chat conversations
      "https://www.googleapis.com/auth/chat.users.readstate",

      # View last read time for Google Chat conversations
      "https://www.googleapis.com/auth/chat.users.readstate.readonly"
    ],
    otp_app: :google_api_chat,
    base_url: "https://chat.googleapis.com/"
end
