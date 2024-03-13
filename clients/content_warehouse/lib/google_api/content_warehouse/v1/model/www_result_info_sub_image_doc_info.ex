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

defmodule GoogleApi.ContentWarehouse.V1.Model.WWWResultInfoSubImageDocInfo do
  @moduledoc """
  The following message contains info of sub image docs, it is populated in query_state and consumed in web image boost twiddler: (go/WebImageBoostTwiddler). NextID: 26

  ## Attributes

  *   `additionalSafesearchSignals` (*type:* `list(integer())`, *default:* `nil`) - 
  *   `bestThumbnailType` (*type:* `String.t`, *default:* `nil`) - The best thumbnail type is either 300K or 50K.
  *   `crops` (*type:* `integer()`, *default:* `nil`) - 
  *   `deepCropBytes` (*type:* `String.t`, *default:* `nil`) - Deepcrop thumbnail cropping hints.
  *   `dimeScore` (*type:* `number()`, *default:* `nil`) - EQ* v3: Deep Image Engagingness(DImE) go/deep-image-engagingness-slides
  *   `docid` (*type:* `String.t`, *default:* `nil`) - 
  *   `documentTrust` (*type:* `number()`, *default:* `nil`) - 
  *   `eqStar` (*type:* `number()`, *default:* `nil`) - EQ* is a unified signal to capture the emotional quality (e.g. inspiration, lifestyle, context, etc.) of an image. For more information, please refer to go/image-inspiration-ranking-framework.
  *   `estRelevance` (*type:* `number()`, *default:* `nil`) - Estimated Image Relevance ranging between 0.0 (Off-Topic) to 1.0 (Very Useful).
  *   `estSigmaU` (*type:* `number()`, *default:* `nil`) - Estimated Sigma U calculated from U*.
  *   `flowOutput` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd.t`, *default:* `nil`) - 
  *   `height` (*type:* `integer()`, *default:* `nil`) - 
  *   `height50k` (*type:* `integer()`, *default:* `nil`) - 
  *   `humanModelScore` (*type:* `number()`, *default:* `nil`) - DeepTags human model score. go/VisualShoppingImageAttributes
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - 
  *   `pamirNormalizedScore` (*type:* `number()`, *default:* `nil`) - 
  *   `pornSignals` (*type:* `integer()`, *default:* `nil`) - Encoded Safe Search annotations of the image. See image/safesearch/overall/public/image_porn_attachments.h for decoding functions.
  *   `safeForUniversal` (*type:* `boolean()`, *default:* `nil`) - Result is not on the Images Universal blacklist. For more comprehensive filtering of IU images, including this bit, see superroot/impls/images/quality/safesearch/iu_inappropriate_filter_lib.h
  *   `salience` (*type:* `number()`, *default:* `nil`) - Salient score, indicating how important an image is to the page it's on. Check go/salient-images-design-doc for details.
  *   `salientColorInfo` (*type:* `integer()`, *default:* `nil`) - 4-bytes: (low order on the left) RRRRRRRR GGGGGGGG BBBBBBBB SS where R: 8-bits encoding color 'r' G: 8-bits encoding color 'g' B: 8-bits encoding color 'b' S: 2-bits encoding the color source - 00 = from color detection result - 01 = from cairo This field has the salient color information.
  *   `score` (*type:* `number()`, *default:* `nil`) - 
  *   `tqStar` (*type:* `number()`, *default:* `nil`) - TQ* is a signal to capture the technical quality (e.g. exposure, sharpness, composition, etc.) of an image. For more information, please refer to go/tqstar.
  *   `tradFrac` (*type:* `number()`, *default:* `nil`) - 
  *   `width` (*type:* `integer()`, *default:* `nil`) - 
  *   `width50k` (*type:* `integer()`, *default:* `nil`) - Width and height of the AREA_50K thumbnail for this image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalSafesearchSignals => list(integer()) | nil,
          :bestThumbnailType => String.t() | nil,
          :crops => integer() | nil,
          :deepCropBytes => String.t() | nil,
          :dimeScore => number() | nil,
          :docid => String.t() | nil,
          :documentTrust => number() | nil,
          :eqStar => number() | nil,
          :estRelevance => number() | nil,
          :estSigmaU => number() | nil,
          :flowOutput => GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd.t() | nil,
          :height => integer() | nil,
          :height50k => integer() | nil,
          :humanModelScore => number() | nil,
          :imageUrl => String.t() | nil,
          :pamirNormalizedScore => number() | nil,
          :pornSignals => integer() | nil,
          :safeForUniversal => boolean() | nil,
          :salience => number() | nil,
          :salientColorInfo => integer() | nil,
          :score => number() | nil,
          :tqStar => number() | nil,
          :tradFrac => number() | nil,
          :width => integer() | nil,
          :width50k => integer() | nil
        }

  field(:additionalSafesearchSignals, type: :list)
  field(:bestThumbnailType)
  field(:crops)
  field(:deepCropBytes)
  field(:dimeScore)
  field(:docid)
  field(:documentTrust)
  field(:eqStar)
  field(:estRelevance)
  field(:estSigmaU)
  field(:flowOutput, as: GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd)
  field(:height)
  field(:height50k)
  field(:humanModelScore)
  field(:imageUrl)
  field(:pamirNormalizedScore)
  field(:pornSignals)
  field(:safeForUniversal)
  field(:salience)
  field(:salientColorInfo)
  field(:score)
  field(:tqStar)
  field(:tradFrac)
  field(:width)
  field(:width50k)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.WWWResultInfoSubImageDocInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.WWWResultInfoSubImageDocInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.WWWResultInfoSubImageDocInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
