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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoAttributes do
  @moduledoc """
  Attributes are additional options that can be associated with each event property. For more information, see

  ## Attributes

  *   `dataType` (*type:* `String.t`, *default:* `nil`) - Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  *   `defaultValue` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoValueType.t`, *default:* `nil`) - Used to define defaults.
  *   `isRequired` (*type:* `boolean()`, *default:* `nil`) - Required for event execution. The validation will be done by the event bus when the event is triggered.
  *   `isSearchable` (*type:* `boolean()`, *default:* `nil`) - Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  *   `logSettings` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoLogSettings.t`, *default:* `nil`) - See
  *   `masked` (*type:* `boolean()`, *default:* `nil`) - True if this workflow parameter should be masked in the logs
  *   `readOnly` (*type:* `boolean()`, *default:* `nil`) - Used to indicate if the ParameterEntry is a read only field or not.
  *   `searchable` (*type:* `String.t`, *default:* `nil`) - 
  *   `taskVisibility` (*type:* `list(String.t)`, *default:* `nil`) - List of tasks that can view this property, if empty then all.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataType => String.t() | nil,
          :defaultValue =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoValueType.t() | nil,
          :isRequired => boolean() | nil,
          :isSearchable => boolean() | nil,
          :logSettings =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoLogSettings.t() | nil,
          :masked => boolean() | nil,
          :readOnly => boolean() | nil,
          :searchable => String.t() | nil,
          :taskVisibility => list(String.t()) | nil
        }

  field(:dataType)
  field(:defaultValue, as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoValueType)
  field(:isRequired)
  field(:isSearchable)
  field(:logSettings, as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoLogSettings)
  field(:masked)
  field(:readOnly)
  field(:searchable)
  field(:taskVisibility, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoAttributes do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoAttributes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoAttributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
