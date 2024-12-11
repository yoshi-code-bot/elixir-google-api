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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ImportItem do
  @moduledoc """
  An object that describes the values that you want to set for an entry and its attached aspects when you import metadata. Used when you run a metadata import job. See CreateMetadataJob.You provide a collection of import items in a metadata import file. For more information about how to create a metadata import file, see Metadata import file (https://cloud.google.com/dataplex/docs/import-metadata#metadata-import-file).

  ## Attributes

  *   `aspectKeys` (*type:* `list(String.t)`, *default:* `nil`) - The aspects to modify. Supports the following syntaxes: {aspect_type_reference}: matches aspects that belong to the specified aspect type and are attached directly to the entry. {aspect_type_reference}@{path}: matches aspects that belong to the specified aspect type and path. @* : matches aspects of the given type for all paths. *@path : matches aspects of all types on the given path. Replace {aspect_type_reference} with a reference to the aspect type, in the format {project_id_or_number}.{location_id}.{aspect_type_id}.If you leave this field empty, it is treated as specifying exactly those aspects that are present within the specified entry.In FULL entry sync mode, Dataplex implicitly adds the keys for all of the required aspects of an entry.
  *   `entry` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Entry.t`, *default:* `nil`) - Information about an entry and its attached aspects.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - The fields to update, in paths that are relative to the Entry resource. Separate each field with a comma.In FULL entry sync mode, Dataplex includes the paths of all of the fields for an entry that can be modified, including aspects. This means that Dataplex replaces the existing entry with the entry in the metadata import file. All modifiable fields are updated, regardless of the fields that are listed in the update mask, and regardless of whether a field is present in the entry object.The update_mask field is ignored when an entry is created or re-created.Dataplex also determines which entries and aspects to modify by comparing the values and timestamps that you provide in the metadata import file with the values and timestamps that exist in your project. For more information, see Comparison logic (https://cloud.google.com/dataplex/docs/import-metadata#data-modification-logic).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectKeys => list(String.t()) | nil,
          :entry => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Entry.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:aspectKeys, type: :list)
  field(:entry, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Entry)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ImportItem do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ImportItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ImportItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
