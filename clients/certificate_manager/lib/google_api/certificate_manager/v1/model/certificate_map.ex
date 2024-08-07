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

defmodule GoogleApi.CertificateManager.V1.Model.CertificateMap do
  @moduledoc """
  Defines a collection of certificate configurations.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of a Certificate Map.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. One or more paragraphs of text description of a certificate map.
  *   `gclbTargets` (*type:* `list(GoogleApi.CertificateManager.V1.Model.GclbTarget.t)`, *default:* `nil`) - Output only. A list of GCLB targets that use this Certificate Map. A Target Proxy is only present on this list if it's attached to a Forwarding Rule.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Set of labels associated with a Certificate Map.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The update timestamp of a Certificate Map.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :gclbTargets => list(GoogleApi.CertificateManager.V1.Model.GclbTarget.t()) | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:gclbTargets, as: GoogleApi.CertificateManager.V1.Model.GclbTarget, type: :list)
  field(:labels, type: :map)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CertificateManager.V1.Model.CertificateMap do
  def decode(value, options) do
    GoogleApi.CertificateManager.V1.Model.CertificateMap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CertificateManager.V1.Model.CertificateMap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
