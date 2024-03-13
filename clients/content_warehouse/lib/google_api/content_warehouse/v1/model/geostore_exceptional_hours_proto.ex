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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreExceptionalHoursProto do
  @moduledoc """
  An ExceptionalHoursProto holds information about exceptional (non-regular) hours for a business, such as holiday hours.

  ## Attributes

  *   `hours` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreBusinessHoursProto.t`, *default:* `nil`) - The weekly schedule to be applied for the dates that fall within the range. The schedule may contain hours only for days of the week that occur during the date range specified in the range field.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t`, *default:* `nil`) - Field-level metadata for this exception.
  *   `range` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeIntervalProto.t`, *default:* `nil`) - The dates for which this exception applies, expressed as a half open interval. For example, an exception that applies for the entire month of December 2015 should have a range December 1, 2015 to January 1, 2016. Any regular hours that start on days in this range are ignored and replaced by the exceptional hours for that day. The TimeIntervalProto for the range must be a fully specified, non-empty, and non-inverted range of dates. Concretely, the requirements are: * the range must be a TYPE_RANGE interval * the interval may not be inverted * the endpoints of the interval must specify a year, month, and day * the day_type of each endpoint must be type DAY_OF_MONTH * the endpoints may not specify hour, minute, second, week, or week_type * the begin endpoint must predate the end endpoint
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hours => GoogleApi.ContentWarehouse.V1.Model.GeostoreBusinessHoursProto.t() | nil,
          :metadata => GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t() | nil,
          :range => GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeIntervalProto.t() | nil
        }

  field(:hours, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreBusinessHoursProto)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto)
  field(:range, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeIntervalProto)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreExceptionalHoursProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreExceptionalHoursProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreExceptionalHoursProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
