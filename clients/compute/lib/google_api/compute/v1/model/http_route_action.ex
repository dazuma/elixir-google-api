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

defmodule GoogleApi.Compute.V1.Model.HttpRouteAction do
  @moduledoc """


  ## Attributes

  *   `corsPolicy` (*type:* `GoogleApi.Compute.V1.Model.CorsPolicy.t`, *default:* `nil`) - The specification for allowing client side cross-origin requests. Please see W3C Recommendation for Cross Origin Resource Sharing 
      Not supported when the URL map is bound to target gRPC proxy.
  *   `faultInjectionPolicy` (*type:* `GoogleApi.Compute.V1.Model.HttpFaultInjection.t`, *default:* `nil`) - The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted by the Loadbalancer for a percentage of requests.
      timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy.
      Not supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `maxStreamDuration` (*type:* `GoogleApi.Compute.V1.Model.Duration.t`, *default:* `nil`) - Specifies the maximum duration (timeout) for streams on the selected route. Unlike the timeout field where the timeout duration starts from the time the request has been fully processed (i.e. end-of-stream), the duration in this field is computed from the beginning of the stream until the response has been completely processed, including all retries. A stream that does not complete in this duration is closed.
      If not specified, will use the largest maxStreamDuration among all backend services associated with the route.
      This field is only allowed if the Url map is used with backend services with loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  *   `requestMirrorPolicy` (*type:* `GoogleApi.Compute.V1.Model.RequestMirrorPolicy.t`, *default:* `nil`) - Specifies the policy on how requests intended for the route's backends are shadowed to a separate mirrored backend service. Loadbalancer does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host / authority header is suffixed with -shadow.
      Not supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `retryPolicy` (*type:* `GoogleApi.Compute.V1.Model.HttpRetryPolicy.t`, *default:* `nil`) - Specifies the retry policy associated with this route.
      Not supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `timeout` (*type:* `GoogleApi.Compute.V1.Model.Duration.t`, *default:* `nil`) - Specifies the timeout for the selected route. Timeout is computed from the time the request has been fully processed (i.e. end-of-stream) up until the response has been completely processed. Timeout includes all retries.
      If not specified, will use the largest timeout among all backend services associated with the route.
      Not supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `urlRewrite` (*type:* `GoogleApi.Compute.V1.Model.UrlRewrite.t`, *default:* `nil`) - The spec to modify the URL of the request, prior to forwarding the request to the matched service.
      urlRewrite is the only action supported in UrlMaps for external HTTP(S) load balancers.
      Not supported when the URL map is bound to target gRPC proxy that has validateForProxyless field set to true.
  *   `weightedBackendServices` (*type:* `list(GoogleApi.Compute.V1.Model.WeightedBackendService.t)`, *default:* `nil`) - A list of weighted backend services to send traffic to when a route match occurs. The weights determine the fraction of traffic that flows to their corresponding backend service. If all traffic needs to go to a single backend service, there must be one  weightedBackendService with weight set to a non-zero number.
      Once a backendService is identified and before forwarding the request to the backend service, advanced routing actions such as URL rewrites and header transformations are applied depending on additional settings specified in this HttpRouteAction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :corsPolicy => GoogleApi.Compute.V1.Model.CorsPolicy.t() | nil,
          :faultInjectionPolicy => GoogleApi.Compute.V1.Model.HttpFaultInjection.t() | nil,
          :maxStreamDuration => GoogleApi.Compute.V1.Model.Duration.t() | nil,
          :requestMirrorPolicy => GoogleApi.Compute.V1.Model.RequestMirrorPolicy.t() | nil,
          :retryPolicy => GoogleApi.Compute.V1.Model.HttpRetryPolicy.t() | nil,
          :timeout => GoogleApi.Compute.V1.Model.Duration.t() | nil,
          :urlRewrite => GoogleApi.Compute.V1.Model.UrlRewrite.t() | nil,
          :weightedBackendServices =>
            list(GoogleApi.Compute.V1.Model.WeightedBackendService.t()) | nil
        }

  field(:corsPolicy, as: GoogleApi.Compute.V1.Model.CorsPolicy)
  field(:faultInjectionPolicy, as: GoogleApi.Compute.V1.Model.HttpFaultInjection)
  field(:maxStreamDuration, as: GoogleApi.Compute.V1.Model.Duration)
  field(:requestMirrorPolicy, as: GoogleApi.Compute.V1.Model.RequestMirrorPolicy)
  field(:retryPolicy, as: GoogleApi.Compute.V1.Model.HttpRetryPolicy)
  field(:timeout, as: GoogleApi.Compute.V1.Model.Duration)
  field(:urlRewrite, as: GoogleApi.Compute.V1.Model.UrlRewrite)

  field(:weightedBackendServices,
    as: GoogleApi.Compute.V1.Model.WeightedBackendService,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpRouteAction do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpRouteAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpRouteAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
