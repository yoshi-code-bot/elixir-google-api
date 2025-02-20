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

defmodule GoogleApi.Datastream.V1.Model.BigQueryDestinationConfig do
  @moduledoc """
  BigQuery destination configuration

  ## Attributes

  *   `appendOnly` (*type:* `GoogleApi.Datastream.V1.Model.AppendOnly.t`, *default:* `nil`) - Append only mode
  *   `blmtConfig` (*type:* `GoogleApi.Datastream.V1.Model.BlmtConfig.t`, *default:* `nil`) - Optional. Big Lake Managed Tables (BLMT) configuration.
  *   `dataFreshness` (*type:* `String.t`, *default:* `nil`) - The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  *   `merge` (*type:* `GoogleApi.Datastream.V1.Model.Merge.t`, *default:* `nil`) - The standard mode
  *   `singleTargetDataset` (*type:* `GoogleApi.Datastream.V1.Model.SingleTargetDataset.t`, *default:* `nil`) - Single destination dataset.
  *   `sourceHierarchyDatasets` (*type:* `GoogleApi.Datastream.V1.Model.SourceHierarchyDatasets.t`, *default:* `nil`) - Source hierarchy datasets.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appendOnly => GoogleApi.Datastream.V1.Model.AppendOnly.t() | nil,
          :blmtConfig => GoogleApi.Datastream.V1.Model.BlmtConfig.t() | nil,
          :dataFreshness => String.t() | nil,
          :merge => GoogleApi.Datastream.V1.Model.Merge.t() | nil,
          :singleTargetDataset => GoogleApi.Datastream.V1.Model.SingleTargetDataset.t() | nil,
          :sourceHierarchyDatasets =>
            GoogleApi.Datastream.V1.Model.SourceHierarchyDatasets.t() | nil
        }

  field(:appendOnly, as: GoogleApi.Datastream.V1.Model.AppendOnly)
  field(:blmtConfig, as: GoogleApi.Datastream.V1.Model.BlmtConfig)
  field(:dataFreshness)
  field(:merge, as: GoogleApi.Datastream.V1.Model.Merge)
  field(:singleTargetDataset, as: GoogleApi.Datastream.V1.Model.SingleTargetDataset)
  field(:sourceHierarchyDatasets, as: GoogleApi.Datastream.V1.Model.SourceHierarchyDatasets)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.BigQueryDestinationConfig do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.BigQueryDestinationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.BigQueryDestinationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
