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

defmodule GoogleApi.SQLAdmin.V1.Model.AvailableDatabaseVersion do
  @moduledoc """
  An available database version. It can be a major or a minor version.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The database version's display name.
  *   `majorVersion` (*type:* `String.t`, *default:* `nil`) - The version's major version name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The database version name. For MySQL 8.0, this string provides the database major and minor version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :majorVersion => String.t() | nil,
          :name => String.t() | nil
        }

  field(:displayName)
  field(:majorVersion)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.AvailableDatabaseVersion do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.AvailableDatabaseVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.AvailableDatabaseVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
