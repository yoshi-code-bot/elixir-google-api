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

defmodule GoogleApi.TrafficDirector.V3.Model.StructMatcher do
  @moduledoc """
  StructMatcher provides a general interface to check if a given value is matched in google.protobuf.Struct. It uses ``path`` to retrieve the value from the struct and then check if it's matched to the specified value. For example, for the following Struct: .. code-block:: yaml fields: a: struct_value: fields: b: struct_value: fields: c: string_value: pro t: list_value: values: - string_value: m - string_value: n The following MetadataMatcher is matched as the path [a, b, c] will retrieve a string value "pro" from the Metadata which is matched to the specified prefix match. .. code-block:: yaml path: - key: a - key: b - key: c value: string_match: prefix: pr The following StructMatcher is matched as the code will match one of the string values in the list at the path [a, t]. .. code-block:: yaml path: - key: a - key: t value: list_match: one_of: string_match: exact: m An example use of StructMatcher is to match metadata in envoy.v*.core.Node.

  ## Attributes

  *   `path` (*type:* `list(GoogleApi.TrafficDirector.V3.Model.PathSegment.t)`, *default:* `nil`) - The path to retrieve the Value from the Struct.
  *   `value` (*type:* `GoogleApi.TrafficDirector.V3.Model.ValueMatcher.t`, *default:* `nil`) - The StructMatcher is matched if the value retrieved by path is matched to this value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :path => list(GoogleApi.TrafficDirector.V3.Model.PathSegment.t()) | nil,
          :value => GoogleApi.TrafficDirector.V3.Model.ValueMatcher.t() | nil
        }

  field(:path, as: GoogleApi.TrafficDirector.V3.Model.PathSegment, type: :list)
  field(:value, as: GoogleApi.TrafficDirector.V3.Model.ValueMatcher)
end

defimpl Poison.Decoder, for: GoogleApi.TrafficDirector.V3.Model.StructMatcher do
  def decode(value, options) do
    GoogleApi.TrafficDirector.V3.Model.StructMatcher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TrafficDirector.V3.Model.StructMatcher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end