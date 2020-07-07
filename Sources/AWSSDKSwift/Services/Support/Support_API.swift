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
Client object for interacting with AWS Support service.

AWS Support The AWS Support API reference is intended for programmers who need detailed information about the AWS Support operations and data types. This service enables you to manage your AWS Support cases programmatically. It uses HTTP methods that return results in JSON format.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.    The AWS Support service also exposes a set of AWS Trusted Advisor features. You can retrieve a list of checks and their descriptions, get check results, specify checks to refresh, and get the refresh status of checks. The following list describes the AWS Support case management operations:    Service names, issue categories, and available severity levels. The DescribeServices and DescribeSeverityLevels operations return AWS service names, service codes, service categories, and problem severity levels. You use these values when you call the CreateCase operation.    Case creation, case details, and case resolution. The CreateCase, DescribeCases, DescribeAttachment, and ResolveCase operations create AWS Support cases, retrieve information about cases, and resolve cases.    Case communication. The DescribeCommunications, AddCommunicationToCase, and AddAttachmentsToSet operations retrieve and add communications and attachments to AWS Support cases.   The following list describes the operations available from the AWS Support service for Trusted Advisor:    DescribeTrustedAdvisorChecks returns the list of checks that run against your AWS resources.   Using the checkId for a specific check returned by DescribeTrustedAdvisorChecks, you can call DescribeTrustedAdvisorCheckResult to obtain the results for the check that you specified.    DescribeTrustedAdvisorCheckSummaries returns summarized results for one or more Trusted Advisor checks.    RefreshTrustedAdvisorCheck requests that Trusted Advisor rerun a specified check.    DescribeTrustedAdvisorCheckRefreshStatuses reports the refresh status of one or more checks.   For authentication of requests, AWS Support uses Signature Version 4 Signing Process. See About the AWS Support API in the AWS Support User Guide for information about how to use this service to create and manage your support cases, and how to call Trusted Advisor for results of checks on your resources.
*/
public struct Support {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Support client
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
            amzTarget: "AWSSupport_20130415",
            service: "support",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2013-04-15",
            endpoint: endpoint,
            serviceEndpoints: ["aws-cn-global": "support.cn-north-1.amazonaws.com.cn", "aws-global": "support.us-east-1.amazonaws.com", "aws-iso-b-global": "support.us-isob-east-1.sc2s.sgov.gov", "aws-iso-global": "support.us-iso-east-1.c2s.ic.gov", "aws-us-gov-global": "support.us-gov-west-1.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1), .awscn: (endpoint: "aws-cn-global", region: .cnnorth1), .awsiso: (endpoint: "aws-iso-global", region: .usisoeast1), .awsisob: (endpoint: "aws-iso-b-global", region: .usisobeast1), .awsusgov: (endpoint: "aws-us-gov-global", region: .usgovwest1)],
            possibleErrorTypes: [SupportErrorType.self]
        )
    }
    
    //MARK: API Calls

    ///  Adds one or more attachments to an attachment set.  An attachment set is a temporary container for attachments that you add to a case or case communication. The set is available for 1 hour after it's created. The expiryTime returned in the response is when the set expires.     You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func addAttachmentsToSet(_ input: AddAttachmentsToSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddAttachmentsToSetResponse> {
        return client.execute(operation: "AddAttachmentsToSet", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds additional customer communication to an AWS Support case. Use the caseId parameter to identify the case to which to add communication. You can list a set of email addresses to copy on the communication by using the ccEmailAddresses parameter. The communicationBody value contains the text of the communication.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func addCommunicationToCase(_ input: AddCommunicationToCaseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCommunicationToCaseResponse> {
        return client.execute(operation: "AddCommunicationToCase", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a case in the AWS Support Center. This operation is similar to how you create a case in the AWS Support Center Create Case page. The AWS Support API doesn't support requesting service limit increases. You can submit a service limit increase in the following ways:    Submit a request from the AWS Support Center Create Case page.   Use the Service Quotas RequestServiceQuotaIncrease operation.   A successful CreateCase request returns an AWS Support case number. You can use the DescribeCases operation and specify the case number to get existing AWS Support cases. After you create a case, use the AddCommunicationToCase operation to add additional communication or attachments to an existing case. The caseId is separate from the displayId that appears in the AWS Support Center. Use the DescribeCases operation to get the displayId.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func createCase(_ input: CreateCaseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCaseResponse> {
        return client.execute(operation: "CreateCase", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the attachment that has the specified ID. Attachments can include screenshots, error logs, or other files that describe your issue. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the AttachmentDetails objects that are returned by the DescribeCommunications operation.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeAttachment(_ input: DescribeAttachmentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAttachmentResponse> {
        return client.execute(operation: "DescribeAttachment", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of cases that you specify by passing one or more case IDs. You can use the afterTime and beforeTime parameters to filter the cases by date. You can set values for the includeResolvedCases and includeCommunications parameters to specify how much information to return. The response returns the following in JSON format:   One or more CaseDetails data types.   One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.   Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeCases(_ input: DescribeCasesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCasesResponse> {
        return client.execute(operation: "DescribeCases", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns communications and attachments for one or more support cases. Use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a specific case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the results. Set maxResults to the number of cases that you want to display on each page, and use nextToken to specify the resumption of pagination.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeCommunications(_ input: DescribeCommunicationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCommunicationsResponse> {
        return client.execute(operation: "DescribeCommunications", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the current list of AWS services and a list of service categories for each service. You then use service names and categories in your CreateCase requests. Each AWS service has its own set of categories. The service codes and category codes correspond to the values that appear in the Service and Category lists on the AWS Support Center Create Case page. The values in those fields don't necessarily match the service codes and categories returned by the DescribeServices operation. Always use the service codes and categories that the DescribeServices operation returns, so that you have the most recent set of service and category codes.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeServices(_ input: DescribeServicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServicesResponse> {
        return client.execute(operation: "DescribeServices", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the CaseDetails data type that you include for a CreateCase request.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeSeverityLevels(_ input: DescribeSeverityLevelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSeverityLevelsResponse> {
        return client.execute(operation: "DescribeSeverityLevels", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the refresh status of the AWS Trusted Advisor checks that have the specified check IDs. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. Some checks are refreshed automatically, and you can't return their refresh statuses by using the DescribeTrustedAdvisorCheckRefreshStatuses operation. If you call this operation for these checks, you might see an InvalidParameterValue error.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeTrustedAdvisorCheckRefreshStatuses(_ input: DescribeTrustedAdvisorCheckRefreshStatusesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrustedAdvisorCheckRefreshStatusesResponse> {
        return client.execute(operation: "DescribeTrustedAdvisorCheckRefreshStatuses", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the results of the AWS Trusted Advisor check that has the specified check ID. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. The response contains a TrustedAdvisorCheckResult object, which contains these three objects:    TrustedAdvisorCategorySpecificSummary     TrustedAdvisorResourceDetail     TrustedAdvisorResourcesSummary    In addition, the response contains these fields:    status - The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".    timestamp - The time of the last refresh of the check.    checkId - The unique identifier for the check.      You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeTrustedAdvisorCheckResult(_ input: DescribeTrustedAdvisorCheckResultRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrustedAdvisorCheckResultResponse> {
        return client.execute(operation: "DescribeTrustedAdvisorCheckResult", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the results for the AWS Trusted Advisor check summaries for the check IDs that you specified. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. The response contains an array of TrustedAdvisorCheckSummary objects.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeTrustedAdvisorCheckSummaries(_ input: DescribeTrustedAdvisorCheckSummariesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrustedAdvisorCheckSummariesResponse> {
        return client.execute(operation: "DescribeTrustedAdvisorCheckSummaries", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns information about all available AWS Trusted Advisor checks, including the name, ID, category, description, and metadata. You must specify a language code. The AWS Support API currently supports English ("en") and Japanese ("ja"). The response contains a TrustedAdvisorCheckDescription object for each check. You must set the AWS Region to us-east-1.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func describeTrustedAdvisorChecks(_ input: DescribeTrustedAdvisorChecksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrustedAdvisorChecksResponse> {
        return client.execute(operation: "DescribeTrustedAdvisorChecks", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Refreshes the AWS Trusted Advisor check that you specify using the check ID. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation.  Some checks are refreshed automatically. If you call the RefreshTrustedAdvisorCheck operation to refresh them, you might see the InvalidParameterValue error.  The response contains a TrustedAdvisorCheckRefreshStatus object.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func refreshTrustedAdvisorCheck(_ input: RefreshTrustedAdvisorCheckRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefreshTrustedAdvisorCheckResponse> {
        return client.execute(operation: "RefreshTrustedAdvisorCheck", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Resolves a support case. This operation takes a caseId and returns the initial and final state of the case.    You must have a Business or Enterprise support plan to use the AWS Support API.    If you call the AWS Support API from an account that does not have a Business or Enterprise support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see AWS Support.   
    public func resolveCase(_ input: ResolveCaseRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResolveCaseResponse> {
        return client.execute(operation: "ResolveCase", path: "/", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
