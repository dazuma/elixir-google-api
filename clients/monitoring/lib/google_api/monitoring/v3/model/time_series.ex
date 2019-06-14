# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Monitoring.V3.Model.TimeSeries do
  @moduledoc """
  A collection of data points that describes the time-varying values of a metric. A time series is identified by a combination of a fully-specified monitored resource and a fully-specified metric. This type is used for both listing and creating time series.

  ## Attributes

  - metadata (GoogleApi.Monitoring.V3.Model.MonitoredResourceMetadata.t): Output only. The associated monitored resource metadata. When reading a a timeseries, this field will include metadata labels that are explicitly named in the reduction. When creating a timeseries, this field is ignored. Defaults to `nil`.
  - metric (GoogleApi.Monitoring.V3.Model.Metric.t): The associated metric. A fully-specified metric used to identify the time series. Defaults to `nil`.
  - metricKind (String.t): The metric kind of the time series. When listing time series, this metric kind might be different from the metric kind of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the metric kind of the associated metric. If the associated metric's descriptor must be auto-created, then this field specifies the metric kind of the new descriptor and must be either GAUGE (the default) or CUMULATIVE. Defaults to `nil`.
  - points (list(GoogleApi.Monitoring.V3.Model.Point.t)): The data points of this time series. When listing time series, points are returned in reverse time order.When creating a time series, this field must contain exactly one point and the point's type must be the same as the value type of the associated metric. If the associated metric's descriptor must be auto-created, then the value type of the descriptor is determined by the point's type, which must be BOOL, INT64, DOUBLE, or DISTRIBUTION. Defaults to `nil`.
  - resource (GoogleApi.Monitoring.V3.Model.MonitoredResource.t): The associated monitored resource. Custom metrics can use only certain monitored resource types in their time series data. Defaults to `nil`.
  - valueType (String.t): The value type of the time series. When listing time series, this value type might be different from the value type of the associated metric if this time series is an alignment or reduction of other time series.When creating a time series, this field is optional. If present, it must be the same as the type of the data in the points field. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata => GoogleApi.Monitoring.V3.Model.MonitoredResourceMetadata.t(),
          :metric => GoogleApi.Monitoring.V3.Model.Metric.t(),
          :metricKind => String.t(),
          :points => list(GoogleApi.Monitoring.V3.Model.Point.t()),
          :resource => GoogleApi.Monitoring.V3.Model.MonitoredResource.t(),
          :valueType => String.t()
        }

  field(:metadata, as: GoogleApi.Monitoring.V3.Model.MonitoredResourceMetadata)
  field(:metric, as: GoogleApi.Monitoring.V3.Model.Metric)
  field(:metricKind)
  field(:points, as: GoogleApi.Monitoring.V3.Model.Point, type: :list)
  field(:resource, as: GoogleApi.Monitoring.V3.Model.MonitoredResource)
  field(:valueType)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.TimeSeries do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.TimeSeries.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.TimeSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
