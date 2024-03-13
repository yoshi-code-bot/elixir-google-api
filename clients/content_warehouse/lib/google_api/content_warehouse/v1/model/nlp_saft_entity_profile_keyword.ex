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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileKeyword do
  @moduledoc """
  Keywords and key phrases for entity.

  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - 
  *   `language` (*type:* `integer()`, *default:* `nil`) - 
  *   `score` (*type:* `float()`, *default:* `nil`) - Score associated with the keyword. For fine-grained types this is a probability.
  *   `term` (*type:* `String.t`, *default:* `nil`) - 
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil,
          :language => integer() | nil,
          :score => float() | nil,
          :term => String.t() | nil,
          :type => String.t() | nil
        }

  field(:count)
  field(:language)
  field(:score)
  field(:term)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileKeyword do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileKeyword.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileKeyword do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
