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

defmodule GoogleApi.Admin.Reports_v1.Model.Activity do
  @moduledoc """
  JSON template for the activity resource.

  ## Attributes

  *   `actor` (*type:* `GoogleApi.Admin.Reports_v1.Model.ActivityActor.t`, *default:* `nil`) - User doing the action.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the entry.
  *   `events` (*type:* `list(GoogleApi.Admin.Reports_v1.Model.ActivityEvents.t)`, *default:* `nil`) - Activity events in the report.
  *   `id` (*type:* `GoogleApi.Admin.Reports_v1.Model.ActivityId.t`, *default:* `nil`) - Unique identifier for each activity record.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the user doing the action. This is the Internet Protocol (IP) address of the user when logging into Google Workspace, which may or may not reflect the user's physical location. For example, the IP address can be the user's proxy server's address or a virtual private network (VPN) address. The API supports IPv4 and IPv6.
  *   `kind` (*type:* `String.t`, *default:* `admin#reports#activity`) - The type of API resource. For an activity report, the value is `audit#activity`.
  *   `ownerDomain` (*type:* `String.t`, *default:* `nil`) - This is the domain that is affected by the report's event. For example domain of Admin console or the Drive application's document owner.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actor => GoogleApi.Admin.Reports_v1.Model.ActivityActor.t() | nil,
          :etag => String.t() | nil,
          :events => list(GoogleApi.Admin.Reports_v1.Model.ActivityEvents.t()) | nil,
          :id => GoogleApi.Admin.Reports_v1.Model.ActivityId.t() | nil,
          :ipAddress => String.t() | nil,
          :kind => String.t() | nil,
          :ownerDomain => String.t() | nil
        }

  field(:actor, as: GoogleApi.Admin.Reports_v1.Model.ActivityActor)
  field(:etag)
  field(:events, as: GoogleApi.Admin.Reports_v1.Model.ActivityEvents, type: :list)
  field(:id, as: GoogleApi.Admin.Reports_v1.Model.ActivityId)
  field(:ipAddress)
  field(:kind)
  field(:ownerDomain)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.Activity do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.Activity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.Activity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
