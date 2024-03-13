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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialStanzaModerationInfo do
  @moduledoc """
  ModerationInfo stores the information of moderation for a stanza in a specific destination stream. Including who moderated and why.

  ## Attributes

  *   `moderationReason` (*type:* `String.t`, *default:* `nil`) - The reason why this stanza was moderated provided by client.
  *   `moderator` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto.t`, *default:* `nil`) - 
  *   `moderatorType` (*type:* `String.t`, *default:* `nil`) - Type of moderation. Semantically REQUIRED, http://go/required At write time, only ModeratorType.AUTO_MODERATOR is allowed. For all other cases, this information is inferred from the request at write time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :moderationReason => String.t() | nil,
          :moderator =>
            GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto.t() | nil,
          :moderatorType => String.t() | nil
        }

  field(:moderationReason)
  field(:moderator, as: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto)
  field(:moderatorType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SocialStanzaModerationInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialStanzaModerationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SocialStanzaModerationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
