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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Dataset do
  @moduledoc """
  A collection of DataItems and Annotations on them.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Dataset was created.
  *   `dataItemCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of DataItems in this Dataset. Only apply for non-structured Dataset.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the Dataset.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The user-defined name of the Dataset. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize your Datasets. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Dataset (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable. Following system labels exist for each Dataset: * "aiplatform.googleapis.com/dataset_metadata_schema": output only, its value is the metadata_schema's title.
  *   `metadata` (*type:* `any()`, *default:* `nil`) - Required. Additional information about the Dataset.
  *   `metadataArtifact` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Artifact that was created in MetadataStore when creating the Dataset. The Artifact resource name pattern is `projects/{project}/locations/{location}/metadataStores/{metadata_store}/artifacts/{artifact}`.
  *   `metadataSchemaUri` (*type:* `String.t`, *default:* `nil`) - Required. Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Dataset.
  *   `savedQueries` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SavedQuery.t)`, *default:* `nil`) - All SavedQueries belong to the Dataset will be returned in List/Get Dataset response. The annotation_specs field will not be populated except for UI cases which will only use annotation_spec_count. In CreateDataset request, a SavedQuery is created together if this field is set, up to one SavedQuery can be set in CreateDatasetRequest. The SavedQuery should not contain any AnnotationSpec.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Dataset was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :dataItemCount => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :metadata => any() | nil,
          :metadataArtifact => String.t() | nil,
          :metadataSchemaUri => String.t() | nil,
          :name => String.t() | nil,
          :savedQueries =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SavedQuery.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:dataItemCount)
  field(:description)
  field(:displayName)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:etag)
  field(:labels, type: :map)
  field(:metadata)
  field(:metadataArtifact)
  field(:metadataSchemaUri)
  field(:name)

  field(:savedQueries,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SavedQuery,
    type: :list
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Dataset do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Dataset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Dataset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end