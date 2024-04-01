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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatus do
  @moduledoc """
  Derived fields that encapsulate the possible enforcement states of a Comment. Used to influence the viewer experience. NextID: 11 ----- CommentDemotedRestriction Summary ----- Demoted Restriction hides live chat messages from being shown in Top Chat.

  ## Attributes

  *   `demotedRestrictionSeverity` (*type:* `String.t`, *default:* `nil`) - Output only. The severity of the active demotion. At most one CommentDemotedRestriction can be active at any time. Only supported for Comments with an associated ChatEvent.
  *   `exemptFromHold` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the comment is auto-approved by creator-defined roles and is not subject to automod hold.
  *   `held` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the comment is held and going to be reviewed by channel owner or moderators. The issuers that can hold entity comments are: 1) TNS 2) AUTOMOD, 3) CHANNEL_SETTINGS, 4) CHANNEL_MODERATOR, 5)GLOBAL, 6) ISSUER_UNSPECIFIED. The issuers that can hold live chat are // 1) AUTOMOD, 2) GLOBAL, 3) ISSUER_UNSPECIFIED. Issuer definitions: https://source.corp.google.com/piper///depot/google3/video/youtube/comments/api/proto/comment_restriction_issuer.proto;rcl=586954033;l=15 This is used to infer the SBE moderation_state for entity comment and live chat.
  *   `heldForCreatorReviewStatus` (*type:* `String.t`, *default:* `nil`) - Output only. The moderation state of comments that have been held. Currently only effective for live chat because we can not tell the rejected creator review status for entity comments from current data model.
  *   `moderated` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the comment is moderated and not overridden by creator reviews.
  *   `moderatedByBlockedWords` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the comment is moderated due to any of the creator-defined blocked words.
  *   `moderatedByChatRemoval` (*type:* `boolean()`, *default:* `nil`) - Output only. Live Chat only. True only if the live chat message is directly moderated by a privileged user from Live Chat chat room. go/ytfexit-live-chat-moderation#remove-chat-messages
  *   `moderatedByTns` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the comment is moderated by TnS. Maps to SBE Spam http://google3/video/youtube/comments/backstage/backend/lib/stream_v2/stream_item_reader.cc?l=597
  *   `rejected` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the comment is rejected or taken down by TNS.
  *   `userModerationDecision` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatusUserModerationDecision.t`, *default:* `nil`) - Output only. The moderation decision on comments from privileged users. This field can be used to take place of `held_for_creator_review_status` for live chat, together with `held_by_non_tns`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :demotedRestrictionSeverity => String.t() | nil,
          :exemptFromHold => boolean() | nil,
          :held => boolean() | nil,
          :heldForCreatorReviewStatus => String.t() | nil,
          :moderated => boolean() | nil,
          :moderatedByBlockedWords => boolean() | nil,
          :moderatedByChatRemoval => boolean() | nil,
          :moderatedByTns => boolean() | nil,
          :rejected => boolean() | nil,
          :userModerationDecision =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatusUserModerationDecision.t()
            | nil
        }

  field(:demotedRestrictionSeverity)
  field(:exemptFromHold)
  field(:held)
  field(:heldForCreatorReviewStatus)
  field(:moderated)
  field(:moderatedByBlockedWords)
  field(:moderatedByChatRemoval)
  field(:moderatedByTns)
  field(:rejected)

  field(:userModerationDecision,
    as:
      GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatusUserModerationDecision
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatus do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentEnforcementStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end