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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaNewsInfo do
  @moduledoc """


  ## Attributes

  *   `docid` (*type:* `String.t`, *default:* `nil`) - The docid of the news result from News360 backend.
  *   `newsContentType` (*type:* `String.t`, *default:* `nil`) - Indicates how the type of the news result.
  *   `publicationTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiTimestamp.t`, *default:* `nil`) - Publication time of the news, in seconds (unix epoch).
  *   `publisher` (*type:* `String.t`, *default:* `nil`) - The publisher of the news.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :docid => String.t() | nil,
          :newsContentType => String.t() | nil,
          :publicationTime => GoogleApi.ContentWarehouse.V1.Model.AssistantApiTimestamp.t() | nil,
          :publisher => String.t() | nil
        }

  field(:docid)
  field(:newsContentType)
  field(:publicationTime, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiTimestamp)
  field(:publisher)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaNewsInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaNewsInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaNewsInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
