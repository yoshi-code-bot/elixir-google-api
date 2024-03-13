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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction do
  @moduledoc """
  Data representing a comment moderated restriction. A moderated comment is hidden from all viewers except for comment author. A comment can be moderated due to multiple moderated restrictions from multiple issuers. Each is represented by a CommentModeratedRestriction entry which is uniquely identified by the external comment id and the create time in the storage. Conceptually, there should be exactly one moderated restriction for a specific reason per issuer per reviewable value and this constraint will be enforced in the Comment API endpoints. For more context see go/yt-comment-restriction-data-model ## Next id: 11. ## Spanner primary key attributes

  ## Attributes

  *   `autoModEnforcements` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestrictionAutoModDecisionEnforcement.t)`, *default:* `nil`) - Live chat auto moderation only. The HOLD decisions and whether they are enforced correspondingly.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The creation time of this restriction.
  *   `externalCommentId` (*type:* `String.t`, *default:* `nil`) - Required. The external ID of the comment that this restriction described.
  *   `issuer` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentRestrictionIssuer.t`, *default:* `nil`) - Required. The system who moderated the comment. For CommentModeratedRestriction all issuer enums apply."Issuer" is different from the grouping for permission check, which will be enforced via Boq Scaffolding RpcSecurityPolicy.
  *   `reason` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentRestrictionReason.t`, *default:* `nil`) - Required. The specific restriction reason why the comment is moderated. When Automod issues multiple HOLD decisions for a chat message, they always share the same reason.
  *   `reviewable` (*type:* `boolean()`, *default:* `nil`) - True if moderation comes from T&S, Automod, and some of channel owner settings and comments will be put into "Held For Review" queue for channel owner review. After any creator review, this restriction will remain in this status to capture the original restriction. True maps to ModerationState=HOLD in Stanza. False if moderation results from channel owner manual opertation or author in hidden user list, and maps to ModerationState=REJECTED in Stanza.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Required. For moderated restriction on comment and live chat but not issued by Automod, the field should be always set to ACTIVE. For Automod moderation on live chat, the restriction is active as long as one of the HOLD decisions is enforced. Can only be changed by upcoming QPS threshold configuration changes and backfills.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when this restriction is updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoModEnforcements =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestrictionAutoModDecisionEnforcement.t()
            )
            | nil,
          :createTime => DateTime.t() | nil,
          :externalCommentId => String.t() | nil,
          :issuer =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentRestrictionIssuer.t()
            | nil,
          :reason =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentRestrictionReason.t()
            | nil,
          :reviewable => boolean() | nil,
          :status => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:autoModEnforcements,
    as:
      GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestrictionAutoModDecisionEnforcement,
    type: :list
  )

  field(:createTime, as: DateTime)
  field(:externalCommentId)

  field(:issuer,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentRestrictionIssuer
  )

  field(:reason,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentRestrictionReason
  )

  field(:reviewable)
  field(:status)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
