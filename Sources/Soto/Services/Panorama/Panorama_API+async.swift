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
extension Panorama {
    // MARK: Async API Calls

    /// Creates an application instance and deploys it to a device.
    public func createApplicationInstance(_ input: CreateApplicationInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationInstanceResponse {
        return try await self.client.execute(operation: "CreateApplicationInstance", path: "/application-instances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a job to run on one or more devices.
    public func createJobForDevices(_ input: CreateJobForDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateJobForDevicesResponse {
        return try await self.client.execute(operation: "CreateJobForDevices", path: "/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a camera stream node.
    public func createNodeFromTemplateJob(_ input: CreateNodeFromTemplateJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNodeFromTemplateJobResponse {
        return try await self.client.execute(operation: "CreateNodeFromTemplateJob", path: "/packages/template-job", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a package and storage location in an Amazon S3 access point.
    public func createPackage(_ input: CreatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePackageResponse {
        return try await self.client.execute(operation: "CreatePackage", path: "/packages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports a node package.
    public func createPackageImportJob(_ input: CreatePackageImportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePackageImportJobResponse {
        return try await self.client.execute(operation: "CreatePackageImportJob", path: "/packages/import-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a device.
    public func deleteDevice(_ input: DeleteDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceResponse {
        return try await self.client.execute(operation: "DeleteDevice", path: "/devices/{DeviceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a package.
    public func deletePackage(_ input: DeletePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePackageResponse {
        return try await self.client.execute(operation: "DeletePackage", path: "/packages/{PackageId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters a package version.
    public func deregisterPackageVersion(_ input: DeregisterPackageVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterPackageVersionResponse {
        return try await self.client.execute(operation: "DeregisterPackageVersion", path: "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an application instance on a device.
    public func describeApplicationInstance(_ input: DescribeApplicationInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationInstanceResponse {
        return try await self.client.execute(operation: "DescribeApplicationInstance", path: "/application-instances/{applicationInstanceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an application instance's configuration manifest.
    public func describeApplicationInstanceDetails(_ input: DescribeApplicationInstanceDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationInstanceDetailsResponse {
        return try await self.client.execute(operation: "DescribeApplicationInstanceDetails", path: "/application-instances/{applicationInstanceId}/details", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a device.
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResponse {
        return try await self.client.execute(operation: "DescribeDevice", path: "/devices/{DeviceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a device job.
    public func describeDeviceJob(_ input: DescribeDeviceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceJobResponse {
        return try await self.client.execute(operation: "DescribeDeviceJob", path: "/jobs/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a node.
    public func describeNode(_ input: DescribeNodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeResponse {
        return try await self.client.execute(operation: "DescribeNode", path: "/nodes/{NodeId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a job to create a camera stream node.
    public func describeNodeFromTemplateJob(_ input: DescribeNodeFromTemplateJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeFromTemplateJobResponse {
        return try await self.client.execute(operation: "DescribeNodeFromTemplateJob", path: "/packages/template-job/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a package.
    public func describePackage(_ input: DescribePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageResponse {
        return try await self.client.execute(operation: "DescribePackage", path: "/packages/metadata/{PackageId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a package import job.
    public func describePackageImportJob(_ input: DescribePackageImportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageImportJobResponse {
        return try await self.client.execute(operation: "DescribePackageImportJob", path: "/packages/import-jobs/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a package version.
    public func describePackageVersion(_ input: DescribePackageVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageVersionResponse {
        return try await self.client.execute(operation: "DescribePackageVersion", path: "/packages/metadata/{PackageId}/versions/{PackageVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of application instance dependencies.
    public func listApplicationInstanceDependencies(_ input: ListApplicationInstanceDependenciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationInstanceDependenciesResponse {
        return try await self.client.execute(operation: "ListApplicationInstanceDependencies", path: "/application-instances/{applicationInstanceId}/package-dependencies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of application node instances.
    public func listApplicationInstanceNodeInstances(_ input: ListApplicationInstanceNodeInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationInstanceNodeInstancesResponse {
        return try await self.client.execute(operation: "ListApplicationInstanceNodeInstances", path: "/application-instances/{applicationInstanceId}/node-instances", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of application instances.
    public func listApplicationInstances(_ input: ListApplicationInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationInstancesResponse {
        return try await self.client.execute(operation: "ListApplicationInstances", path: "/application-instances", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of devices.
    public func listDevices(_ input: ListDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicesResponse {
        return try await self.client.execute(operation: "ListDevices", path: "/devices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of jobs.
    public func listDevicesJobs(_ input: ListDevicesJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicesJobsResponse {
        return try await self.client.execute(operation: "ListDevicesJobs", path: "/jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of camera stream node jobs.
    public func listNodeFromTemplateJobs(_ input: ListNodeFromTemplateJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNodeFromTemplateJobsResponse {
        return try await self.client.execute(operation: "ListNodeFromTemplateJobs", path: "/packages/template-job", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of nodes.
    public func listNodes(_ input: ListNodesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNodesResponse {
        return try await self.client.execute(operation: "ListNodes", path: "/nodes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of package import jobs.
    public func listPackageImportJobs(_ input: ListPackageImportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackageImportJobsResponse {
        return try await self.client.execute(operation: "ListPackageImportJobs", path: "/packages/import-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of packages.
    public func listPackages(_ input: ListPackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackagesResponse {
        return try await self.client.execute(operation: "ListPackages", path: "/packages", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a provisioning certificate that is valid for 5 minutes. Transfer the configuration archive to the device with the included USB storage device within 5 minutes.
    public func provisionDevice(_ input: ProvisionDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProvisionDeviceResponse {
        return try await self.client.execute(operation: "ProvisionDevice", path: "/devices", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers a package version.
    public func registerPackageVersion(_ input: RegisterPackageVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterPackageVersionResponse {
        return try await self.client.execute(operation: "RegisterPackageVersion", path: "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an application instance.
    public func removeApplicationInstance(_ input: RemoveApplicationInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveApplicationInstanceResponse {
        return try await self.client.execute(operation: "RemoveApplicationInstance", path: "/application-instances/{applicationInstanceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a device's metadata.
    public func updateDeviceMetadata(_ input: UpdateDeviceMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeviceMetadataResponse {
        return try await self.client.execute(operation: "UpdateDeviceMetadata", path: "/devices/{DeviceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
