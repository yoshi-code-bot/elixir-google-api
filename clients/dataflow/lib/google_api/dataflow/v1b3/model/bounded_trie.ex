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

defmodule GoogleApi.Dataflow.V1b3.Model.BoundedTrie do
  @moduledoc """
  The message type used for encoding metrics of type bounded trie.

  ## Attributes

  *   `bound` (*type:* `integer()`, *default:* `nil`) - The maximum number of elements to store before truncation.
  *   `root` (*type:* `GoogleApi.Dataflow.V1b3.Model.BoundedTrieNode.t`, *default:* `nil`) - A compact representation of all the elements in this trie.
  *   `singleton` (*type:* `list(String.t)`, *default:* `nil`) - A more efficient representation for metrics consisting of a single value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bound => integer() | nil,
          :root => GoogleApi.Dataflow.V1b3.Model.BoundedTrieNode.t() | nil,
          :singleton => list(String.t()) | nil
        }

  field(:bound)
  field(:root, as: GoogleApi.Dataflow.V1b3.Model.BoundedTrieNode)
  field(:singleton, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.BoundedTrie do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.BoundedTrie.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.BoundedTrie do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
