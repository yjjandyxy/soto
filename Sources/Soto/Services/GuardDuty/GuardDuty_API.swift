//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS GuardDuty service.
///
/// Amazon GuardDuty is a continuous security monitoring service that analyzes and processes the following data sources: VPC Flow Logs, Amazon Web Services CloudTrail event logs, and DNS logs. It uses threat intelligence feeds (such as lists of malicious IPs and domains) and machine learning to identify unexpected, potentially unauthorized, and malicious activity within your Amazon Web Services environment. This can include issues like escalations of privileges, uses of exposed credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can detect compromised EC2 instances that serve malware or mine bitcoin.  GuardDuty also monitors Amazon Web Services account access behavior for signs of compromise. Some examples of this are unauthorized infrastructure deployments such as EC2 instances deployed in a Region that has never been used, or unusual API calls like a password policy change to reduce password strength.  GuardDuty informs you of the status of your Amazon Web Services environment by producing security findings that you can view in the GuardDuty console or through Amazon CloudWatch events. For more information, see the  Amazon GuardDuty User Guide .
public struct GuardDuty: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the GuardDuty client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "guardduty",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-28",
            endpoint: endpoint,
            errorType: GuardDutyErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Accepts the invitation to be monitored by a GuardDuty administrator account.
    public func acceptInvitation(_ input: AcceptInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptInvitationResponse> {
        return self.client.execute(operation: "AcceptInvitation", path: "/detector/{detectorId}/master", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Archives GuardDuty findings that are specified by the list of finding IDs.  Only the administrator account can archive findings. Member accounts don't have permission to archive findings from their accounts.
    public func archiveFindings(_ input: ArchiveFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ArchiveFindingsResponse> {
        return self.client.execute(operation: "ArchiveFindings", path: "/detector/{detectorId}/findings/archive", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each Region where you enable the service. You can have only one detector per account per Region. All data sources are enabled in a new detector by default.
    public func createDetector(_ input: CreateDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDetectorResponse> {
        return self.client.execute(operation: "CreateDetector", path: "/detector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a filter using the specified finding criteria.
    public func createFilter(_ input: CreateFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFilterResponse> {
        return self.client.execute(operation: "CreateFilter", path: "/detector/{detectorId}/filter", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new IPSet, which is called a trusted IP list in the console user interface. An IPSet is a list of IP addresses that are trusted for secure communication with Amazon Web Services infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are included in IPSets. Only users from the administrator account can use this operation.
    public func createIPSet(_ input: CreateIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIPSetResponse> {
        return self.client.execute(operation: "CreateIPSet", path: "/detector/{detectorId}/ipset", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates member accounts of the current Amazon Web Services account by specifying a list of Amazon Web Services account IDs. This step is a prerequisite for managing the associated member accounts either by invitation or through an organization. When using Create Members as an organizations delegated administrator this action will enable GuardDuty in the added member accounts, with the exception of the organization delegated administrator account, which must enable GuardDuty prior to being added as a member. If you are adding accounts by invitation use this action after GuardDuty has been enabled in potential member accounts and before using  Invite Members .
    public func createMembers(_ input: CreateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMembersResponse> {
        return self.client.execute(operation: "CreateMembers", path: "/detector/{detectorId}/member", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a publishing destination to export findings to. The resource to export findings to must exist before you use this operation.
    public func createPublishingDestination(_ input: CreatePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePublishingDestinationResponse> {
        return self.client.execute(operation: "CreatePublishingDestination", path: "/detector/{detectorId}/publishingDestination", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
    public func createSampleFindings(_ input: CreateSampleFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSampleFindingsResponse> {
        return self.client.execute(operation: "CreateSampleFindings", path: "/detector/{detectorId}/findings/create", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the administrator account can use this operation.
    public func createThreatIntelSet(_ input: CreateThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateThreatIntelSetResponse> {
        return self.client.execute(operation: "CreateThreatIntelSet", path: "/detector/{detectorId}/threatintelset", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Declines invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs.
    public func declineInvitations(_ input: DeclineInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeclineInvitationsResponse> {
        return self.client.execute(operation: "DeclineInvitations", path: "/invitation/decline", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon GuardDuty detector that is specified by the detector ID.
    public func deleteDetector(_ input: DeleteDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDetectorResponse> {
        return self.client.execute(operation: "DeleteDetector", path: "/detector/{detectorId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the filter specified by the filter name.
    public func deleteFilter(_ input: DeleteFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFilterResponse> {
        return self.client.execute(operation: "DeleteFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the IPSet specified by the ipSetId. IPSets are called trusted IP lists in the console user interface.
    public func deleteIPSet(_ input: DeleteIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIPSetResponse> {
        return self.client.execute(operation: "DeleteIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs.
    public func deleteInvitations(_ input: DeleteInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInvitationsResponse> {
        return self.client.execute(operation: "DeleteInvitations", path: "/invitation/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs.
    public func deleteMembers(_ input: DeleteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMembersResponse> {
        return self.client.execute(operation: "DeleteMembers", path: "/detector/{detectorId}/member/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the publishing definition with the specified destinationId.
    public func deletePublishingDestination(_ input: DeletePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePublishingDestinationResponse> {
        return self.client.execute(operation: "DeletePublishingDestination", path: "/detector/{detectorId}/publishingDestination/{destinationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
    public func deleteThreatIntelSet(_ input: DeleteThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteThreatIntelSetResponse> {
        return self.client.execute(operation: "DeleteThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the account selected as the delegated administrator for GuardDuty.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationConfigurationResponse> {
        return self.client.execute(operation: "DescribeOrganizationConfiguration", path: "/detector/{detectorId}/admin", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the publishing destination specified by the provided destinationId.
    public func describePublishingDestination(_ input: DescribePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublishingDestinationResponse> {
        return self.client.execute(operation: "DescribePublishingDestination", path: "/detector/{detectorId}/publishingDestination/{destinationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables an Amazon Web Services account within the Organization as the GuardDuty delegated administrator.
    public func disableOrganizationAdminAccount(_ input: DisableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableOrganizationAdminAccountResponse> {
        return self.client.execute(operation: "DisableOrganizationAdminAccount", path: "/admin/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the current GuardDuty member account from its administrator account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateFromMasterAccountResponse> {
        return self.client.execute(operation: "DisassociateFromMasterAccount", path: "/detector/{detectorId}/master/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs. Member accounts added through Invitation get deleted from the current GuardDuty administrator account after 30 days of disassociation.
    public func disassociateMembers(_ input: DisassociateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateMembersResponse> {
        return self.client.execute(operation: "DisassociateMembers", path: "/detector/{detectorId}/member/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables an Amazon Web Services account within the organization as the GuardDuty delegated administrator.
    public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableOrganizationAdminAccountResponse> {
        return self.client.execute(operation: "EnableOrganizationAdminAccount", path: "/admin/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an Amazon GuardDuty detector specified by the detectorId.
    public func getDetector(_ input: GetDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectorResponse> {
        return self.client.execute(operation: "GetDetector", path: "/detector/{detectorId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details of the filter specified by the filter name.
    public func getFilter(_ input: GetFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFilterResponse> {
        return self.client.execute(operation: "GetFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes Amazon GuardDuty findings specified by finding IDs.
    public func getFindings(_ input: GetFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingsResponse> {
        return self.client.execute(operation: "GetFindings", path: "/detector/{detectorId}/findings/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon GuardDuty findings statistics for the specified detector ID.
    public func getFindingsStatistics(_ input: GetFindingsStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingsStatisticsResponse> {
        return self.client.execute(operation: "GetFindingsStatistics", path: "/detector/{detectorId}/findings/statistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the IPSet specified by the ipSetId.
    public func getIPSet(_ input: GetIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIPSetResponse> {
        return self.client.execute(operation: "GetIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInvitationsCountResponse> {
        return self.client.execute(operation: "GetInvitationsCount", path: "/invitation/count", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides the details for the GuardDuty administrator account associated with the current GuardDuty member account.
    public func getMasterAccount(_ input: GetMasterAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMasterAccountResponse> {
        return self.client.execute(operation: "GetMasterAccount", path: "/detector/{detectorId}/master", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes which data sources are enabled for the member account's detector.
    public func getMemberDetectors(_ input: GetMemberDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMemberDetectorsResponse> {
        return self.client.execute(operation: "GetMemberDetectors", path: "/detector/{detectorId}/member/detector/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves GuardDuty member accounts (of the current GuardDuty administrator account) specified by the account IDs.
    public func getMembers(_ input: GetMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMembersResponse> {
        return self.client.execute(operation: "GetMembers", path: "/detector/{detectorId}/member/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
    public func getThreatIntelSet(_ input: GetThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetThreatIntelSetResponse> {
        return self.client.execute(operation: "GetThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID. For newly enabled detectors or data sources the cost returned will include only the usage so far under 30 days, this may differ from the cost metrics in the console, which projects usage over 30 days to provide a monthly cost estimate. For more information see Understanding How Usage Costs are Calculated.
    public func getUsageStatistics(_ input: GetUsageStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUsageStatisticsResponse> {
        return self.client.execute(operation: "GetUsageStatistics", path: "/detector/{detectorId}/usage/statistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Invites other Amazon Web Services accounts (created as members of the current Amazon Web Services account by CreateMembers) to enable GuardDuty, and allow the current Amazon Web Services account to view and manage these accounts' findings on their behalf as the GuardDuty administrator account.
    public func inviteMembers(_ input: InviteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InviteMembersResponse> {
        return self.client.execute(operation: "InviteMembers", path: "/detector/{detectorId}/member/invite", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectors(_ input: ListDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDetectorsResponse> {
        return self.client.execute(operation: "ListDetectors", path: "/detector", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of the current filters.
    public func listFilters(_ input: ListFiltersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFiltersResponse> {
        return self.client.execute(operation: "ListFilters", path: "/detector/{detectorId}/filter", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsResponse> {
        return self.client.execute(operation: "ListFindings", path: "/detector/{detectorId}/findings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated administrator account.
    public func listIPSets(_ input: ListIPSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIPSetsResponse> {
        return self.client.execute(operation: "ListIPSets", path: "/detector/{detectorId}/ipset", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all GuardDuty membership invitations that were sent to the current Amazon Web Services account.
    public func listInvitations(_ input: ListInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInvitationsResponse> {
        return self.client.execute(operation: "ListInvitations", path: "/invitation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists details about all member accounts for the current GuardDuty administrator account.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMembersResponse> {
        return self.client.execute(operation: "ListMembers", path: "/detector/{detectorId}/member", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the accounts configured as GuardDuty delegated administrators.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationAdminAccountsResponse> {
        return self.client.execute(operation: "ListOrganizationAdminAccounts", path: "/admin", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of publishing destinations associated with the specified detectorId.
    public func listPublishingDestinations(_ input: ListPublishingDestinationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPublishingDestinationsResponse> {
        return self.client.execute(operation: "ListPublishingDestinations", path: "/detector/{detectorId}/publishingDestination", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and threat intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the administrator account are returned.
    public func listThreatIntelSets(_ input: ListThreatIntelSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListThreatIntelSetsResponse> {
        return self.client.execute(operation: "ListThreatIntelSets", path: "/detector/{detectorId}/threatintelset", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the StopMonitoringMembers operation.
    public func startMonitoringMembers(_ input: StartMonitoringMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMonitoringMembersResponse> {
        return self.client.execute(operation: "StartMonitoringMembers", path: "/detector/{detectorId}/member/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops GuardDuty monitoring for the specified member accounts. Use the StartMonitoringMembers operation to restart monitoring for those accounts.
    public func stopMonitoringMembers(_ input: StopMonitoringMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMonitoringMembersResponse> {
        return self.client.execute(operation: "StopMonitoringMembers", path: "/detector/{detectorId}/member/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unarchives GuardDuty findings specified by the findingIds.
    public func unarchiveFindings(_ input: UnarchiveFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnarchiveFindingsResponse> {
        return self.client.execute(operation: "UnarchiveFindings", path: "/detector/{detectorId}/findings/unarchive", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the Amazon GuardDuty detector specified by the detectorId.
    public func updateDetector(_ input: UpdateDetectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorResponse> {
        return self.client.execute(operation: "UpdateDetector", path: "/detector/{detectorId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the filter specified by the filter name.
    public func updateFilter(_ input: UpdateFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFilterResponse> {
        return self.client.execute(operation: "UpdateFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Marks the specified GuardDuty findings as useful or not useful.
    public func updateFindingsFeedback(_ input: UpdateFindingsFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFindingsFeedbackResponse> {
        return self.client.execute(operation: "UpdateFindingsFeedback", path: "/detector/{detectorId}/findings/feedback", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the IPSet specified by the IPSet ID.
    public func updateIPSet(_ input: UpdateIPSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIPSetResponse> {
        return self.client.execute(operation: "UpdateIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Contains information on member accounts to be updated.
    public func updateMemberDetectors(_ input: UpdateMemberDetectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMemberDetectorsResponse> {
        return self.client.execute(operation: "UpdateMemberDetectors", path: "/detector/{detectorId}/member/detector/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the delegated administrator account with the values provided.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrganizationConfigurationResponse> {
        return self.client.execute(operation: "UpdateOrganizationConfiguration", path: "/detector/{detectorId}/admin", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates information about the publishing destination specified by the destinationId.
    public func updatePublishingDestination(_ input: UpdatePublishingDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePublishingDestinationResponse> {
        return self.client.execute(operation: "UpdatePublishingDestination", path: "/detector/{detectorId}/publishingDestination/{destinationId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
    public func updateThreatIntelSet(_ input: UpdateThreatIntelSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateThreatIntelSetResponse> {
        return self.client.execute(operation: "UpdateThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension GuardDuty {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: GuardDuty, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
