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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza do
  @moduledoc """
  Intended to be simpler to work with than the ExportedStanza it's derived from See documentation: https://g3doc.corp.google.com/company/teams/youtube/community_intelligence/eng_resources/data_sources.md#ministanza Next available: 80

  ## Attributes

  *   `commentType` (*type:* `String.t`, *default:* `nil`) - Whether the comment is on a video, post, or other product.
  *   `subject` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto.t`, *default:* `nil`) - The author of the comment
  *   `numRepliers` (*type:* `integer()`, *default:* `nil`) - Number of different repliers the comment has.
  *   `ytAuthorChannelId` (*type:* `String.t`, *default:* `nil`) - The youtube channel id of the comment author.
  *   `subscriptionTimestamp` (*type:* `String.t`, *default:* `nil`) - The timestamp (in seconds) when the author subscribed to the channel.
  *   `stanzaRestrictions` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.SocialStanzaStanzaRestriction.t)`, *default:* `nil`) - Contains various restriction information about a stanza.
  *   `lowQualityDecisions` (*type:* `map()`, *default:* `nil`) - Low quality decisions. Keyed by decision types corresponding to secondary keys.
  *   `rankingPostLanguage` (*type:* `String.t`, *default:* `nil`) - The language code stored in the KV pair ranking:post_language. This should usually be the same as language_code but is not guaranteed to be identical. The KV pair is needed because SBE ranking can't consume user_content. Still populated, but deprecated.
  *   `eligibleQualifiedTeaserFilters` (*type:* `list(String.t)`, *default:* `nil`) - The qualified comment teaser filters that this comment is eligible for. Refer to go/comment-teaser-design for more information.
  *   `stanzaId` (*type:* `String.t`, *default:* `nil`) - Refers to the stanza this data is derived from.
  *   `isSubscriber` (*type:* `boolean()`, *default:* `nil`) - If the comment author is publicly subscribed to the channel.
  *   `numDislikes` (*type:* `integer()`, *default:* `nil`) - Number of dislikes the comment has.
  *   `automodScores` (*type:* `map()`, *default:* `nil`) - Automod scores map. Keyed by various model names.
  *   `commentClassificationRanking` (*type:* `map()`, *default:* `nil`) - Comment classification for ranking mapping all secondary keys to values. E.g. {"joke_v1":0.8, "joke_v2":0.7, "question_v1":0.3}.
  *   `isAuthorSponsor` (*type:* `boolean()`, *default:* `nil`) - If the author is a channel member (sponsor).
  *   `impersonationScores` (*type:* `map()`, *default:* `nil`) - Impersonation scores map. Keyed by secondary key (score type).
  *   `commentClassificationBuckets` (*type:* `list(String.t)`, *default:* `nil`) - List of pre-defined classification score buckets to which the comment belongs. E.g. satisfaction_v1_percentile_80.
  *   `lowQualityScores` (*type:* `map()`, *default:* `nil`) - Comment low quality scores. Keyed by various model names. Rename from the old automod_scores.
  *   `lastReplyTimestampUsec` (*type:* `String.t`, *default:* `nil`) - The time when last reply is created.
  *   `textQualityScores` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t`, *default:* `nil`) - Predicted probability of the comment being flagged based on the text.
  *   `channelProfileQualityScores` (*type:* `map()`, *default:* `nil`) - Channel profile quality scores map. Keyed by various model names.
  *   `numLikes` (*type:* `integer()`, *default:* `nil`) - Number of likes the comment has.
  *   `sentiment` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsSentimentSentiment.t`, *default:* `nil`) - Sentiment. This omits entity_sentiment and keeps only the polarity, magnitude, and score. Sentiment as currently implemented is not debiased and has limited language coverage. Please read go/comments-sentiment-access before using.
  *   `coverageSamplingEligible` (*type:* `boolean()`, *default:* `nil`) - Whether or not this comment is eligible for comment classifier coverage sampling (in Kapla). Refer to go/coverage-monitoring-for-kapla-comment-classifiers for more information.
  *   `wordEntropy` (*type:* `float()`, *default:* `nil`) - Word entropy of the comment.
  *   `sensitivityScores` (*type:* `map()`, *default:* `nil`) - Sensitivity scores map for smart reply sensitivity scores. Keyed by model names. See (g3doc/company/teams/expander/research/conversation/sensitive.md) for more information on sensitivity scores.
  *   `ytCommentQualityScore3` (*type:* `float()`, *default:* `nil`) - 
  *   `channelId` (*type:* `String.t`, *default:* `nil`) - The channel of the video this comment belongs to.
  *   `fds` (*type:* `float()`, *default:* `nil`) - Fountain Discovery Score, which represents the reputation of the author.
  *   `distillerEngagements` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleActivityStreamqualityDistillerEngagements.t`, *default:* `nil`) - All distiller engagements like reports and downvotes.
  *   `smartReplies` (*type:* `%{optional(String.t) => GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsClassificationProtoYouTubeCommentSmartReply.t}`, *default:* `nil`) - Smart replies for this comment. Keyed by model names.
  *   `ytCommentQualityScore` (*type:* `float()`, *default:* `nil`) - Existing quality corpus scores.
  *   `isDeleted` (*type:* `boolean()`, *default:* `nil`) - Whether a comment is from deleted shares. See stanza_restrictions for more specific information and is_publicly_visible for comments which are allowed to be seen by everyone.
  *   `textLength` (*type:* `integer()`, *default:* `nil`) - Text length of the comment.
  *   `postId` (*type:* `String.t`, *default:* `nil`) - The post this comment belongs to.
  *   `isPubliclyVisible` (*type:* `boolean()`, *default:* `nil`) - If the post is publicly visible.
  *   `isPinned` (*type:* `boolean()`, *default:* `nil`) - Whether the comment is pinned. This is derived from the DestinationStreamDump.
  *   `charEntropy` (*type:* `float()`, *default:* `nil`) - Char entropy of the comment.
  *   `ytReplyToItemId` (*type:* `String.t`, *default:* `nil`) - For replies to replies, this contains the parent reply's id. The parent_id field is actually the root stanza_id (not guaranteed AFAIK).
  *   `contentUpdateTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - The stanza content last update timestamp, as observed by the server. Note that for many comments older than Nov. 2014 this is unset in the original stanza. MiniStanza tries to be consistent with the original so for such comments it remains unset in MiniStanza. If you use this field you should check has_content_update_timestamp().
  *   `numSubscribersBucket` (*type:* `integer()`, *default:* `nil`) - Bucketed number of subscribers held by comment author.
  *   `content` (*type:* `String.t`, *default:* `nil`) - The text content of the comment.
  *   `creationTimeInSeconds` (*type:* `String.t`, *default:* `nil`) - The time when the comment is created.
  *   `videoId` (*type:* `String.t`, *default:* `nil`) - The video this comment belongs to.
  *   `blarneyStoneScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerBlarneyStoneScores.t`, *default:* `nil`) - The blarney stone score.
  *   `empiricalCtrs` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics.t`, *default:* `nil`) - Comments empirical CTRs.
  *   `shortReplyVideoId` (*type:* `String.t`, *default:* `nil`) - Associated Short Reply video ID if the comment represents a Short Reply. See go/yt-comment-sticker-m2.
  *   `parentId` (*type:* `String.t`, *default:* `nil`) - The parent stanza's stanza_id, empty for top-level posts (non-replies). Prefer is_reply field for checking if a comment is a reply since that is unaffected by surrogatization. For replies to replies, this is the root stanza_id (not guaranteed AFAIK).
  *   `commentModeratedRestrictions` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction.t)`, *default:* `nil`) - Contains various comment moderated restrictions. Only available in the Atlas version. Extracted from http://shortn/_2LzgPEF5K3
  *   `textEmbedding` (*type:* `%{optional(String.t) => GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextEmbedding.t}`, *default:* `nil`) - Comment text embedding.
  *   `textQualityScores2` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t`, *default:* `nil`) - Predicted probability of the comment being flagged based on the text. For testing the new annotation process only.
  *   `misinfoScores` (*type:* `map()`, *default:* `nil`) - Misinfo scores map. Keyed by various model names.
  *   `segments` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegments.t`, *default:* `nil`) - A textual content for the context.
  *   `hasCreatorReply` (*type:* `boolean()`, *default:* `nil`) - If the comment has a creator reply.
  *   `detailedLanguageCode` (*type:* `String.t`, *default:* `nil`) - The language code with extra script details. This is derived from detailed_language_code if it's populated, otherwise the same as language_code. E.g. mr-Latn
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Unicode CLDR language code of the segments, as implemented by //depot/google3/java/com/google/i18n/identifiers/LanguageCode.java This is derived from user_content and should be considered the canonical language code of the comment.
  *   `creationDevice` (*type:* `String.t`, *default:* `nil`) - The creation device. Derived from shares:yt_creation_device
  *   `mentionedTimestampCommentSecond` (*type:* `integer()`, *default:* `nil`) - Timed comments for the "mentioned" secondary key.
  *   `numReplies` (*type:* `integer()`, *default:* `nil`) - Number of non-abusive replies the comment has.
  *   `commentClassification` (*type:* `map()`, *default:* `nil`) - Comment classification mapping all secondary keys to values. E.g. {"joke_v1":0.8, "joke_v2":0.7, "question_v1":0.3}.
  *   `hasCreatorHeart` (*type:* `boolean()`, *default:* `nil`) - Indicator for whether there is creator heart on this comment.
  *   `offlineEngagementScores` (*type:* `map()`, *default:* `nil`) - Offline engagement scores map. Keyed by various model names.
  *   `subjectIsVideoOwner` (*type:* `boolean()`, *default:* `nil`) - Whether the comment is authored by the creator.
  *   `ansibleScores` (*type:* `map()`, *default:* `nil`) - TnS Ansible scores map. Keyed by various model names.
  *   `isReply` (*type:* `boolean()`, *default:* `nil`) - Whether the comment is a reply.
  *   `videoTimestamps` (*type:* `list(integer())`, *default:* `nil`) - Unique video timestamps in seconds sorted by timestamp. This is derived from text Segments, not from a KV. These may exceed the length of the video since that isn't checked at segmentation time. The segmentation rules have changed over time e.g. in the past "10:00 PM" was treated as a timestamp.
  *   `superThanksInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.YoutubeBackstageSuperVodCommentInfo.t`, *default:* `nil`) - Super Thanks related info if a comment is posted through a Super Thanks purchase.
  *   `ytCommentQualityScore2` (*type:* `float()`, *default:* `nil`) - 
  *   `channelDiscussionId` (*type:* `String.t`, *default:* `nil`) - The channel this channel discussion comment belongs to. Note that this will match channel_id for such comments.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commentType => String.t() | nil,
          :subject =>
            GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto.t() | nil,
          :numRepliers => integer() | nil,
          :ytAuthorChannelId => String.t() | nil,
          :subscriptionTimestamp => String.t() | nil,
          :stanzaRestrictions =>
            list(GoogleApi.ContentWarehouse.V1.Model.SocialStanzaStanzaRestriction.t()) | nil,
          :lowQualityDecisions => map() | nil,
          :rankingPostLanguage => String.t() | nil,
          :eligibleQualifiedTeaserFilters => list(String.t()) | nil,
          :stanzaId => String.t() | nil,
          :isSubscriber => boolean() | nil,
          :numDislikes => integer() | nil,
          :automodScores => map() | nil,
          :commentClassificationRanking => map() | nil,
          :isAuthorSponsor => boolean() | nil,
          :impersonationScores => map() | nil,
          :commentClassificationBuckets => list(String.t()) | nil,
          :lowQualityScores => map() | nil,
          :lastReplyTimestampUsec => String.t() | nil,
          :textQualityScores =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t()
            | nil,
          :channelProfileQualityScores => map() | nil,
          :numLikes => integer() | nil,
          :sentiment =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsSentimentSentiment.t() | nil,
          :coverageSamplingEligible => boolean() | nil,
          :wordEntropy => float() | nil,
          :sensitivityScores => map() | nil,
          :ytCommentQualityScore3 => float() | nil,
          :channelId => String.t() | nil,
          :fds => float() | nil,
          :distillerEngagements =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleActivityStreamqualityDistillerEngagements.t()
            | nil,
          :smartReplies =>
            %{
              optional(String.t()) =>
                GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsClassificationProtoYouTubeCommentSmartReply.t()
            }
            | nil,
          :ytCommentQualityScore => float() | nil,
          :isDeleted => boolean() | nil,
          :textLength => integer() | nil,
          :postId => String.t() | nil,
          :isPubliclyVisible => boolean() | nil,
          :isPinned => boolean() | nil,
          :charEntropy => float() | nil,
          :ytReplyToItemId => String.t() | nil,
          :contentUpdateTimestamp => DateTime.t() | nil,
          :numSubscribersBucket => integer() | nil,
          :content => String.t() | nil,
          :creationTimeInSeconds => String.t() | nil,
          :videoId => String.t() | nil,
          :blarneyStoneScore =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerBlarneyStoneScores.t() | nil,
          :empiricalCtrs =>
            GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics.t() | nil,
          :shortReplyVideoId => String.t() | nil,
          :parentId => String.t() | nil,
          :commentModeratedRestrictions =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction.t()
            )
            | nil,
          :textEmbedding =>
            %{
              optional(String.t()) =>
                GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextEmbedding.t()
            }
            | nil,
          :textQualityScores2 =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation.t()
            | nil,
          :misinfoScores => map() | nil,
          :segments => GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegments.t() | nil,
          :hasCreatorReply => boolean() | nil,
          :detailedLanguageCode => String.t() | nil,
          :languageCode => String.t() | nil,
          :creationDevice => String.t() | nil,
          :mentionedTimestampCommentSecond => integer() | nil,
          :numReplies => integer() | nil,
          :commentClassification => map() | nil,
          :hasCreatorHeart => boolean() | nil,
          :offlineEngagementScores => map() | nil,
          :subjectIsVideoOwner => boolean() | nil,
          :ansibleScores => map() | nil,
          :isReply => boolean() | nil,
          :videoTimestamps => list(integer()) | nil,
          :superThanksInfo =>
            GoogleApi.ContentWarehouse.V1.Model.YoutubeBackstageSuperVodCommentInfo.t() | nil,
          :ytCommentQualityScore2 => float() | nil,
          :channelDiscussionId => String.t() | nil
        }

  field(:commentType)
  field(:subject, as: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsPrincipalProto)
  field(:numRepliers)
  field(:ytAuthorChannelId)
  field(:subscriptionTimestamp)

  field(:stanzaRestrictions,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialStanzaStanzaRestriction,
    type: :list
  )

  field(:lowQualityDecisions, type: :map)
  field(:rankingPostLanguage)
  field(:eligibleQualifiedTeaserFilters, type: :list)
  field(:stanzaId)
  field(:isSubscriber)
  field(:numDislikes)
  field(:automodScores, type: :map)
  field(:commentClassificationRanking, type: :map)
  field(:isAuthorSponsor)
  field(:impersonationScores, type: :map)
  field(:commentClassificationBuckets, type: :list)
  field(:lowQualityScores, type: :map)
  field(:lastReplyTimestampUsec)

  field(:textQualityScores,
    as:
      GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation
  )

  field(:channelProfileQualityScores, type: :map)
  field(:numLikes)
  field(:sentiment, as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsSentimentSentiment)
  field(:coverageSamplingEligible)
  field(:wordEntropy)
  field(:sensitivityScores, type: :map)
  field(:ytCommentQualityScore3)
  field(:channelId)
  field(:fds)

  field(:distillerEngagements,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleActivityStreamqualityDistillerEngagements
  )

  field(:smartReplies,
    as:
      GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsClassificationProtoYouTubeCommentSmartReply,
    type: :map
  )

  field(:ytCommentQualityScore)
  field(:isDeleted)
  field(:textLength)
  field(:postId)
  field(:isPubliclyVisible)
  field(:isPinned)
  field(:charEntropy)
  field(:ytReplyToItemId)
  field(:contentUpdateTimestamp, as: DateTime)
  field(:numSubscribersBucket)
  field(:content)
  field(:creationTimeInSeconds)
  field(:videoId)

  field(:blarneyStoneScore,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeDistillerBlarneyStoneScores
  )

  field(:empiricalCtrs,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics
  )

  field(:shortReplyVideoId)
  field(:parentId)

  field(:commentModeratedRestrictions,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsApiCommentModeratedRestriction,
    type: :list
  )

  field(:textEmbedding,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextEmbedding,
    type: :map
  )

  field(:textQualityScores2,
    as:
      GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsRankingYouTubeCommentTextQualityAnnotation
  )

  field(:misinfoScores, type: :map)
  field(:segments, as: GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegments)
  field(:hasCreatorReply)
  field(:detailedLanguageCode)
  field(:languageCode)
  field(:creationDevice)
  field(:mentionedTimestampCommentSecond)
  field(:numReplies)
  field(:commentClassification, type: :map)
  field(:hasCreatorHeart)
  field(:offlineEngagementScores, type: :map)
  field(:subjectIsVideoOwner)
  field(:ansibleScores, type: :map)
  field(:isReply)
  field(:videoTimestamps, type: :list)

  field(:superThanksInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeBackstageSuperVodCommentInfo
  )

  field(:ytCommentQualityScore2)
  field(:channelDiscussionId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeCommentsClusteringMiniStanza do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
