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

defmodule GoogleApi.OSConfig.V1.Model.OSPolicyResourceFileResource do
  @moduledoc """
  A resource that manages the state of a file.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - A a file with this content. The size of the content is limited to 1024 characters.
  *   `file` (*type:* `GoogleApi.OSConfig.V1.Model.OSPolicyResourceFile.t`, *default:* `nil`) - A remote or local source.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Required. The absolute path of the file within the VM.
  *   `permissions` (*type:* `String.t`, *default:* `nil`) - Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. Desired state of the file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t() | nil,
          :file => GoogleApi.OSConfig.V1.Model.OSPolicyResourceFile.t() | nil,
          :path => String.t() | nil,
          :permissions => String.t() | nil,
          :state => String.t() | nil
        }

  field(:content)
  field(:file, as: GoogleApi.OSConfig.V1.Model.OSPolicyResourceFile)
  field(:path)
  field(:permissions)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyResourceFileResource do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.OSPolicyResourceFileResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyResourceFileResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
