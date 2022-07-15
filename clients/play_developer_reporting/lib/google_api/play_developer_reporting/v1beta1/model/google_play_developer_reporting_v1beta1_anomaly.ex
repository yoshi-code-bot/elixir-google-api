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

defmodule GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1Anomaly do
  @moduledoc """
  Represents an anomaly detected in a dataset. Our anomaly detection systems flag datapoints in a time series that fall outside of and expected range derived from historical data. Although those expected ranges have an upper and a lower bound, we only flag anomalies when the data has become unexpectedly _worse_, which usually corresponds to the case where the metric crosses the upper bound. Multiple contiguous datapoints in a timeline outside of the expected range will be grouped into a single anomaly. Therefore, an anomaly represents effectively a segment of a metric's timeline. The information stored in the `timeline_spec`, `dimensions` and `metric` can be used to fetch a full timeline with extended ragne for context. **Required permissions**: to access this resource, the calling user needs the _View app information (read-only)_ permission for the app.

  ## Attributes

  *   `dimensions` (*type:* `list(GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DimensionValue.t)`, *default:* `nil`) - Combination of dimensions in which the anomaly was detected.
  *   `metric` (*type:* `GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1MetricValue.t`, *default:* `nil`) - Metric where the anomaly was detected, together with the anomalous value.
  *   `metricSet` (*type:* `String.t`, *default:* `nil`) - Metric set resource where the anomaly was detected.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the anomaly. Format: apps/{app}/anomalies/{anomaly}
  *   `timelineSpec` (*type:* `GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1TimelineSpec.t`, *default:* `nil`) - Timeline specification that covers the anomaly period.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions =>
            list(
              GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DimensionValue.t()
            )
            | nil,
          :metric =>
            GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1MetricValue.t()
            | nil,
          :metricSet => String.t() | nil,
          :name => String.t() | nil,
          :timelineSpec =>
            GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1TimelineSpec.t()
            | nil
        }

  field(:dimensions,
    as:
      GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DimensionValue,
    type: :list
  )

  field(:metric,
    as:
      GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1MetricValue
  )

  field(:metricSet)
  field(:name)

  field(:timelineSpec,
    as:
      GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1TimelineSpec
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1Anomaly do
  def decode(value, options) do
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1Anomaly.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1Anomaly do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
