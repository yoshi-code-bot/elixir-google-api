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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Discovered do
  @moduledoc """
  Provides information about the scan status of a discovered resource.

  ## Attributes

  *   `analysisCompleted` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.AnalysisCompleted.t`, *default:* `nil`) - The list of analysis that were completed for a resource.
  *   `analysisError` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Status.t)`, *default:* `nil`) - Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.
  *   `analysisStatus` (*type:* `String.t`, *default:* `nil`) - The status of discovery for the resource.
  *   `analysisStatusError` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Status.t`, *default:* `nil`) - When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage output only and populated by the API.
  *   `archiveTime` (*type:* `DateTime.t`, *default:* `nil`) - The time occurrences related to this discovery occurrence were archived.
  *   `continuousAnalysis` (*type:* `String.t`, *default:* `nil`) - Whether the resource is continuously analyzed.
  *   `cpe` (*type:* `String.t`, *default:* `nil`) - The CPE of the resource being scanned.
  *   `lastScanTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time this resource was scanned.
  *   `operation` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Operation.t`, *default:* `nil`) - Output only. An operation that indicates the status of the current scan. This field is deprecated, do not use.
  *   `sbomStatus` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.SBOMStatus.t`, *default:* `nil`) - Output only. The status of an SBOM generation.
  *   `vulnerabilityAttestation` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityAttestation.t`, *default:* `nil`) - Output only. The status of a vulnerability attestation generation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analysisCompleted =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.AnalysisCompleted.t() | nil,
          :analysisError => list(GoogleApi.ContainerAnalysis.V1alpha1.Model.Status.t()) | nil,
          :analysisStatus => String.t() | nil,
          :analysisStatusError => GoogleApi.ContainerAnalysis.V1alpha1.Model.Status.t() | nil,
          :archiveTime => DateTime.t() | nil,
          :continuousAnalysis => String.t() | nil,
          :cpe => String.t() | nil,
          :lastScanTime => DateTime.t() | nil,
          :operation => GoogleApi.ContainerAnalysis.V1alpha1.Model.Operation.t() | nil,
          :sbomStatus => GoogleApi.ContainerAnalysis.V1alpha1.Model.SBOMStatus.t() | nil,
          :vulnerabilityAttestation =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityAttestation.t() | nil
        }

  field(:analysisCompleted, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.AnalysisCompleted)
  field(:analysisError, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Status, type: :list)
  field(:analysisStatus)
  field(:analysisStatusError, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Status)
  field(:archiveTime, as: DateTime)
  field(:continuousAnalysis)
  field(:cpe)
  field(:lastScanTime, as: DateTime)
  field(:operation, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Operation)
  field(:sbomStatus, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.SBOMStatus)

  field(:vulnerabilityAttestation,
    as: GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityAttestation
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Discovered do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Discovered.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Discovered do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
