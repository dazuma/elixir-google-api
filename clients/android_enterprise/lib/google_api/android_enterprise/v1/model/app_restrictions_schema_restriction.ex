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

defmodule GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestriction do
  @moduledoc """
  A restriction in the App Restriction Schema represents a piece of configuration that may be pre-applied.

  ## Attributes

  *   `defaultValue` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestrictionRestrictionValue.t`, *default:* `nil`) - The default value of the restriction. bundle and bundleArray restrictions never have a default value.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A longer description of the restriction, giving more detail of what it affects.
  *   `entry` (*type:* `list(String.t)`, *default:* `nil`) - For choice or multiselect restrictions, the list of possible entries' human-readable names.
  *   `entryValue` (*type:* `list(String.t)`, *default:* `nil`) - For choice or multiselect restrictions, the list of possible entries' machine-readable values. These values should be used in the configuration, either as a single string value for a choice restriction or in a stringArray for a multiselect restriction.
  *   `key` (*type:* `String.t`, *default:* `nil`) - The unique key that the product uses to identify the restriction, e.g. "com.google.android.gm.fieldname".
  *   `nestedRestriction` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestriction.t)`, *default:* `nil`) - For bundle or bundleArray restrictions, the list of nested restrictions. A bundle restriction is always nested within a bundleArray restriction, and a bundleArray restriction is at most two levels deep.
  *   `restrictionType` (*type:* `String.t`, *default:* `nil`) - The type of the restriction.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The name of the restriction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultValue =>
            GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestrictionRestrictionValue.t()
            | nil,
          :description => String.t() | nil,
          :entry => list(String.t()) | nil,
          :entryValue => list(String.t()) | nil,
          :key => String.t() | nil,
          :nestedRestriction =>
            list(GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestriction.t()) | nil,
          :restrictionType => String.t() | nil,
          :title => String.t() | nil
        }

  field(:defaultValue,
    as: GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestrictionRestrictionValue
  )

  field(:description)
  field(:entry, type: :list)
  field(:entryValue, type: :list)
  field(:key)

  field(:nestedRestriction,
    as: GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestriction,
    type: :list
  )

  field(:restrictionType)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestriction do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.AppRestrictionsSchemaRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
