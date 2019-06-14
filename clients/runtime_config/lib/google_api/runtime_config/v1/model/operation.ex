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

defmodule GoogleApi.RuntimeConfig.V1.Model.Operation do
  @moduledoc """
  This resource represents a long-running operation that is the result of a
  network API call.

  ## Attributes

  - done (boolean()): If the value is `false`, it means the operation is still in progress.
  If `true`, the operation is completed, and either `error` or `response` is
  available. Defaults to `nil`.
  - error (GoogleApi.RuntimeConfig.V1.Model.Status.t): The error result of the operation in case of failure or cancellation. Defaults to `nil`.
  - metadata (map()): Service-specific metadata associated with the operation.  It typically
  contains progress information and common metadata such as create time.
  Some services might not provide such metadata.  Any method that returns a
  long-running operation should document the metadata type, if any. Defaults to `nil`.
  - name (String.t): The server-assigned name, which is only unique within the same service that
  originally returns it. If you use the default HTTP mapping, the
  `name` should be a resource name ending with `operations/{unique_id}`. Defaults to `nil`.
  - response (map()): The normal response of the operation in case of success.  If the original
  method returns no data on success, such as `Delete`, the response is
  `google.protobuf.Empty`.  If the original method is standard
  `Get`/`Create`/`Update`, the response should be the resource.  For other
  methods, the response should have the type `XxxResponse`, where `Xxx`
  is the original method name.  For example, if the original method name
  is `TakeSnapshot()`, the inferred response type is
  `TakeSnapshotResponse`. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => boolean(),
          :error => GoogleApi.RuntimeConfig.V1.Model.Status.t(),
          :metadata => map(),
          :name => String.t(),
          :response => map()
        }

  field(:done)
  field(:error, as: GoogleApi.RuntimeConfig.V1.Model.Status)
  field(:metadata, type: :map)
  field(:name)
  field(:response, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.RuntimeConfig.V1.Model.Operation do
  def decode(value, options) do
    GoogleApi.RuntimeConfig.V1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RuntimeConfig.V1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
