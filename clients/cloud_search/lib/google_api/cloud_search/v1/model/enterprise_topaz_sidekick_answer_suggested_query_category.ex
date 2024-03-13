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

defmodule GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerSuggestedQueryCategory do
  @moduledoc """
  Contains a list of suggested queries for a single category.

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - The query list category.
  *   `isEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether this category is enabled.
  *   `query` (*type:* `list(String.t)`, *default:* `nil`) - List of suggested queries to show the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t() | nil,
          :isEnabled => boolean() | nil,
          :query => list(String.t()) | nil
        }

  field(:category)
  field(:isEnabled)
  field(:query, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerSuggestedQueryCategory do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerSuggestedQueryCategory.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerSuggestedQueryCategory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end