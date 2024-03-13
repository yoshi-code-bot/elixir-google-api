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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.SBOMReferenceOccurrence do
  @moduledoc """
  The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.

  ## Attributes

  *   `payload` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.SbomReferenceIntotoPayload.t`, *default:* `nil`) - The actual payload that contains the SBOM reference data.
  *   `payloadType` (*type:* `String.t`, *default:* `nil`) - The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  *   `signatures` (*type:* `list(GoogleApi.ContainerAnalysis.V1beta1.Model.EnvelopeSignature.t)`, *default:* `nil`) - The signatures over the payload.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payload =>
            GoogleApi.ContainerAnalysis.V1beta1.Model.SbomReferenceIntotoPayload.t() | nil,
          :payloadType => String.t() | nil,
          :signatures =>
            list(GoogleApi.ContainerAnalysis.V1beta1.Model.EnvelopeSignature.t()) | nil
        }

  field(:payload, as: GoogleApi.ContainerAnalysis.V1beta1.Model.SbomReferenceIntotoPayload)
  field(:payloadType)
  field(:signatures, as: GoogleApi.ContainerAnalysis.V1beta1.Model.EnvelopeSignature, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.SBOMReferenceOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.SBOMReferenceOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.SBOMReferenceOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end