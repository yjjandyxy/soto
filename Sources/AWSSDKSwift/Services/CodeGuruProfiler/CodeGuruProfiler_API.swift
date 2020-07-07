//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS CodeGuruProfiler service.

This section provides documentation for the Amazon CodeGuru Profiler API operations.  &lt;p&gt;Amazon CodeGuru Profiler collects runtime performance data from your live applications, and provides recommendations that can help you fine-tune your application performance. Using machine learning algorithms, CodeGuru Profiler can help you find your most expensive lines of code and suggest ways you can improve efficiency and remove CPU bottlenecks. &lt;/p&gt; &lt;p&gt;Amazon CodeGuru Profiler provides different visualizations of profiling data to help you identify what code is running on the CPU, see how much time is consumed, and suggest ways to reduce CPU utilization. &lt;/p&gt; &lt;note&gt; &lt;p&gt;Amazon CodeGuru Profiler currently supports applications written in all Java virtual machine (JVM) languages. While CodeGuru Profiler supports both visualizations and recommendations for applications written in Java, it can also generate visualizations and a subset of recommendations for applications written in other JVM languages.&lt;/p&gt; &lt;/note&gt; &lt;p&gt; For more information, see &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html&quot;&gt;What is Amazon CodeGuru Profiler&lt;/a&gt; in the &lt;i&gt;Amazon CodeGuru Profiler User Guide&lt;/i&gt;. &lt;/p&gt; 
*/
public struct CodeGuruProfiler {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the CodeGuruProfiler client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "codeguru-profiler",
            serviceProtocol: .restjson,
            apiVersion: "2019-07-18",
            endpoint: endpoint,
            possibleErrorTypes: [CodeGuruProfilerErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  Add up to 2 anomaly notifications channels for a profiling group.
    public func addNotificationChannels(_ input: AddNotificationChannelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddNotificationChannelsResponse> {
        return client.execute(operation: "AddNotificationChannels", path: "/profilingGroups/{profilingGroupName}/notificationConfiguration", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Returns the time series of values for a requested list of frame metrics from a time period.
    public func batchGetFrameMetricData(_ input: BatchGetFrameMetricDataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetFrameMetricDataResponse> {
        return client.execute(operation: "BatchGetFrameMetricData", path: "/profilingGroups/{profilingGroupName}/frames/-/metrics", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Used by profiler agents to report their current state and to receive remote configuration updates. For example, ConfigureAgent can be used to tell and agent whether to profile or not and for how long to return profiling data. 
    public func configureAgent(_ input: ConfigureAgentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigureAgentResponse> {
        return client.execute(operation: "ConfigureAgent", path: "/profilingGroups/{profilingGroupName}/configureAgent", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a profiling group.
    public func createProfilingGroup(_ input: CreateProfilingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProfilingGroupResponse> {
        return client.execute(operation: "CreateProfilingGroup", path: "/profilingGroups", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a profiling group.
    public func deleteProfilingGroup(_ input: DeleteProfilingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProfilingGroupResponse> {
        return client.execute(operation: "DeleteProfilingGroup", path: "/profilingGroups/{profilingGroupName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Returns a  ProfilingGroupDescription  object that contains information about the requested profiling group. 
    public func describeProfilingGroup(_ input: DescribeProfilingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProfilingGroupResponse> {
        return client.execute(operation: "DescribeProfilingGroup", path: "/profilingGroups/{profilingGroupName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Returns a list of  FindingsReportSummary  objects that contain analysis results for all profiling groups in your AWS account. 
    public func getFindingsReportAccountSummary(_ input: GetFindingsReportAccountSummaryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingsReportAccountSummaryResponse> {
        return client.execute(operation: "GetFindingsReportAccountSummary", path: "/internal/findingsReports", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get the current configuration for anomaly notifications for a profiling group.
    public func getNotificationConfiguration(_ input: GetNotificationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNotificationConfigurationResponse> {
        return client.execute(operation: "GetNotificationConfiguration", path: "/profilingGroups/{profilingGroupName}/notificationConfiguration", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Returns the JSON-formatted resource-based policy on a profiling group. 
    public func getPolicy(_ input: GetPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPolicyResponse> {
        return client.execute(operation: "GetPolicy", path: "/profilingGroups/{profilingGroupName}/policy", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Gets the aggregated profile of a profiling group for a specified time range. Amazon CodeGuru Profiler collects posted agent profiles for a profiling group into aggregated profiles.   &lt;note&gt; &lt;p&gt; Because aggregated profiles expire over time &lt;code&gt;GetProfile&lt;/code&gt; is not idempotent. &lt;/p&gt; &lt;/note&gt; &lt;p&gt; Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: &lt;code&gt;startTime&lt;/code&gt;, &lt;code&gt;endTime&lt;/code&gt;, &lt;code&gt;period&lt;/code&gt;. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only &lt;code&gt;period&lt;/code&gt;, the latest aggregated profile is returned. &lt;/p&gt; &lt;p&gt; Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html&quot;&gt; &lt;code&gt;AggregatedProfileTime&lt;/code&gt; &lt;/a&gt;. The aggregated profile's aggregation period determines how long it is retained by CodeGuru Profiler. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1 hour, the aggregated profile is retained for 60 days. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1 day, the aggregated profile is retained for 3 years. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;There are two use cases for calling &lt;code&gt;GetProfile&lt;/code&gt;.&lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt; If you want to return an aggregated profile that already exists, use &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html&quot;&gt; &lt;code&gt;ListProfileTimes&lt;/code&gt; &lt;/a&gt; to view the time ranges of existing aggregated profiles. Use them in a &lt;code&gt;GetProfile&lt;/code&gt; request to return a specific, existing aggregated profile. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. &lt;/p&gt; &lt;p&gt; If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. &lt;/p&gt; &lt;/li&gt; &lt;/ol&gt; 
    public func getProfile(_ input: GetProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProfileResponse> {
        return client.execute(operation: "GetProfile", path: "/profilingGroups/{profilingGroupName}/profile", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Returns a list of  Recommendation  objects that contain recommendations for a profiling group for a given time period. A list of  Anomaly  objects that contains details about anomalies detected in the profiling group for the same time period is also returned. 
    public func getRecommendations(_ input: GetRecommendationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecommendationsResponse> {
        return client.execute(operation: "GetRecommendations", path: "/internal/profilingGroups/{profilingGroupName}/recommendations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the available reports for a given profiling group and time range.
    public func listFindingsReports(_ input: ListFindingsReportsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsReportsResponse> {
        return client.execute(operation: "ListFindingsReports", path: "/internal/profilingGroups/{profilingGroupName}/findingsReports", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.
    public func listProfileTimes(_ input: ListProfileTimesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProfileTimesResponse> {
        return client.execute(operation: "ListProfileTimes", path: "/profilingGroups/{profilingGroupName}/profileTimes", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Returns a list of profiling groups. The profiling groups are returned as  ProfilingGroupDescription  objects. 
    public func listProfilingGroups(_ input: ListProfilingGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProfilingGroupsResponse> {
        return client.execute(operation: "ListProfilingGroups", path: "/profilingGroups", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Submits profiling data to an aggregated profile of a profiling group. To get an aggregated profile that is created with this profiling data, use  GetProfile . 
    public func postAgentProfile(_ input: PostAgentProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PostAgentProfileResponse> {
        return client.execute(operation: "PostAgentProfile", path: "/profilingGroups/{profilingGroupName}/agentProfile", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Adds permissions to a profiling group's resource-based policy that are provided using an action group. If a profiling group doesn't have a resource-based policy, one is created for it using the permissions in the action group and the roles and users in the principals parameter.   &lt;p&gt; The one supported action group that can be added is &lt;code&gt;agentPermission&lt;/code&gt; which grants &lt;code&gt;ConfigureAgent&lt;/code&gt; and &lt;code&gt;PostAgent&lt;/code&gt; permissions. For more information, see &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html&quot;&gt;Resource-based policies in CodeGuru Profiler&lt;/a&gt; in the &lt;i&gt;Amazon CodeGuru Profiler User Guide&lt;/i&gt;, &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html&quot;&gt; &lt;code&gt;ConfigureAgent&lt;/code&gt; &lt;/a&gt;, and &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html&quot;&gt; &lt;code&gt;PostAgentProfile&lt;/code&gt; &lt;/a&gt;. &lt;/p&gt; &lt;p&gt; The first time you call &lt;code&gt;PutPermission&lt;/code&gt; on a profiling group, do not specify a &lt;code&gt;revisionId&lt;/code&gt; because it doesn't have a resource-based policy. Subsequent calls must provide a &lt;code&gt;revisionId&lt;/code&gt; to specify which revision of the resource-based policy to add the permissions to. &lt;/p&gt; &lt;p&gt; The response contains the profiling group's JSON-formatted resource policy. &lt;/p&gt; 
    public func putPermission(_ input: PutPermissionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutPermissionResponse> {
        return client.execute(operation: "PutPermission", path: "/profilingGroups/{profilingGroupName}/policy/{actionGroup}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Remove one anomaly notifications channel for a profiling group.
    public func removeNotificationChannel(_ input: RemoveNotificationChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveNotificationChannelResponse> {
        return client.execute(operation: "RemoveNotificationChannel", path: "/profilingGroups/{profilingGroupName}/notificationConfiguration/{channelId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Removes permissions from a profiling group's resource-based policy that are provided using an action group. The one supported action group that can be removed is agentPermission which grants ConfigureAgent and PostAgent permissions. For more information, see Resource-based policies in CodeGuru Profiler in the Amazon CodeGuru Profiler User Guide,  ConfigureAgent , and  PostAgentProfile . 
    public func removePermission(_ input: RemovePermissionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemovePermissionResponse> {
        return client.execute(operation: "RemovePermission", path: "/profilingGroups/{profilingGroupName}/policy/{actionGroup}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Sends feedback to CodeGuru Profiler about whether the anomaly detected by the analysis is useful or not.
    public func submitFeedback(_ input: SubmitFeedbackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitFeedbackResponse> {
        return client.execute(operation: "SubmitFeedback", path: "/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a profiling group.
    public func updateProfilingGroup(_ input: UpdateProfilingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProfilingGroupResponse> {
        return client.execute(operation: "UpdateProfilingGroup", path: "/profilingGroups/{profilingGroupName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
