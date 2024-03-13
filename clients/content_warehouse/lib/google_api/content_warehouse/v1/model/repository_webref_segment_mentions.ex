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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSegmentMentions do
  @moduledoc """
  Annotations of a single docjoin segment. A CDoc has several distinct data types which we call "segments" (see SegmentType for complete list). SegmentMentions contains all the mentions for a given (document, segment) pair. For queries there is only a single CONTENT segment.

  ## Attributes

  *   `mention` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMention.t)`, *default:* `nil`) - A list of all the places the entity in question was annotated within this segment. The (indexing.annotations.goldmine) option is for Goldmine AnnotationsFinder to include Mention only when segment_type="CONTENT"
  *   `segmentType` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mention => list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMention.t()) | nil,
          :segmentType => String.t() | nil
        }

  field(:mention, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMention, type: :list)
  field(:segmentType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSegmentMentions do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSegmentMentions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSegmentMentions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
