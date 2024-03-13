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

defmodule GoogleApi.ContentWarehouse.V1.Model.CompositeDocAdditionalChecksums do
  @moduledoc """
  Additional checksums of the document.

  ## Attributes

  *   `NoTransientChecksum96` (*type:* `String.t`, *default:* `nil`) - Same as ContentChecksum96 but without transient boilerplate.
  *   `SimHash` (*type:* `String.t`, *default:* `nil`) - Deprecated. Use simhash_v2 and simhash_v2_significance instead.
  *   `SimHashIsTrusted` (*type:* `boolean()`, *default:* `nil`) - 
  *   `simhashV2` (*type:* `String.t`, *default:* `nil`) - Simhash-v2 is generated by SimHashParseHandler, designed as a complete replacement of simhash-v1 (a.k.a. the original simhash above) from ApproxDupsParseHandler. Simhash-v2 uses a revised algorithm so that it is expected to work better in most cases than simhash-v1. They coexist in current transition period, then simhash-v1 will be retired.
  *   `simhashV2Significance` (*type:* `float()`, *default:* `nil`) - Simhash-v2-significance is used to describe the confidence about the corresponding simhash-v2 value. It is defined as the average absolute difference from zero of all internal state components when finalizing a simhash-v2 value in HashMultiSetDotCauchy. We used to compare the significance against some pre-defined threshold (default: 20) to get a boolean value "trusted_simhash_v2". However, it is possible that this field is missing while "simhash_v2" is present, in such case (1) Use "SimHashIsTrusted" instead if it is present, AND/OR (2) Assume "simhash_v2" is trusted if its value is non-zero.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :NoTransientChecksum96 => String.t() | nil,
          :SimHash => String.t() | nil,
          :SimHashIsTrusted => boolean() | nil,
          :simhashV2 => String.t() | nil,
          :simhashV2Significance => float() | nil
        }

  field(:NoTransientChecksum96)
  field(:SimHash)
  field(:SimHashIsTrusted)
  field(:simhashV2)
  field(:simhashV2Significance)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDocAdditionalChecksums do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CompositeDocAdditionalChecksums.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDocAdditionalChecksums do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
