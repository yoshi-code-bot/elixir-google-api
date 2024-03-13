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

defmodule GoogleApi.ContentWarehouse.V1.Model.PtokenPToken do
  @moduledoc """
  PToken expresses policy-relevant properties of the data objects being processed and stored in Google's production systems. See go/ptoken to learn more. PTokens are intentionally opaque: go/ptokens-are-opaque. The following should be considered implementation details. Next ID: 9 LINT.IfChange INTERNAL: If both the Scalar and the Compound extensions are populated, we use the Compound and discard the Scalar. In principle, this should never happen.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.PtokenPToken do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.PtokenPToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.PtokenPToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end