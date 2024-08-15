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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence do
  @moduledoc """
  How often existing tables should have their profiles refreshed. New tables are scanned as quickly as possible depending on system capacity.

  ## Attributes

  *   `inspectTemplateModifiedCadence` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence.t`, *default:* `nil`) - Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  *   `refreshFrequency` (*type:* `String.t`, *default:* `nil`) - Data changes (non-schema changes) in Cloud SQL tables can't trigger reprofiling. If you set this field, profiles are refreshed at this frequency regardless of whether the underlying tables have changed. Defaults to never.
  *   `schemaModifiedCadence` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SchemaModifiedCadence.t`, *default:* `nil`) - When to reprofile if the schema has changed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inspectTemplateModifiedCadence =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence.t()
            | nil,
          :refreshFrequency => String.t() | nil,
          :schemaModifiedCadence =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SchemaModifiedCadence.t() | nil
        }

  field(:inspectTemplateModifiedCadence,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
  )

  field(:refreshFrequency)

  field(:schemaModifiedCadence, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SchemaModifiedCadence)
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
