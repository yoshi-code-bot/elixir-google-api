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

defmodule GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotationPiece do
  @moduledoc """


  ## Attributes

  *   `begin` (*type:* `integer()`, *default:* `nil`) - A piece of leading text is text within [begin, end). For example, a document is "ABCDEF". If we want to set leading text as 'CD', the value of begin is byte offset of 'C', the value of end is byte offset of 'E'. end == -1 means to the end of document.
  *   `beginText` (*type:* `String.t`, *default:* `nil`) - UTF8 text, for alignment when using reusableinfo. Those text are not available in docjoins.
  *   `end` (*type:* `integer()`, *default:* `nil`) - 
  *   `endText` (*type:* `String.t`, *default:* `nil`) - 
  *   `matchedPattern` (*type:* `String.t`, *default:* `nil`) - Matched dom path string for debugging.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :begin => integer() | nil,
          :beginText => String.t() | nil,
          :end => integer() | nil,
          :endText => String.t() | nil,
          :matchedPattern => String.t() | nil
        }

  field(:begin)
  field(:beginText)
  field(:end)
  field(:endText)
  field(:matchedPattern)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotationPiece do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotationPiece.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotationPiece do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
