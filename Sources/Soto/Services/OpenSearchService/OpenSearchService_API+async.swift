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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension OpenSearchService {
    // MARK: Async API Calls

    /// Allows the remote domain owner to accept an inbound cross-cluster connection request.
    public func acceptInboundConnection(_ input: AcceptInboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptInboundConnectionResponse {
        return try await self.client.execute(operation: "AcceptInboundConnection", path: "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches tags to an existing domain. Tags are a set of case-sensitive key value pairs. An domain can have up to 10 tags. See  Tagging Amazon OpenSearch Service domains for more information.
    public func addTags(_ input: AddTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AddTags", path: "/2021-01-01/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a package with an Amazon OpenSearch Service domain.
    public func associatePackage(_ input: AssociatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociatePackageResponse {
        return try await self.client.execute(operation: "AssociatePackage", path: "/2021-01-01/packages/associate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a scheduled service software update for an Amazon OpenSearch Service domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.
    public func cancelServiceSoftwareUpdate(_ input: CancelServiceSoftwareUpdateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelServiceSoftwareUpdateResponse {
        return try await self.client.execute(operation: "CancelServiceSoftwareUpdate", path: "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon OpenSearch Service domain. For more information, see Creating and managing Amazon OpenSearch Service domains  in the Amazon OpenSearch Service Developer Guide.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        return try await self.client.execute(operation: "CreateDomain", path: "/2021-01-01/opensearch/domain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new cross-cluster connection from a local OpenSearch domain to a remote OpenSearch domain.
    public func createOutboundConnection(_ input: CreateOutboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOutboundConnectionResponse {
        return try await self.client.execute(operation: "CreateOutboundConnection", path: "/2021-01-01/opensearch/cc/outboundConnection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a package for use with Amazon OpenSearch Service domains.
    public func createPackage(_ input: CreatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePackageResponse {
        return try await self.client.execute(operation: "CreatePackage", path: "/2021-01-01/packages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes the specified domain and all of its data. Once a domain is deleted, it cannot be recovered.
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        return try await self.client.execute(operation: "DeleteDomain", path: "/2021-01-01/opensearch/domain/{DomainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the remote domain owner to delete an existing inbound cross-cluster connection.
    public func deleteInboundConnection(_ input: DeleteInboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInboundConnectionResponse {
        return try await self.client.execute(operation: "DeleteInboundConnection", path: "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the local domain owner to delete an existing outbound cross-cluster connection.
    public func deleteOutboundConnection(_ input: DeleteOutboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOutboundConnectionResponse {
        return try await self.client.execute(operation: "DeleteOutboundConnection", path: "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the package.
    public func deletePackage(_ input: DeletePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePackageResponse {
        return try await self.client.execute(operation: "DeletePackage", path: "/2021-01-01/packages/{PackageID}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns domain configuration information about the specified domain, including the domain ID, domain endpoint, and domain ARN.
    public func describeDomain(_ input: DescribeDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainResponse {
        return try await self.client.execute(operation: "DescribeDomain", path: "/2021-01-01/opensearch/domain/{DomainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides scheduled Auto-Tune action details for the domain, such as Auto-Tune action type, description, severity, and scheduled date.
    public func describeDomainAutoTunes(_ input: DescribeDomainAutoTunesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainAutoTunesResponse {
        return try await self.client.execute(operation: "DescribeDomainAutoTunes", path: "/2021-01-01/opensearch/domain/{DomainName}/autoTunes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the current blue/green deployment happening on a domain, including a change ID, status, and progress stages.
    public func describeDomainChangeProgress(_ input: DescribeDomainChangeProgressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainChangeProgressResponse {
        return try await self.client.execute(operation: "DescribeDomainChangeProgress", path: "/2021-01-01/opensearch/domain/{DomainName}/progress", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides cluster configuration information about the specified domain, such as the state, creation date, update version, and update date for cluster options.
    public func describeDomainConfig(_ input: DescribeDomainConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainConfigResponse {
        return try await self.client.execute(operation: "DescribeDomainConfig", path: "/2021-01-01/opensearch/domain/{DomainName}/config", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns domain configuration information about the specified domains, including the domain ID, domain endpoint, and domain ARN.
    public func describeDomains(_ input: DescribeDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        return try await self.client.execute(operation: "DescribeDomains", path: "/2021-01-01/opensearch/domain-info", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the inbound cross-cluster connections for a remote domain.
    public func describeInboundConnections(_ input: DescribeInboundConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInboundConnectionsResponse {
        return try await self.client.execute(operation: "DescribeInboundConnections", path: "/2021-01-01/opensearch/cc/inboundConnection/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describe the limits for a given instance type and OpenSearch or Elasticsearch version. When modifying an existing domain, specify the  DomainName  to see which limits you can modify.
    public func describeInstanceTypeLimits(_ input: DescribeInstanceTypeLimitsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTypeLimitsResponse {
        return try await self.client.execute(operation: "DescribeInstanceTypeLimits", path: "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the outbound cross-cluster connections for a local domain.
    public func describeOutboundConnections(_ input: DescribeOutboundConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOutboundConnectionsResponse {
        return try await self.client.execute(operation: "DescribeOutboundConnections", path: "/2021-01-01/opensearch/cc/outboundConnection/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes all packages available to Amazon OpenSearch Service domains. Includes options for filtering, limiting the number of results, and pagination.
    public func describePackages(_ input: DescribePackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        return try await self.client.execute(operation: "DescribePackages", path: "/2021-01-01/packages/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists available reserved OpenSearch instance offerings.
    public func describeReservedInstanceOfferings(_ input: DescribeReservedInstanceOfferingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstanceOfferingsResponse {
        return try await self.client.execute(operation: "DescribeReservedInstanceOfferings", path: "/2021-01-01/opensearch/reservedInstanceOfferings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about reserved OpenSearch instances for this account.
    public func describeReservedInstances(_ input: DescribeReservedInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstancesResponse {
        return try await self.client.execute(operation: "DescribeReservedInstances", path: "/2021-01-01/opensearch/reservedInstances", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Dissociates a package from the Amazon OpenSearch Service domain.
    public func dissociatePackage(_ input: DissociatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DissociatePackageResponse {
        return try await self.client.execute(operation: "DissociatePackage", path: "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of upgrade-compatible versions of OpenSearch/Elasticsearch. You can optionally pass a  DomainName  to get all upgrade-compatible versions of OpenSearch/Elasticsearch for that specific domain.
    public func getCompatibleVersions(_ input: GetCompatibleVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCompatibleVersionsResponse {
        return try await self.client.execute(operation: "GetCompatibleVersions", path: "/2021-01-01/opensearch/compatibleVersions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of package versions, along with their creation time and commit message.
    public func getPackageVersionHistory(_ input: GetPackageVersionHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPackageVersionHistoryResponse {
        return try await self.client.execute(operation: "GetPackageVersionHistory", path: "/2021-01-01/packages/{PackageID}/history", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the complete history of the last 10 upgrades performed on the domain.
    public func getUpgradeHistory(_ input: GetUpgradeHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeHistoryResponse {
        return try await self.client.execute(operation: "GetUpgradeHistory", path: "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the latest status of the last upgrade or upgrade eligibility check performed on the domain.
    public func getUpgradeStatus(_ input: GetUpgradeStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeStatusResponse {
        return try await self.client.execute(operation: "GetUpgradeStatus", path: "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the names of all domains owned by the current user's account.
    public func listDomainNames(_ input: ListDomainNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainNamesResponse {
        return try await self.client.execute(operation: "ListDomainNames", path: "/2021-01-01/domain", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Amazon OpenSearch Service domains associated with the package.
    public func listDomainsForPackage(_ input: ListDomainsForPackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsForPackageResponse {
        return try await self.client.execute(operation: "ListDomainsForPackage", path: "/2021-01-01/packages/{PackageID}/domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listInstanceTypeDetails(_ input: ListInstanceTypeDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInstanceTypeDetailsResponse {
        return try await self.client.execute(operation: "ListInstanceTypeDetails", path: "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all packages associated with the Amazon OpenSearch Service domain.
    public func listPackagesForDomain(_ input: ListPackagesForDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackagesForDomainResponse {
        return try await self.client.execute(operation: "ListPackagesForDomain", path: "/2021-01-01/domain/{DomainName}/packages", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all tags for the given domain.
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsResponse {
        return try await self.client.execute(operation: "ListTags", path: "/2021-01-01/tags/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all supported versions of OpenSearch and Elasticsearch.
    public func listVersions(_ input: ListVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVersionsResponse {
        return try await self.client.execute(operation: "ListVersions", path: "/2021-01-01/opensearch/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to purchase reserved OpenSearch instances.
    public func purchaseReservedInstanceOffering(_ input: PurchaseReservedInstanceOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurchaseReservedInstanceOfferingResponse {
        return try await self.client.execute(operation: "PurchaseReservedInstanceOffering", path: "/2021-01-01/opensearch/purchaseReservedInstanceOffering", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the remote domain owner to reject an inbound cross-cluster connection request.
    public func rejectInboundConnection(_ input: RejectInboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectInboundConnectionResponse {
        return try await self.client.execute(operation: "RejectInboundConnection", path: "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified set of tags from the given domain.
    public func removeTags(_ input: RemoveTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RemoveTags", path: "/2021-01-01/tags-removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Schedules a service software update for an Amazon OpenSearch Service domain.
    public func startServiceSoftwareUpdate(_ input: StartServiceSoftwareUpdateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartServiceSoftwareUpdateResponse {
        return try await self.client.execute(operation: "StartServiceSoftwareUpdate", path: "/2021-01-01/opensearch/serviceSoftwareUpdate/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the cluster configuration of the specified domain, such as setting the instance type and the number of instances.
    public func updateDomainConfig(_ input: UpdateDomainConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainConfigResponse {
        return try await self.client.execute(operation: "UpdateDomainConfig", path: "/2021-01-01/opensearch/domain/{DomainName}/config", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a package for use with Amazon OpenSearch Service domains.
    public func updatePackage(_ input: UpdatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePackageResponse {
        return try await self.client.execute(operation: "UpdatePackage", path: "/2021-01-01/packages/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to either upgrade your domain or perform an upgrade eligibility check to a compatible version of OpenSearch or Elasticsearch.
    public func upgradeDomain(_ input: UpgradeDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDomainResponse {
        return try await self.client.execute(operation: "UpgradeDomain", path: "/2021-01-01/opensearch/upgradeDomain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
