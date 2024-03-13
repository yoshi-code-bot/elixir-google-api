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

defmodule GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteDataVersionedScore do
  @moduledoc """
  The site porn score of the site to which the page of interest belongs to. Multiple versions are kept across large changes for some time. The Version-4 score is the average Universal Page Probability of all the site's pages, and will come with populated verticals4_score and site_rule (if any rule fires) fields. When using this score it is recommended to subscribe to the following mailing list: g/safesearch-announce.

  ## Attributes

  *   `score` (*type:* `number()`, *default:* `nil`) - 
  *   `siteRule` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `version` (*type:* `integer()`, *default:* `nil`) - 
  *   `verticals4Score` (*type:* `number()`, *default:* `nil`) - Please talk to safesearch@ before relying on any of these internal fields:
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :score => number() | nil,
          :siteRule => list(String.t()) | nil,
          :version => integer() | nil,
          :verticals4Score => number() | nil
        }

  field(:score)
  field(:siteRule, type: :list)
  field(:version)
  field(:verticals4Score)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteDataVersionedScore do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteDataVersionedScore.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornSiteDataVersionedScore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
