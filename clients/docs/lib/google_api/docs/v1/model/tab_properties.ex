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

defmodule GoogleApi.Docs.V1.Model.TabProperties do
  @moduledoc """
  Properties of a tab.

  ## Attributes

  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of the tab within the parent.
  *   `nestingLevel` (*type:* `integer()`, *default:* `nil`) - Output only. The depth of the tab within the document. Root-level tabs start at 0.
  *   `parentTabId` (*type:* `String.t`, *default:* `nil`) - Optional. The ID of the parent tab. Empty when the current tab is a root-level tab, which means it doesn't have any parents.
  *   `tabId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the tab. This field can't be changed.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The user-visible name of the tab.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => integer() | nil,
          :nestingLevel => integer() | nil,
          :parentTabId => String.t() | nil,
          :tabId => String.t() | nil,
          :title => String.t() | nil
        }

  field(:index)
  field(:nestingLevel)
  field(:parentTabId)
  field(:tabId)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.TabProperties do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.TabProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.TabProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
