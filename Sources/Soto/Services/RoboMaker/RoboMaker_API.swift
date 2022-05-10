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

/// Service object for interacting with AWS RoboMaker service.
///
/// This section provides documentation for the AWS RoboMaker API operations.
public struct RoboMaker: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RoboMaker client
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
            service: "robomaker",
            serviceProtocol: .restjson,
            apiVersion: "2018-06-29",
            endpoint: endpoint,
            errorType: RoboMakerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Deletes one or more worlds in a batch operation.
    public func batchDeleteWorlds(_ input: BatchDeleteWorldsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteWorldsResponse> {
        return self.client.execute(operation: "BatchDeleteWorlds", path: "/batchDeleteWorlds", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes one or more simulation jobs.
    public func batchDescribeSimulationJob(_ input: BatchDescribeSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDescribeSimulationJobResponse> {
        return self.client.execute(operation: "BatchDescribeSimulationJob", path: "/batchDescribeSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified deployment job.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func cancelDeploymentJob(_ input: CancelDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelDeploymentJobResponse> {
        return self.client.execute(operation: "CancelDeploymentJob", path: "/cancelDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified simulation job.
    public func cancelSimulationJob(_ input: CancelSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelSimulationJobResponse> {
        return self.client.execute(operation: "CancelSimulationJob", path: "/cancelSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch.
    public func cancelSimulationJobBatch(_ input: CancelSimulationJobBatchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelSimulationJobBatchResponse> {
        return self.client.execute(operation: "CancelSimulationJobBatch", path: "/cancelSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified export job.
    public func cancelWorldExportJob(_ input: CancelWorldExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelWorldExportJobResponse> {
        return self.client.execute(operation: "CancelWorldExportJob", path: "/cancelWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified world generator job.
    public func cancelWorldGenerationJob(_ input: CancelWorldGenerationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelWorldGenerationJobResponse> {
        return self.client.execute(operation: "CancelWorldGenerationJob", path: "/cancelWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deploys a specific version of a robot application to robots in a fleet.  This API is no longer supported and will throw an error if used.  The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func createDeploymentJob(_ input: CreateDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeploymentJobResponse> {
        return self.client.execute(operation: "CreateDeploymentJob", path: "/createDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a fleet, a logical group of robots running the same robot application.  This API is no longer supported and will throw an error if used.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func createFleet(_ input: CreateFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFleetResponse> {
        return self.client.execute(operation: "CreateFleet", path: "/createFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a robot.  This API is no longer supported and will throw an error if used.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func createRobot(_ input: CreateRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRobotResponse> {
        return self.client.execute(operation: "CreateRobot", path: "/createRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a robot application.
    public func createRobotApplication(_ input: CreateRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRobotApplicationResponse> {
        return self.client.execute(operation: "CreateRobotApplication", path: "/createRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a version of a robot application.
    public func createRobotApplicationVersion(_ input: CreateRobotApplicationVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRobotApplicationVersionResponse> {
        return self.client.execute(operation: "CreateRobotApplicationVersion", path: "/createRobotApplicationVersion", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a simulation application.
    public func createSimulationApplication(_ input: CreateSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSimulationApplicationResponse> {
        return self.client.execute(operation: "CreateSimulationApplication", path: "/createSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a simulation application with a specific revision id.
    public func createSimulationApplicationVersion(_ input: CreateSimulationApplicationVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSimulationApplicationVersionResponse> {
        return self.client.execute(operation: "CreateSimulationApplicationVersion", path: "/createSimulationApplicationVersion", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.
    public func createSimulationJob(_ input: CreateSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSimulationJobResponse> {
        return self.client.execute(operation: "CreateSimulationJob", path: "/createSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a world export job.
    public func createWorldExportJob(_ input: CreateWorldExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorldExportJobResponse> {
        return self.client.execute(operation: "CreateWorldExportJob", path: "/createWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates worlds using the specified template.
    public func createWorldGenerationJob(_ input: CreateWorldGenerationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorldGenerationJobResponse> {
        return self.client.execute(operation: "CreateWorldGenerationJob", path: "/createWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a world template.
    public func createWorldTemplate(_ input: CreateWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorldTemplateResponse> {
        return self.client.execute(operation: "CreateWorldTemplate", path: "/createWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a fleet.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func deleteFleet(_ input: DeleteFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFleetResponse> {
        return self.client.execute(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a robot.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func deleteRobot(_ input: DeleteRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRobotResponse> {
        return self.client.execute(operation: "DeleteRobot", path: "/deleteRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a robot application.
    public func deleteRobotApplication(_ input: DeleteRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRobotApplicationResponse> {
        return self.client.execute(operation: "DeleteRobotApplication", path: "/deleteRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a simulation application.
    public func deleteSimulationApplication(_ input: DeleteSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSimulationApplicationResponse> {
        return self.client.execute(operation: "DeleteSimulationApplication", path: "/deleteSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a world template.
    public func deleteWorldTemplate(_ input: DeleteWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorldTemplateResponse> {
        return self.client.execute(operation: "DeleteWorldTemplate", path: "/deleteWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters a robot.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func deregisterRobot(_ input: DeregisterRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterRobotResponse> {
        return self.client.execute(operation: "DeregisterRobot", path: "/deregisterRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a deployment job.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func describeDeploymentJob(_ input: DescribeDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeploymentJobResponse> {
        return self.client.execute(operation: "DescribeDeploymentJob", path: "/describeDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a fleet.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func describeFleet(_ input: DescribeFleetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetResponse> {
        return self.client.execute(operation: "DescribeFleet", path: "/describeFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a robot.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func describeRobot(_ input: DescribeRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRobotResponse> {
        return self.client.execute(operation: "DescribeRobot", path: "/describeRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a robot application.
    public func describeRobotApplication(_ input: DescribeRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRobotApplicationResponse> {
        return self.client.execute(operation: "DescribeRobotApplication", path: "/describeRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a simulation application.
    public func describeSimulationApplication(_ input: DescribeSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimulationApplicationResponse> {
        return self.client.execute(operation: "DescribeSimulationApplication", path: "/describeSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a simulation job.
    public func describeSimulationJob(_ input: DescribeSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimulationJobResponse> {
        return self.client.execute(operation: "DescribeSimulationJob", path: "/describeSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a simulation job batch.
    public func describeSimulationJobBatch(_ input: DescribeSimulationJobBatchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimulationJobBatchResponse> {
        return self.client.execute(operation: "DescribeSimulationJobBatch", path: "/describeSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world.
    public func describeWorld(_ input: DescribeWorldRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorldResponse> {
        return self.client.execute(operation: "DescribeWorld", path: "/describeWorld", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world export job.
    public func describeWorldExportJob(_ input: DescribeWorldExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorldExportJobResponse> {
        return self.client.execute(operation: "DescribeWorldExportJob", path: "/describeWorldExportJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world generation job.
    public func describeWorldGenerationJob(_ input: DescribeWorldGenerationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorldGenerationJobResponse> {
        return self.client.execute(operation: "DescribeWorldGenerationJob", path: "/describeWorldGenerationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a world template.
    public func describeWorldTemplate(_ input: DescribeWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorldTemplateResponse> {
        return self.client.execute(operation: "DescribeWorldTemplate", path: "/describeWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the world template body.
    public func getWorldTemplateBody(_ input: GetWorldTemplateBodyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWorldTemplateBodyResponse> {
        return self.client.execute(operation: "GetWorldTemplateBody", path: "/getWorldTemplateBody", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func listDeploymentJobs(_ input: ListDeploymentJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDeploymentJobsResponse> {
        return self.client.execute(operation: "ListDeploymentJobs", path: "/listDeploymentJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of fleets. You can optionally provide filters to retrieve specific fleets.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func listFleets(_ input: ListFleetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFleetsResponse> {
        return self.client.execute(operation: "ListFleets", path: "/listFleets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplications(_ input: ListRobotApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRobotApplicationsResponse> {
        return self.client.execute(operation: "ListRobotApplications", path: "/listRobotApplications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of robots. You can optionally provide filters to retrieve specific robots.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func listRobots(_ input: ListRobotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRobotsResponse> {
        return self.client.execute(operation: "ListRobots", path: "/listRobots", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications.
    public func listSimulationApplications(_ input: ListSimulationApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSimulationApplicationsResponse> {
        return self.client.execute(operation: "ListSimulationApplications", path: "/listSimulationApplications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs.
    public func listSimulationJobBatches(_ input: ListSimulationJobBatchesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSimulationJobBatchesResponse> {
        return self.client.execute(operation: "ListSimulationJobBatches", path: "/listSimulationJobBatches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs.
    public func listSimulationJobs(_ input: ListSimulationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSimulationJobsResponse> {
        return self.client.execute(operation: "ListSimulationJobs", path: "/listSimulationJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags on a AWS RoboMaker resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists world export jobs.
    public func listWorldExportJobs(_ input: ListWorldExportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorldExportJobsResponse> {
        return self.client.execute(operation: "ListWorldExportJobs", path: "/listWorldExportJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists world generator jobs.
    public func listWorldGenerationJobs(_ input: ListWorldGenerationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorldGenerationJobsResponse> {
        return self.client.execute(operation: "ListWorldGenerationJobs", path: "/listWorldGenerationJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists world templates.
    public func listWorldTemplates(_ input: ListWorldTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorldTemplatesResponse> {
        return self.client.execute(operation: "ListWorldTemplates", path: "/listWorldTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists worlds.
    public func listWorlds(_ input: ListWorldsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorldsResponse> {
        return self.client.execute(operation: "ListWorlds", path: "/listWorlds", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers a robot with a fleet.  This API is no longer supported and will throw an error if used.
    @available(*, deprecated, message: "AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func registerRobot(_ input: RegisterRobotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterRobotResponse> {
        return self.client.execute(operation: "RegisterRobot", path: "/registerRobot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restarts a running simulation job.
    public func restartSimulationJob(_ input: RestartSimulationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartSimulationJobResponse> {
        return self.client.execute(operation: "RestartSimulationJob", path: "/restartSimulationJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a new simulation job batch. The batch is defined using one or more SimulationJobRequest objects.
    public func startSimulationJobBatch(_ input: StartSimulationJobBatchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSimulationJobBatchResponse> {
        return self.client.execute(operation: "StartSimulationJobBatch", path: "/startSimulationJobBatch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.  This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.
    @available(*, deprecated, message: "Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.")
    public func syncDeploymentJob(_ input: SyncDeploymentJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncDeploymentJobResponse> {
        return self.client.execute(operation: "SyncDeploymentJob", path: "/syncDeploymentJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource .
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a robot application.
    public func updateRobotApplication(_ input: UpdateRobotApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRobotApplicationResponse> {
        return self.client.execute(operation: "UpdateRobotApplication", path: "/updateRobotApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a simulation application.
    public func updateSimulationApplication(_ input: UpdateSimulationApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSimulationApplicationResponse> {
        return self.client.execute(operation: "UpdateSimulationApplication", path: "/updateSimulationApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a world template.
    public func updateWorldTemplate(_ input: UpdateWorldTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorldTemplateResponse> {
        return self.client.execute(operation: "UpdateWorldTemplate", path: "/updateWorldTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension RoboMaker {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: RoboMaker, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
