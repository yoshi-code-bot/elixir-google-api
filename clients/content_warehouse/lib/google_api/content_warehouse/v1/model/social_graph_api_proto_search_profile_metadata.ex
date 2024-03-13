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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileMetadata do
  @moduledoc """
  This proto represents metadata of the users SearchProfile like profile state, GOG account id etc.,

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Unique contributor account id allocated by presence/janata infrastructure. This will be used in the frontend for various actions like reporting errors, photo uploads etc., go/boba-janata, go/cleanup-contributor-creation
  *   `accountMid` (*type:* `String.t`, *default:* `nil`) - Account KG entity mid assigned to this user required by old janata serving stack. This is not required anymore for serving. But might need it for historical purposes. See https://hume.google.com/edit/g/11gg6cyvch for more details.
  *   `aresId` (*type:* `String.t`, *default:* `nil`) - Ares id used for tracking the auto moderation.
  *   `state` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileState.t)`, *default:* `nil`) - Current state of the Search Profile.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :accountMid => String.t() | nil,
          :aresId => String.t() | nil,
          :state =>
            list(GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileState.t())
            | nil
        }

  field(:accountId)
  field(:accountMid)
  field(:aresId)

  field(:state,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileState,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoSearchProfileMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
