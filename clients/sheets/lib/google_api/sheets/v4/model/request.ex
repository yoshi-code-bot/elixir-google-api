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

defmodule GoogleApi.Sheets.V4.Model.Request do
  @moduledoc """
  A single kind of update to apply to a spreadsheet.

  ## Attributes

  *   `appendCells` (*type:* `GoogleApi.Sheets.V4.Model.AppendCellsRequest.t`, *default:* `nil`) - Appends cells after the last row with data in a sheet.
  *   `autoFill` (*type:* `GoogleApi.Sheets.V4.Model.AutoFillRequest.t`, *default:* `nil`) - Automatically fills in more data based on existing data.
  *   `trimWhitespace` (*type:* `GoogleApi.Sheets.V4.Model.TrimWhitespaceRequest.t`, *default:* `nil`) - Trims cells of whitespace (such as spaces, tabs, or new lines).
  *   `moveDimension` (*type:* `GoogleApi.Sheets.V4.Model.MoveDimensionRequest.t`, *default:* `nil`) - Moves rows or columns to another location in a sheet.
  *   `insertRange` (*type:* `GoogleApi.Sheets.V4.Model.InsertRangeRequest.t`, *default:* `nil`) - Inserts new cells in a sheet, shifting the existing cells.
  *   `deleteDeveloperMetadata` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDeveloperMetadataRequest.t`, *default:* `nil`) - Deletes developer metadata
  *   `addSheet` (*type:* `GoogleApi.Sheets.V4.Model.AddSheetRequest.t`, *default:* `nil`) - Adds a sheet.
  *   `addConditionalFormatRule` (*type:* `GoogleApi.Sheets.V4.Model.AddConditionalFormatRuleRequest.t`, *default:* `nil`) - Adds a new conditional format rule.
  *   `unmergeCells` (*type:* `GoogleApi.Sheets.V4.Model.UnmergeCellsRequest.t`, *default:* `nil`) - Unmerges merged cells.
  *   `addChart` (*type:* `GoogleApi.Sheets.V4.Model.AddChartRequest.t`, *default:* `nil`) - Adds a chart.
  *   `deleteDuplicates` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDuplicatesRequest.t`, *default:* `nil`) - Removes rows containing duplicate values in specified columns of a cell range.
  *   `randomizeRange` (*type:* `GoogleApi.Sheets.V4.Model.RandomizeRangeRequest.t`, *default:* `nil`) - Randomizes the order of the rows in a range.
  *   `deleteSheet` (*type:* `GoogleApi.Sheets.V4.Model.DeleteSheetRequest.t`, *default:* `nil`) - Deletes a sheet.
  *   `repeatCell` (*type:* `GoogleApi.Sheets.V4.Model.RepeatCellRequest.t`, *default:* `nil`) - Repeats a single cell across a range.
  *   `textToColumns` (*type:* `GoogleApi.Sheets.V4.Model.TextToColumnsRequest.t`, *default:* `nil`) - Converts a column of text into many columns of text.
  *   `updateDataSource` (*type:* `GoogleApi.Sheets.V4.Model.UpdateDataSourceRequest.t`, *default:* `nil`) - Updates a data source.
  *   `updateChartSpec` (*type:* `GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest.t`, *default:* `nil`) - Updates a chart's specifications.
  *   `insertDimension` (*type:* `GoogleApi.Sheets.V4.Model.InsertDimensionRequest.t`, *default:* `nil`) - Inserts new rows or columns in a sheet.
  *   `deleteDimension` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDimensionRequest.t`, *default:* `nil`) - Deletes rows or columns in a sheet.
  *   `updateBanding` (*type:* `GoogleApi.Sheets.V4.Model.UpdateBandingRequest.t`, *default:* `nil`) - Updates a banded range
  *   `updateSpreadsheetProperties` (*type:* `GoogleApi.Sheets.V4.Model.UpdateSpreadsheetPropertiesRequest.t`, *default:* `nil`) - Updates the spreadsheet's properties.
  *   `findReplace` (*type:* `GoogleApi.Sheets.V4.Model.FindReplaceRequest.t`, *default:* `nil`) - Finds and replaces occurrences of some text with other text.
  *   `updateNamedRange` (*type:* `GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest.t`, *default:* `nil`) - Updates a named range.
  *   `setBasicFilter` (*type:* `GoogleApi.Sheets.V4.Model.SetBasicFilterRequest.t`, *default:* `nil`) - Sets the basic filter on a sheet.
  *   `autoResizeDimensions` (*type:* `GoogleApi.Sheets.V4.Model.AutoResizeDimensionsRequest.t`, *default:* `nil`) - Automatically resizes one or more dimensions based on the contents of the cells in that dimension.
  *   `deleteConditionalFormatRule` (*type:* `GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest.t`, *default:* `nil`) - Deletes an existing conditional format rule.
  *   `updateSheetProperties` (*type:* `GoogleApi.Sheets.V4.Model.UpdateSheetPropertiesRequest.t`, *default:* `nil`) - Updates a sheet's properties.
  *   `pasteData` (*type:* `GoogleApi.Sheets.V4.Model.PasteDataRequest.t`, *default:* `nil`) - Pastes data (HTML or delimited) into a sheet.
  *   `updateEmbeddedObjectBorder` (*type:* `GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectBorderRequest.t`, *default:* `nil`) - Updates an embedded object's border.
  *   `sortRange` (*type:* `GoogleApi.Sheets.V4.Model.SortRangeRequest.t`, *default:* `nil`) - Sorts data in a range.
  *   `duplicateFilterView` (*type:* `GoogleApi.Sheets.V4.Model.DuplicateFilterViewRequest.t`, *default:* `nil`) - Duplicates a filter view.
  *   `cutPaste` (*type:* `GoogleApi.Sheets.V4.Model.CutPasteRequest.t`, *default:* `nil`) - Cuts data from one area and pastes it to another.
  *   `deleteBanding` (*type:* `GoogleApi.Sheets.V4.Model.DeleteBandingRequest.t`, *default:* `nil`) - Removes a banded range
  *   `deleteEmbeddedObject` (*type:* `GoogleApi.Sheets.V4.Model.DeleteEmbeddedObjectRequest.t`, *default:* `nil`) - Deletes an embedded object (e.g, chart, image) in a sheet.
  *   `refreshDataSource` (*type:* `GoogleApi.Sheets.V4.Model.RefreshDataSourceRequest.t`, *default:* `nil`) - Refreshes one or multiple data sources and associated dbobjects.
  *   `clearBasicFilter` (*type:* `GoogleApi.Sheets.V4.Model.ClearBasicFilterRequest.t`, *default:* `nil`) - Clears the basic filter on a sheet.
  *   `copyPaste` (*type:* `GoogleApi.Sheets.V4.Model.CopyPasteRequest.t`, *default:* `nil`) - Copies data from one area and pastes it to another.
  *   `updateFilterView` (*type:* `GoogleApi.Sheets.V4.Model.UpdateFilterViewRequest.t`, *default:* `nil`) - Updates the properties of a filter view.
  *   `updateDimensionGroup` (*type:* `GoogleApi.Sheets.V4.Model.UpdateDimensionGroupRequest.t`, *default:* `nil`) - Updates the state of the specified group.
  *   `addSlicer` (*type:* `GoogleApi.Sheets.V4.Model.AddSlicerRequest.t`, *default:* `nil`) - Adds a slicer.
  *   `deleteFilterView` (*type:* `GoogleApi.Sheets.V4.Model.DeleteFilterViewRequest.t`, *default:* `nil`) - Deletes a filter view from a sheet.
  *   `setDataValidation` (*type:* `GoogleApi.Sheets.V4.Model.SetDataValidationRequest.t`, *default:* `nil`) - Sets data validation for one or more cells.
  *   `updateEmbeddedObjectPosition` (*type:* `GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest.t`, *default:* `nil`) - Updates an embedded object's (e.g. chart, image) position.
  *   `updateConditionalFormatRule` (*type:* `GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleRequest.t`, *default:* `nil`) - Updates an existing conditional format rule.
  *   `deleteRange` (*type:* `GoogleApi.Sheets.V4.Model.DeleteRangeRequest.t`, *default:* `nil`) - Deletes a range of cells from a sheet, shifting the remaining cells.
  *   `deleteDimensionGroup` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDimensionGroupRequest.t`, *default:* `nil`) - Deletes a group over the specified range.
  *   `appendDimension` (*type:* `GoogleApi.Sheets.V4.Model.AppendDimensionRequest.t`, *default:* `nil`) - Appends dimensions to the end of a sheet.
  *   `updateSlicerSpec` (*type:* `GoogleApi.Sheets.V4.Model.UpdateSlicerSpecRequest.t`, *default:* `nil`) - Updates a slicer's specifications.
  *   `deleteDataSource` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDataSourceRequest.t`, *default:* `nil`) - Deletes a data source.
  *   `createDeveloperMetadata` (*type:* `GoogleApi.Sheets.V4.Model.CreateDeveloperMetadataRequest.t`, *default:* `nil`) - Creates new developer metadata
  *   `addFilterView` (*type:* `GoogleApi.Sheets.V4.Model.AddFilterViewRequest.t`, *default:* `nil`) - Adds a filter view.
  *   `addBanding` (*type:* `GoogleApi.Sheets.V4.Model.AddBandingRequest.t`, *default:* `nil`) - Adds a new banded range
  *   `deleteProtectedRange` (*type:* `GoogleApi.Sheets.V4.Model.DeleteProtectedRangeRequest.t`, *default:* `nil`) - Deletes a protected range.
  *   `updateDimensionProperties` (*type:* `GoogleApi.Sheets.V4.Model.UpdateDimensionPropertiesRequest.t`, *default:* `nil`) - Updates dimensions' properties.
  *   `updateProtectedRange` (*type:* `GoogleApi.Sheets.V4.Model.UpdateProtectedRangeRequest.t`, *default:* `nil`) - Updates a protected range.
  *   `addDimensionGroup` (*type:* `GoogleApi.Sheets.V4.Model.AddDimensionGroupRequest.t`, *default:* `nil`) - Creates a group over the specified range.
  *   `updateCells` (*type:* `GoogleApi.Sheets.V4.Model.UpdateCellsRequest.t`, *default:* `nil`) - Updates many cells at once.
  *   `addProtectedRange` (*type:* `GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest.t`, *default:* `nil`) - Adds a protected range.
  *   `addDataSource` (*type:* `GoogleApi.Sheets.V4.Model.AddDataSourceRequest.t`, *default:* `nil`) - Adds a data source.
  *   `addNamedRange` (*type:* `GoogleApi.Sheets.V4.Model.AddNamedRangeRequest.t`, *default:* `nil`) - Adds a named range.
  *   `updateDeveloperMetadata` (*type:* `GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataRequest.t`, *default:* `nil`) - Updates an existing developer metadata entry
  *   `deleteNamedRange` (*type:* `GoogleApi.Sheets.V4.Model.DeleteNamedRangeRequest.t`, *default:* `nil`) - Deletes a named range.
  *   `duplicateSheet` (*type:* `GoogleApi.Sheets.V4.Model.DuplicateSheetRequest.t`, *default:* `nil`) - Duplicates a sheet.
  *   `updateBorders` (*type:* `GoogleApi.Sheets.V4.Model.UpdateBordersRequest.t`, *default:* `nil`) - Updates the borders in a range of cells.
  *   `mergeCells` (*type:* `GoogleApi.Sheets.V4.Model.MergeCellsRequest.t`, *default:* `nil`) - Merges cells together.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appendCells => GoogleApi.Sheets.V4.Model.AppendCellsRequest.t() | nil,
          :autoFill => GoogleApi.Sheets.V4.Model.AutoFillRequest.t() | nil,
          :trimWhitespace => GoogleApi.Sheets.V4.Model.TrimWhitespaceRequest.t() | nil,
          :moveDimension => GoogleApi.Sheets.V4.Model.MoveDimensionRequest.t() | nil,
          :insertRange => GoogleApi.Sheets.V4.Model.InsertRangeRequest.t() | nil,
          :deleteDeveloperMetadata =>
            GoogleApi.Sheets.V4.Model.DeleteDeveloperMetadataRequest.t() | nil,
          :addSheet => GoogleApi.Sheets.V4.Model.AddSheetRequest.t() | nil,
          :addConditionalFormatRule =>
            GoogleApi.Sheets.V4.Model.AddConditionalFormatRuleRequest.t() | nil,
          :unmergeCells => GoogleApi.Sheets.V4.Model.UnmergeCellsRequest.t() | nil,
          :addChart => GoogleApi.Sheets.V4.Model.AddChartRequest.t() | nil,
          :deleteDuplicates => GoogleApi.Sheets.V4.Model.DeleteDuplicatesRequest.t() | nil,
          :randomizeRange => GoogleApi.Sheets.V4.Model.RandomizeRangeRequest.t() | nil,
          :deleteSheet => GoogleApi.Sheets.V4.Model.DeleteSheetRequest.t() | nil,
          :repeatCell => GoogleApi.Sheets.V4.Model.RepeatCellRequest.t() | nil,
          :textToColumns => GoogleApi.Sheets.V4.Model.TextToColumnsRequest.t() | nil,
          :updateDataSource => GoogleApi.Sheets.V4.Model.UpdateDataSourceRequest.t() | nil,
          :updateChartSpec => GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest.t() | nil,
          :insertDimension => GoogleApi.Sheets.V4.Model.InsertDimensionRequest.t() | nil,
          :deleteDimension => GoogleApi.Sheets.V4.Model.DeleteDimensionRequest.t() | nil,
          :updateBanding => GoogleApi.Sheets.V4.Model.UpdateBandingRequest.t() | nil,
          :updateSpreadsheetProperties =>
            GoogleApi.Sheets.V4.Model.UpdateSpreadsheetPropertiesRequest.t() | nil,
          :findReplace => GoogleApi.Sheets.V4.Model.FindReplaceRequest.t() | nil,
          :updateNamedRange => GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest.t() | nil,
          :setBasicFilter => GoogleApi.Sheets.V4.Model.SetBasicFilterRequest.t() | nil,
          :autoResizeDimensions =>
            GoogleApi.Sheets.V4.Model.AutoResizeDimensionsRequest.t() | nil,
          :deleteConditionalFormatRule =>
            GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest.t() | nil,
          :updateSheetProperties =>
            GoogleApi.Sheets.V4.Model.UpdateSheetPropertiesRequest.t() | nil,
          :pasteData => GoogleApi.Sheets.V4.Model.PasteDataRequest.t() | nil,
          :updateEmbeddedObjectBorder =>
            GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectBorderRequest.t() | nil,
          :sortRange => GoogleApi.Sheets.V4.Model.SortRangeRequest.t() | nil,
          :duplicateFilterView => GoogleApi.Sheets.V4.Model.DuplicateFilterViewRequest.t() | nil,
          :cutPaste => GoogleApi.Sheets.V4.Model.CutPasteRequest.t() | nil,
          :deleteBanding => GoogleApi.Sheets.V4.Model.DeleteBandingRequest.t() | nil,
          :deleteEmbeddedObject =>
            GoogleApi.Sheets.V4.Model.DeleteEmbeddedObjectRequest.t() | nil,
          :refreshDataSource => GoogleApi.Sheets.V4.Model.RefreshDataSourceRequest.t() | nil,
          :clearBasicFilter => GoogleApi.Sheets.V4.Model.ClearBasicFilterRequest.t() | nil,
          :copyPaste => GoogleApi.Sheets.V4.Model.CopyPasteRequest.t() | nil,
          :updateFilterView => GoogleApi.Sheets.V4.Model.UpdateFilterViewRequest.t() | nil,
          :updateDimensionGroup =>
            GoogleApi.Sheets.V4.Model.UpdateDimensionGroupRequest.t() | nil,
          :addSlicer => GoogleApi.Sheets.V4.Model.AddSlicerRequest.t() | nil,
          :deleteFilterView => GoogleApi.Sheets.V4.Model.DeleteFilterViewRequest.t() | nil,
          :setDataValidation => GoogleApi.Sheets.V4.Model.SetDataValidationRequest.t() | nil,
          :updateEmbeddedObjectPosition =>
            GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest.t() | nil,
          :updateConditionalFormatRule =>
            GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleRequest.t() | nil,
          :deleteRange => GoogleApi.Sheets.V4.Model.DeleteRangeRequest.t() | nil,
          :deleteDimensionGroup =>
            GoogleApi.Sheets.V4.Model.DeleteDimensionGroupRequest.t() | nil,
          :appendDimension => GoogleApi.Sheets.V4.Model.AppendDimensionRequest.t() | nil,
          :updateSlicerSpec => GoogleApi.Sheets.V4.Model.UpdateSlicerSpecRequest.t() | nil,
          :deleteDataSource => GoogleApi.Sheets.V4.Model.DeleteDataSourceRequest.t() | nil,
          :createDeveloperMetadata =>
            GoogleApi.Sheets.V4.Model.CreateDeveloperMetadataRequest.t() | nil,
          :addFilterView => GoogleApi.Sheets.V4.Model.AddFilterViewRequest.t() | nil,
          :addBanding => GoogleApi.Sheets.V4.Model.AddBandingRequest.t() | nil,
          :deleteProtectedRange =>
            GoogleApi.Sheets.V4.Model.DeleteProtectedRangeRequest.t() | nil,
          :updateDimensionProperties =>
            GoogleApi.Sheets.V4.Model.UpdateDimensionPropertiesRequest.t() | nil,
          :updateProtectedRange =>
            GoogleApi.Sheets.V4.Model.UpdateProtectedRangeRequest.t() | nil,
          :addDimensionGroup => GoogleApi.Sheets.V4.Model.AddDimensionGroupRequest.t() | nil,
          :updateCells => GoogleApi.Sheets.V4.Model.UpdateCellsRequest.t() | nil,
          :addProtectedRange => GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest.t() | nil,
          :addDataSource => GoogleApi.Sheets.V4.Model.AddDataSourceRequest.t() | nil,
          :addNamedRange => GoogleApi.Sheets.V4.Model.AddNamedRangeRequest.t() | nil,
          :updateDeveloperMetadata =>
            GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataRequest.t() | nil,
          :deleteNamedRange => GoogleApi.Sheets.V4.Model.DeleteNamedRangeRequest.t() | nil,
          :duplicateSheet => GoogleApi.Sheets.V4.Model.DuplicateSheetRequest.t() | nil,
          :updateBorders => GoogleApi.Sheets.V4.Model.UpdateBordersRequest.t() | nil,
          :mergeCells => GoogleApi.Sheets.V4.Model.MergeCellsRequest.t() | nil
        }

  field(:appendCells, as: GoogleApi.Sheets.V4.Model.AppendCellsRequest)
  field(:autoFill, as: GoogleApi.Sheets.V4.Model.AutoFillRequest)
  field(:trimWhitespace, as: GoogleApi.Sheets.V4.Model.TrimWhitespaceRequest)
  field(:moveDimension, as: GoogleApi.Sheets.V4.Model.MoveDimensionRequest)
  field(:insertRange, as: GoogleApi.Sheets.V4.Model.InsertRangeRequest)
  field(:deleteDeveloperMetadata, as: GoogleApi.Sheets.V4.Model.DeleteDeveloperMetadataRequest)
  field(:addSheet, as: GoogleApi.Sheets.V4.Model.AddSheetRequest)
  field(:addConditionalFormatRule, as: GoogleApi.Sheets.V4.Model.AddConditionalFormatRuleRequest)
  field(:unmergeCells, as: GoogleApi.Sheets.V4.Model.UnmergeCellsRequest)
  field(:addChart, as: GoogleApi.Sheets.V4.Model.AddChartRequest)
  field(:deleteDuplicates, as: GoogleApi.Sheets.V4.Model.DeleteDuplicatesRequest)
  field(:randomizeRange, as: GoogleApi.Sheets.V4.Model.RandomizeRangeRequest)
  field(:deleteSheet, as: GoogleApi.Sheets.V4.Model.DeleteSheetRequest)
  field(:repeatCell, as: GoogleApi.Sheets.V4.Model.RepeatCellRequest)
  field(:textToColumns, as: GoogleApi.Sheets.V4.Model.TextToColumnsRequest)
  field(:updateDataSource, as: GoogleApi.Sheets.V4.Model.UpdateDataSourceRequest)
  field(:updateChartSpec, as: GoogleApi.Sheets.V4.Model.UpdateChartSpecRequest)
  field(:insertDimension, as: GoogleApi.Sheets.V4.Model.InsertDimensionRequest)
  field(:deleteDimension, as: GoogleApi.Sheets.V4.Model.DeleteDimensionRequest)
  field(:updateBanding, as: GoogleApi.Sheets.V4.Model.UpdateBandingRequest)

  field(:updateSpreadsheetProperties,
    as: GoogleApi.Sheets.V4.Model.UpdateSpreadsheetPropertiesRequest
  )

  field(:findReplace, as: GoogleApi.Sheets.V4.Model.FindReplaceRequest)
  field(:updateNamedRange, as: GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest)
  field(:setBasicFilter, as: GoogleApi.Sheets.V4.Model.SetBasicFilterRequest)
  field(:autoResizeDimensions, as: GoogleApi.Sheets.V4.Model.AutoResizeDimensionsRequest)

  field(:deleteConditionalFormatRule,
    as: GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest
  )

  field(:updateSheetProperties, as: GoogleApi.Sheets.V4.Model.UpdateSheetPropertiesRequest)
  field(:pasteData, as: GoogleApi.Sheets.V4.Model.PasteDataRequest)

  field(:updateEmbeddedObjectBorder,
    as: GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectBorderRequest
  )

  field(:sortRange, as: GoogleApi.Sheets.V4.Model.SortRangeRequest)
  field(:duplicateFilterView, as: GoogleApi.Sheets.V4.Model.DuplicateFilterViewRequest)
  field(:cutPaste, as: GoogleApi.Sheets.V4.Model.CutPasteRequest)
  field(:deleteBanding, as: GoogleApi.Sheets.V4.Model.DeleteBandingRequest)
  field(:deleteEmbeddedObject, as: GoogleApi.Sheets.V4.Model.DeleteEmbeddedObjectRequest)
  field(:refreshDataSource, as: GoogleApi.Sheets.V4.Model.RefreshDataSourceRequest)
  field(:clearBasicFilter, as: GoogleApi.Sheets.V4.Model.ClearBasicFilterRequest)
  field(:copyPaste, as: GoogleApi.Sheets.V4.Model.CopyPasteRequest)
  field(:updateFilterView, as: GoogleApi.Sheets.V4.Model.UpdateFilterViewRequest)
  field(:updateDimensionGroup, as: GoogleApi.Sheets.V4.Model.UpdateDimensionGroupRequest)
  field(:addSlicer, as: GoogleApi.Sheets.V4.Model.AddSlicerRequest)
  field(:deleteFilterView, as: GoogleApi.Sheets.V4.Model.DeleteFilterViewRequest)
  field(:setDataValidation, as: GoogleApi.Sheets.V4.Model.SetDataValidationRequest)

  field(:updateEmbeddedObjectPosition,
    as: GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest
  )

  field(:updateConditionalFormatRule,
    as: GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleRequest
  )

  field(:deleteRange, as: GoogleApi.Sheets.V4.Model.DeleteRangeRequest)
  field(:deleteDimensionGroup, as: GoogleApi.Sheets.V4.Model.DeleteDimensionGroupRequest)
  field(:appendDimension, as: GoogleApi.Sheets.V4.Model.AppendDimensionRequest)
  field(:updateSlicerSpec, as: GoogleApi.Sheets.V4.Model.UpdateSlicerSpecRequest)
  field(:deleteDataSource, as: GoogleApi.Sheets.V4.Model.DeleteDataSourceRequest)
  field(:createDeveloperMetadata, as: GoogleApi.Sheets.V4.Model.CreateDeveloperMetadataRequest)
  field(:addFilterView, as: GoogleApi.Sheets.V4.Model.AddFilterViewRequest)
  field(:addBanding, as: GoogleApi.Sheets.V4.Model.AddBandingRequest)
  field(:deleteProtectedRange, as: GoogleApi.Sheets.V4.Model.DeleteProtectedRangeRequest)

  field(:updateDimensionProperties, as: GoogleApi.Sheets.V4.Model.UpdateDimensionPropertiesRequest)

  field(:updateProtectedRange, as: GoogleApi.Sheets.V4.Model.UpdateProtectedRangeRequest)
  field(:addDimensionGroup, as: GoogleApi.Sheets.V4.Model.AddDimensionGroupRequest)
  field(:updateCells, as: GoogleApi.Sheets.V4.Model.UpdateCellsRequest)
  field(:addProtectedRange, as: GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest)
  field(:addDataSource, as: GoogleApi.Sheets.V4.Model.AddDataSourceRequest)
  field(:addNamedRange, as: GoogleApi.Sheets.V4.Model.AddNamedRangeRequest)
  field(:updateDeveloperMetadata, as: GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataRequest)
  field(:deleteNamedRange, as: GoogleApi.Sheets.V4.Model.DeleteNamedRangeRequest)
  field(:duplicateSheet, as: GoogleApi.Sheets.V4.Model.DuplicateSheetRequest)
  field(:updateBorders, as: GoogleApi.Sheets.V4.Model.UpdateBordersRequest)
  field(:mergeCells, as: GoogleApi.Sheets.V4.Model.MergeCellsRequest)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Request do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.Request.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.Request do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
