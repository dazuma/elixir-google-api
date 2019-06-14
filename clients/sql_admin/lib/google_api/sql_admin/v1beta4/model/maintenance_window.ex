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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow do
  @moduledoc """
  Maintenance window. This specifies when a v2 Cloud SQL instance should preferably be restarted for system maintenance purposes.

  ## Attributes

  - day (integer()): day of week (1-7), starting on Monday. Defaults to `nil`.
  - hour (integer()): hour of day - 0 to 23. Defaults to `nil`.
  - kind (String.t): This is always sql#maintenanceWindow. Defaults to `sql#maintenanceWindow`.
  - updateTrack (String.t): Maintenance timing setting: canary (Earlier) or stable (Later).
  Learn more. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :day => integer(),
          :hour => integer(),
          :kind => String.t(),
          :updateTrack => String.t()
        }

  field(:day)
  field(:hour)
  field(:kind)
  field(:updateTrack)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
