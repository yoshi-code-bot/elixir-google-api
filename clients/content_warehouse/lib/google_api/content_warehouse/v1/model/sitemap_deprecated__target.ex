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

defmodule GoogleApi.ContentWarehouse.V1.Model.SitemapDEPRECATED_Target do
  @moduledoc """


  ## Attributes

  *   `DEPRECATEDAnchor` (*type:* `String.t`, *default:* `nil`) - 
  *   `DEPRECATEDRunningAnchor` (*type:* `boolean()`, *default:* `nil`) - 
  *   `DEPRECATEDTitle` (*type:* `String.t`, *default:* `nil`) - 
  *   `displaytitle` (*type:* `String.t`, *default:* `nil`) - 
  *   `score` (*type:* `integer()`, *default:* `nil`) - optional, exclude to save space
  *   `url` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :DEPRECATEDAnchor => String.t() | nil,
          :DEPRECATEDRunningAnchor => boolean() | nil,
          :DEPRECATEDTitle => String.t() | nil,
          :displaytitle => String.t() | nil,
          :score => integer() | nil,
          :url => String.t() | nil
        }

  field(:DEPRECATEDAnchor)
  field(:DEPRECATEDRunningAnchor)
  field(:DEPRECATEDTitle)
  field(:displaytitle)
  field(:score)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SitemapDEPRECATED_Target do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SitemapDEPRECATED_Target.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SitemapDEPRECATED_Target do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end