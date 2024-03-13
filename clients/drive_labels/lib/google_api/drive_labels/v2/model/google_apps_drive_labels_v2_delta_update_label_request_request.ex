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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest do
  @moduledoc """
  A single kind of update to apply to a Label.

  ## Attributes

  *   `createField` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest.t`, *default:* `nil`) - Creates a new Field.
  *   `createSelectionChoice` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest.t`, *default:* `nil`) - Creates Choice within a Selection field.
  *   `deleteField` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest.t`, *default:* `nil`) - Deletes a Field from the label.
  *   `deleteSelectionChoice` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest.t`, *default:* `nil`) - Delete a Choice within a Selection Field.
  *   `disableField` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest.t`, *default:* `nil`) - Disables the Field.
  *   `disableSelectionChoice` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest.t`, *default:* `nil`) - Disable a Choice within a Selection Field.
  *   `enableField` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest.t`, *default:* `nil`) - Enables the Field.
  *   `enableSelectionChoice` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest.t`, *default:* `nil`) - Enable a Choice within a Selection Field.
  *   `updateField` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest.t`, *default:* `nil`) - Updates basic properties of a Field.
  *   `updateFieldType` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest.t`, *default:* `nil`) - Update Field type and/or type options.
  *   `updateLabel` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest.t`, *default:* `nil`) - Updates the Label properties.
  *   `updateSelectionChoiceProperties` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest.t`, *default:* `nil`) - Update a Choice properties within a Selection Field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createField =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest.t()
            | nil,
          :createSelectionChoice =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest.t()
            | nil,
          :deleteField =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest.t()
            | nil,
          :deleteSelectionChoice =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest.t()
            | nil,
          :disableField =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest.t()
            | nil,
          :disableSelectionChoice =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest.t()
            | nil,
          :enableField =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest.t()
            | nil,
          :enableSelectionChoice =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest.t()
            | nil,
          :updateField =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest.t()
            | nil,
          :updateFieldType =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest.t()
            | nil,
          :updateLabel =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest.t()
            | nil,
          :updateSelectionChoiceProperties =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest.t()
            | nil
        }

  field(:createField,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest
  )

  field(:createSelectionChoice,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest
  )

  field(:deleteField,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest
  )

  field(:deleteSelectionChoice,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest
  )

  field(:disableField,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest
  )

  field(:disableSelectionChoice,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest
  )

  field(:enableField,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest
  )

  field(:enableSelectionChoice,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest
  )

  field(:updateField,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest
  )

  field(:updateFieldType,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest
  )

  field(:updateLabel,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest
  )

  field(:updateSelectionChoiceProperties,
    as:
      GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end