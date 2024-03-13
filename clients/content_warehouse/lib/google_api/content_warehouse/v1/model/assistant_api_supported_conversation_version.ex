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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiSupportedConversationVersion do
  @moduledoc """
  The overall Conversation Protocol version. As we make fundamental changes to Conversation protocol that are non-backwards compatible, we will increment the protocol version. By default, all clients will support version 0. All versions are documented at go/conversation-versions.

  ## Attributes

  *   `supportsConversationProtocol` (*type:* `boolean()`, *default:* `nil`) - Whether conversation protocol is supported explicitly. If true, SingleDeviceCapabilityChecker::SupportsConversationProtocol will always return true.
  *   `version` (*type:* `integer()`, *default:* `nil`) - The supported version number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :supportsConversationProtocol => boolean() | nil,
          :version => integer() | nil
        }

  field(:supportsConversationProtocol)
  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSupportedConversationVersion do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiSupportedConversationVersion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSupportedConversationVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end