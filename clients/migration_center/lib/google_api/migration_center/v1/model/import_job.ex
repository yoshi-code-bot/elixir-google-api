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

defmodule GoogleApi.MigrationCenter.V1.Model.ImportJob do
  @moduledoc """
  A resource that represents the background job that imports asset frames.

  ## Attributes

  *   `assetSource` (*type:* `String.t`, *default:* `nil`) - Required. Reference to a source.
  *   `completeTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the import job was completed.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the import job was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. User-friendly display name. Maximum length is 256 characters.
  *   `executionReport` (*type:* `GoogleApi.MigrationCenter.V1.Model.ExecutionReport.t`, *default:* `nil`) - Output only. The report with the results of running the import job.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels as key value pairs.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The full name of the import job.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the import job.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the import job was last updated.
  *   `validationReport` (*type:* `GoogleApi.MigrationCenter.V1.Model.ValidationReport.t`, *default:* `nil`) - Output only. The report with the validation results of the import job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetSource => String.t() | nil,
          :completeTime => DateTime.t() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :executionReport => GoogleApi.MigrationCenter.V1.Model.ExecutionReport.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :validationReport => GoogleApi.MigrationCenter.V1.Model.ValidationReport.t() | nil
        }

  field(:assetSource)
  field(:completeTime, as: DateTime)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:executionReport, as: GoogleApi.MigrationCenter.V1.Model.ExecutionReport)
  field(:labels, type: :map)
  field(:name)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:validationReport, as: GoogleApi.MigrationCenter.V1.Model.ValidationReport)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.ImportJob do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.ImportJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.ImportJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end