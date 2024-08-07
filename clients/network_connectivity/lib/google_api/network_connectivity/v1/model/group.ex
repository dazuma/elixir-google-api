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

defmodule GoogleApi.NetworkConnectivity.V1.Model.Group do
  @moduledoc """
  A group represents a subset of spokes attached to a hub.

  ## Attributes

  *   `autoAccept` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.AutoAccept.t`, *default:* `nil`) - Optional. The auto-accept setting for this group.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the group was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description of the group.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the group. Group names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub}/groups/{group_id}`
  *   `routeTable` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the route table that corresponds to this group. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current lifecycle state of this group.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The Google-generated UUID for the group. This value is unique across all group resources. If a group is deleted and another with the same name is created, the new route table is assigned a different unique_id.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the group was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoAccept => GoogleApi.NetworkConnectivity.V1.Model.AutoAccept.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :routeTable => String.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:autoAccept, as: GoogleApi.NetworkConnectivity.V1.Model.AutoAccept)
  field(:createTime, as: DateTime)
  field(:description)
  field(:labels, type: :map)
  field(:name)
  field(:routeTable)
  field(:state)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.Group do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.Group.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.Group do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
