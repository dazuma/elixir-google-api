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

defmodule GoogleApi.Dataproc.V1.Model.YarnApplication do
  @moduledoc """
  A YARN application created by a job. Application information is a subset of org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature: This report is available for testing purposes only. It may be changed before final release.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The application name.
  *   `progress` (*type:* `number()`, *default:* `nil`) - Required. The numerical progress of the application, from 1 to 100.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. The application state.
  *   `trackingUrl` (*type:* `String.t`, *default:* `nil`) - Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides application-specific information. The URL uses the internal hostname, and requires a proxy server for resolution and, possibly, access.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :progress => number() | nil,
          :state => String.t() | nil,
          :trackingUrl => String.t() | nil
        }

  field(:name)
  field(:progress)
  field(:state)
  field(:trackingUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.YarnApplication do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.YarnApplication.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.YarnApplication do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
