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
Client object for interacting with AWS CloudWatchLogs service.

You can use Amazon CloudWatch Logs to monitor, store, and access your log files from Amazon EC2 instances, AWS CloudTrail, or other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the AWS CLI, CloudWatch Logs API, or CloudWatch Logs SDK. You can use CloudWatch Logs to:    Monitor logs from EC2 instances in real-time: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring; so, no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.    Monitor AWS CloudTrail logged events: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail and use the notification to perform troubleshooting.    Archive log data: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.  
*/
public struct CloudWatchLogs {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the CloudWatchLogs client
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
            amzTarget: "Logs_20140328",
            service: "logs",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2014-03-28",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "logs.us-gov-east-1.amazonaws.com", "us-gov-west-1": "logs.us-gov-west-1.amazonaws.com"],
            possibleErrorTypes: [CloudWatchLogsErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group. Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested.   Important: CloudWatch Logs supports only symmetric CMKs. Do not use an associate an asymmetric CMK with your log group. For more information, see Using Symmetric and Asymmetric Keys.  Note that it can take up to 5 minutes for this operation to take effect. If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an InvalidParameterException error. 
    @discardableResult public func associateKmsKey(_ input: AssociateKmsKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "AssociateKmsKey", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Cancels the specified export task. The task must be in the PENDING or RUNNING state.
    @discardableResult public func cancelExportTask(_ input: CancelExportTaskRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "CancelExportTask", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket. This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use DescribeExportTasks to get the status of the export task. Each account can only have one active (RUNNING or PENDING) export task at a time. To cancel an export task, use CancelExportTask. You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects. Exporting to S3 buckets that are encrypted with AES-256 is supported. Exporting to S3 buckets encrypted with SSE-KMS is not supported. 
    public func createExportTask(_ input: CreateExportTaskRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportTaskResponse> {
        return client.execute(operation: "CreateExportTask", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a log group with the specified name. You can create up to 20,000 log groups per account. You must use the following guidelines when naming a log group:   Log group names must be unique within a region for an AWS account.   Log group names can be between 1 and 512 characters long.   Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), '.' (period), and '#' (number sign)   If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested. If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an InvalidParameterException error.    Important: CloudWatch Logs supports only symmetric CMKs. Do not associate an asymmetric CMK with your log group. For more information, see Using Symmetric and Asymmetric Keys. 
    @discardableResult public func createLogGroup(_ input: CreateLogGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "CreateLogGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a log stream for the specified log group. There is no limit on the number of log streams that you can create for a log group. There is a limit of 50 TPS on CreateLogStream operations, after which transactions are throttled. You must use the following guidelines when naming a log stream:   Log stream names must be unique within the log group.   Log stream names can be between 1 and 512 characters long.   The ':' (colon) and '*' (asterisk) characters are not allowed.  
    @discardableResult public func createLogStream(_ input: CreateLogStreamRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "CreateLogStream", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.
    @discardableResult public func deleteDestination(_ input: DeleteDestinationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDestination", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified log group and permanently deletes all the archived log events associated with the log group.
    @discardableResult public func deleteLogGroup(_ input: DeleteLogGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteLogGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.
    @discardableResult public func deleteLogStream(_ input: DeleteLogStreamRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteLogStream", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified metric filter.
    @discardableResult public func deleteMetricFilter(_ input: DeleteMetricFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteMetricFilter", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    public func deleteQueryDefinition(_ input: DeleteQueryDefinitionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteQueryDefinitionResponse> {
        return client.execute(operation: "DeleteQueryDefinition", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.
    @discardableResult public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteResourcePolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified retention policy. Log events do not expire if they belong to log groups without a retention policy.
    @discardableResult public func deleteRetentionPolicy(_ input: DeleteRetentionPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteRetentionPolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the specified subscription filter.
    @discardableResult public func deleteSubscriptionFilter(_ input: DeleteSubscriptionFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteSubscriptionFilter", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists all your destinations. The results are ASCII-sorted by destination name.
    public func describeDestinations(_ input: DescribeDestinationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDestinationsResponse> {
        return client.execute(operation: "DescribeDestinations", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.
    public func describeExportTasks(_ input: DescribeExportTasksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportTasksResponse> {
        return client.execute(operation: "DescribeExportTasks", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
    public func describeLogGroups(_ input: DescribeLogGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogGroupsResponse> {
        return client.execute(operation: "DescribeLogGroups", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.
    public func describeLogStreams(_ input: DescribeLogStreamsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogStreamsResponse> {
        return client.execute(operation: "DescribeLogStreams", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
    public func describeMetricFilters(_ input: DescribeMetricFiltersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMetricFiltersResponse> {
        return client.execute(operation: "DescribeMetricFilters", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account. You can request all queries, or limit it to queries of a specific log group or queries with a certain status.
    public func describeQueries(_ input: DescribeQueriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQueriesResponse> {
        return client.execute(operation: "DescribeQueries", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    public func describeQueryDefinitions(_ input: DescribeQueryDefinitionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQueryDefinitionsResponse> {
        return client.execute(operation: "DescribeQueryDefinitions", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the resource policies in this account.
    public func describeResourcePolicies(_ input: DescribeResourcePoliciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcePoliciesResponse> {
        return client.execute(operation: "DescribeResourcePolicies", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
    public func describeSubscriptionFilters(_ input: DescribeSubscriptionFiltersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionFiltersResponse> {
        return client.execute(operation: "DescribeSubscriptionFilters", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group. After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested. Note that it can take up to 5 minutes for this operation to take effect.
    @discardableResult public func disassociateKmsKey(_ input: DisassociateKmsKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DisassociateKmsKey", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.
    public func filterLogEvents(_ input: FilterLogEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FilterLogEventsResponse> {
        return client.execute(operation: "FilterLogEvents", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists log events from the specified log stream. You can list all the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.
    public func getLogEvents(_ input: GetLogEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLogEventsResponse> {
        return client.execute(operation: "GetLogEvents", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of the fields that are included in log events in the specified log group, along with the percentage of log events that contain each field. The search is limited to a time period that you specify. In the results, fields that start with @ are fields generated by CloudWatch Logs. For example, @timestamp is the timestamp of each log event. For more information about the fields that are generated by CloudWatch logs, see Supported Logs and Discovered Fields. The response results are sorted by the frequency percentage, starting with the highest percentage.
    public func getLogGroupFields(_ input: GetLogGroupFieldsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLogGroupFieldsResponse> {
        return client.execute(operation: "GetLogGroupFields", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves all the fields and values of a single log event. All fields are retrieved, even if the original query that produced the logRecordPointer retrieved only a subset of fields. Fields are returned as field name/field value pairs. Additionally, the entire unparsed log event is returned within @message.
    public func getLogRecord(_ input: GetLogRecordRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLogRecordResponse> {
        return client.execute(operation: "GetLogRecord", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the results from the specified query. Only the fields requested in the query are returned, along with a @ptr field which is the identifier for the log record. You can use the value of @ptr in a GetLogRecord operation to get the full log record.  GetQueryResults does not start a query execution. To run a query, use StartQuery. If the value of the Status field in the output is Running, this operation returns only partial results. If you see a value of Scheduled or Running for the status, you can retry the operation later to see the final results. 
    public func getQueryResults(_ input: GetQueryResultsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetQueryResultsResponse> {
        return client.execute(operation: "GetQueryResults", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the tags for the specified log group.
    public func listTagsLogGroup(_ input: ListTagsLogGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsLogGroupResponse> {
        return client.execute(operation: "ListTagsLogGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates a destination. This operation is used only to create destinations for cross-account subscriptions. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using PutLogEvents. Through an access policy, a destination controls what is written to it. By default, PutDestination does not set any access policy with the destination, which means a cross-account user cannot call PutSubscriptionFilter against this destination. To enable this, the destination owner must call PutDestinationPolicy after PutDestination.
    public func putDestination(_ input: PutDestinationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutDestinationResponse> {
        return client.execute(operation: "PutDestination", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates an access policy associated with an existing destination. An access policy is an IAM policy document that is used to authorize claims to register a subscription filter against a given destination.
    @discardableResult public func putDestinationPolicy(_ input: PutDestinationPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "PutDestinationPolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Uploads a batch of log events to the specified log stream. You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token in the expectedSequenceToken field from InvalidSequenceTokenException. If you call PutLogEvents twice within a narrow time period using the same value for sequenceToken, both calls may be successful, or one may be rejected. The batch of events must satisfy the following constraints:   The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.   None of the log events in the batch can be more than 2 hours in the future.   None of the log events in the batch can be older than 14 days or older than the retention period of the log group.   The log events in the batch must be in chronological ordered by their timestamp. The timestamp is the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In AWS Tools for PowerShell and the AWS SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)    A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.   The maximum number of log events in a batch is 10,000.   There is a quota of 5 requests per second per log stream. Additional requests are throttled. This quota can't be changed.   If a call to PutLogEvents returns "UnrecognizedClientException" the most likely cause is an invalid AWS access key ID or secret key. 
    public func putLogEvents(_ input: PutLogEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutLogEventsResponse> {
        return client.execute(operation: "PutLogEvents", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through PutLogEvents. The maximum number of metric filters that can be associated with a log group is 100.
    @discardableResult public func putMetricFilter(_ input: PutMetricFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "PutMetricFilter", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    public func putQueryDefinition(_ input: PutQueryDefinitionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutQueryDefinitionResponse> {
        return client.execute(operation: "PutQueryDefinition", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 10 resource policies per region.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutResourcePolicyResponse> {
        return client.execute(operation: "PutResourcePolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.
    @discardableResult public func putRetentionPolicy(_ input: PutRetentionPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "PutRetentionPolicy", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through PutLogEvents and have them delivered to a specific destination. Currently, the supported destinations are:   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.   A logical destination that belongs to a different account, for cross-account delivery.   An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.   An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.   There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in filterName. Otherwise, the call fails because you cannot associate a second filter with a log group.
    @discardableResult public func putSubscriptionFilter(_ input: PutSubscriptionFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "PutSubscriptionFilter", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group and time range to query, and the query string to use. For more information, see CloudWatch Logs Insights Query Syntax. Queries time out after 15 minutes of execution. If your queries are timing out, reduce the time range being searched, or partition your query into a number of queries.
    public func startQuery(_ input: StartQueryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartQueryResponse> {
        return client.execute(operation: "StartQuery", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stops a CloudWatch Logs Insights query that is in progress. If the query has already ended, the operation returns an error indicating that the specified query is not running.
    public func stopQuery(_ input: StopQueryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopQueryResponse> {
        return client.execute(operation: "StopQuery", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds or updates the specified tags for the specified log group. To list the tags for a log group, use ListTagsLogGroup. To remove tags, use UntagLogGroup. For more information about tags, see Tag Log Groups in Amazon CloudWatch Logs in the Amazon CloudWatch Logs User Guide.
    @discardableResult public func tagLogGroup(_ input: TagLogGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagLogGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.
    public func testMetricFilter(_ input: TestMetricFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TestMetricFilterResponse> {
        return client.execute(operation: "TestMetricFilter", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes the specified tags from the specified log group. To list the tags for a log group, use ListTagsLogGroup. To add tags, use TagLogGroup.
    @discardableResult public func untagLogGroup(_ input: UntagLogGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagLogGroup", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
