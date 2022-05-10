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

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Glue {
    ///  Retrieves the details of blueprint runs for a specified blueprint.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBlueprintRunsPaginator(
        _ input: GetBlueprintRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBlueprintRunsRequest, GetBlueprintRunsResponse> {
        return .init(
            input: input,
            command: getBlueprintRuns,
            inputKey: \GetBlueprintRunsRequest.nextToken,
            outputKey: \GetBlueprintRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all classifier objects in the Data Catalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getClassifiersPaginator(
        _ input: GetClassifiersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetClassifiersRequest, GetClassifiersResponse> {
        return .init(
            input: input,
            command: getClassifiers,
            inputKey: \GetClassifiersRequest.nextToken,
            outputKey: \GetClassifiersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of connection definitions from the Data Catalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getConnectionsPaginator(
        _ input: GetConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetConnectionsRequest, GetConnectionsResponse> {
        return .init(
            input: input,
            command: getConnections,
            inputKey: \GetConnectionsRequest.nextToken,
            outputKey: \GetConnectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves metrics about specified crawlers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCrawlerMetricsPaginator(
        _ input: GetCrawlerMetricsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCrawlerMetricsRequest, GetCrawlerMetricsResponse> {
        return .init(
            input: input,
            command: getCrawlerMetrics,
            inputKey: \GetCrawlerMetricsRequest.nextToken,
            outputKey: \GetCrawlerMetricsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves metadata for all crawlers defined in the customer account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCrawlersPaginator(
        _ input: GetCrawlersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCrawlersRequest, GetCrawlersResponse> {
        return .init(
            input: input,
            command: getCrawlers,
            inputKey: \GetCrawlersRequest.nextToken,
            outputKey: \GetCrawlersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all databases defined in a given Data Catalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDatabasesPaginator(
        _ input: GetDatabasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDatabasesRequest, GetDatabasesResponse> {
        return .init(
            input: input,
            command: getDatabases,
            inputKey: \GetDatabasesRequest.nextToken,
            outputKey: \GetDatabasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all the development endpoints in this AWS account.  When you create a development endpoint in a virtual private cloud (VPC), Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, Glue returns only a public IP address.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDevEndpointsPaginator(
        _ input: GetDevEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDevEndpointsRequest, GetDevEndpointsResponse> {
        return .init(
            input: input,
            command: getDevEndpoints,
            inputKey: \GetDevEndpointsRequest.nextToken,
            outputKey: \GetDevEndpointsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves metadata for all runs of a given job definition.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getJobRunsPaginator(
        _ input: GetJobRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetJobRunsRequest, GetJobRunsResponse> {
        return .init(
            input: input,
            command: getJobRuns,
            inputKey: \GetJobRunsRequest.nextToken,
            outputKey: \GetJobRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all current job definitions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getJobsPaginator(
        _ input: GetJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetJobsRequest, GetJobsResponse> {
        return .init(
            input: input,
            command: getJobs,
            inputKey: \GetJobsRequest.nextToken,
            outputKey: \GetJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of runs for a machine learning transform. Machine learning task runs are asynchronous tasks that Glue runs on your behalf as part of various machine learning workflows. You can get a sortable, filterable list of machine learning task runs by calling GetMLTaskRuns with their parent transform's TransformID and other optional parameters as documented in this section. This operation returns a list of historic runs and must be paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getMLTaskRunsPaginator(
        _ input: GetMLTaskRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetMLTaskRunsRequest, GetMLTaskRunsResponse> {
        return .init(
            input: input,
            command: getMLTaskRuns,
            inputKey: \GetMLTaskRunsRequest.nextToken,
            outputKey: \GetMLTaskRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a sortable, filterable list of existing Glue machine learning transforms. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by Glue, and you can retrieve their metadata by calling GetMLTransforms.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getMLTransformsPaginator(
        _ input: GetMLTransformsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetMLTransformsRequest, GetMLTransformsResponse> {
        return .init(
            input: input,
            command: getMLTransforms,
            inputKey: \GetMLTransformsRequest.nextToken,
            outputKey: \GetMLTransformsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the partition indexes associated with a table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getPartitionIndexesPaginator(
        _ input: GetPartitionIndexesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetPartitionIndexesRequest, GetPartitionIndexesResponse> {
        return .init(
            input: input,
            command: getPartitionIndexes,
            inputKey: \GetPartitionIndexesRequest.nextToken,
            outputKey: \GetPartitionIndexesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about the partitions in a table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getPartitionsPaginator(
        _ input: GetPartitionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetPartitionsRequest, GetPartitionsResponse> {
        return .init(
            input: input,
            command: getPartitions,
            inputKey: \GetPartitionsRequest.nextToken,
            outputKey: \GetPartitionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the resource policies set on individual resources by Resource Access Manager during cross-account permission grants. Also retrieves the Data Catalog resource policy. If you enabled metadata encryption in Data Catalog settings, and you do not have permission on the KMS key, the operation can't return the Data Catalog resource policy.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourcePoliciesPaginator(
        _ input: GetResourcePoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourcePoliciesRequest, GetResourcePoliciesResponse> {
        return .init(
            input: input,
            command: getResourcePolicies,
            inputKey: \GetResourcePoliciesRequest.nextToken,
            outputKey: \GetResourcePoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of all security configurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSecurityConfigurationsPaginator(
        _ input: GetSecurityConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSecurityConfigurationsRequest, GetSecurityConfigurationsResponse> {
        return .init(
            input: input,
            command: getSecurityConfigurations,
            inputKey: \GetSecurityConfigurationsRequest.nextToken,
            outputKey: \GetSecurityConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of strings that identify available versions of a specified table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTableVersionsPaginator(
        _ input: GetTableVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTableVersionsRequest, GetTableVersionsResponse> {
        return .init(
            input: input,
            command: getTableVersions,
            inputKey: \GetTableVersionsRequest.nextToken,
            outputKey: \GetTableVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the definitions of some or all of the tables in a given Database.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTablesPaginator(
        _ input: GetTablesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTablesRequest, GetTablesResponse> {
        return .init(
            input: input,
            command: getTables,
            inputKey: \GetTablesRequest.nextToken,
            outputKey: \GetTablesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets all the triggers associated with a job.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTriggersPaginator(
        _ input: GetTriggersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTriggersRequest, GetTriggersResponse> {
        return .init(
            input: input,
            command: getTriggers,
            inputKey: \GetTriggersRequest.nextToken,
            outputKey: \GetTriggersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUnfilteredPartitionsMetadataPaginator(
        _ input: GetUnfilteredPartitionsMetadataRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUnfilteredPartitionsMetadataRequest, GetUnfilteredPartitionsMetadataResponse> {
        return .init(
            input: input,
            command: getUnfilteredPartitionsMetadata,
            inputKey: \GetUnfilteredPartitionsMetadataRequest.nextToken,
            outputKey: \GetUnfilteredPartitionsMetadataResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves multiple function definitions from the Data Catalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUserDefinedFunctionsPaginator(
        _ input: GetUserDefinedFunctionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUserDefinedFunctionsRequest, GetUserDefinedFunctionsResponse> {
        return .init(
            input: input,
            command: getUserDefinedFunctions,
            inputKey: \GetUserDefinedFunctionsRequest.nextToken,
            outputKey: \GetUserDefinedFunctionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves metadata for all runs of a given workflow.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getWorkflowRunsPaginator(
        _ input: GetWorkflowRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetWorkflowRunsRequest, GetWorkflowRunsResponse> {
        return .init(
            input: input,
            command: getWorkflowRuns,
            inputKey: \GetWorkflowRunsRequest.nextToken,
            outputKey: \GetWorkflowRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the blueprint names in an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBlueprintsPaginator(
        _ input: ListBlueprintsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBlueprintsRequest, ListBlueprintsResponse> {
        return .init(
            input: input,
            command: listBlueprints,
            inputKey: \ListBlueprintsRequest.nextToken,
            outputKey: \ListBlueprintsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the names of all crawler resources in this Amazon Web Services account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCrawlersPaginator(
        _ input: ListCrawlersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCrawlersRequest, ListCrawlersResponse> {
        return .init(
            input: input,
            command: listCrawlers,
            inputKey: \ListCrawlersRequest.nextToken,
            outputKey: \ListCrawlersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the custom patterns that have been created.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomEntityTypesPaginator(
        _ input: ListCustomEntityTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomEntityTypesRequest, ListCustomEntityTypesResponse> {
        return .init(
            input: input,
            command: listCustomEntityTypes,
            inputKey: \ListCustomEntityTypesRequest.nextToken,
            outputKey: \ListCustomEntityTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the names of all DevEndpoint resources in this Amazon Web Services account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDevEndpointsPaginator(
        _ input: ListDevEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDevEndpointsRequest, ListDevEndpointsResponse> {
        return .init(
            input: input,
            command: listDevEndpoints,
            inputKey: \ListDevEndpointsRequest.nextToken,
            outputKey: \ListDevEndpointsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the names of all job resources in this Amazon Web Services account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResponse> {
        return .init(
            input: input,
            command: listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Retrieves a sortable, filterable list of existing Glue machine learning transforms in this Amazon Web Services account, or the resources with the specified tag. This operation takes the optional Tags field, which you can use as a filter of the responses so that tagged resources can be retrieved as a group. If you choose to use tag filtering, only resources with the tags are retrieved.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMLTransformsPaginator(
        _ input: ListMLTransformsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMLTransformsRequest, ListMLTransformsResponse> {
        return .init(
            input: input,
            command: listMLTransforms,
            inputKey: \ListMLTransformsRequest.nextToken,
            outputKey: \ListMLTransformsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of registries that you have created, with minimal registry information. Registries in the Deleting status will not be included in the results. Empty results will be returned if there are no registries available.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRegistriesPaginator(
        _ input: ListRegistriesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRegistriesInput, ListRegistriesResponse> {
        return .init(
            input: input,
            command: listRegistries,
            inputKey: \ListRegistriesInput.nextToken,
            outputKey: \ListRegistriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of schema versions that you have created, with minimal information. Schema versions in Deleted status will not be included in the results. Empty results will be returned if there are no schema versions available.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemaVersionsPaginator(
        _ input: ListSchemaVersionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemaVersionsInput, ListSchemaVersionsResponse> {
        return .init(
            input: input,
            command: listSchemaVersions,
            inputKey: \ListSchemaVersionsInput.nextToken,
            outputKey: \ListSchemaVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of schemas with minimal details. Schemas in Deleting status will not be included in the results. Empty results will be returned if there are no schemas available. When the RegistryId is not provided, all the schemas across registries will be part of the API response.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemasPaginator(
        _ input: ListSchemasInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemasInput, ListSchemasResponse> {
        return .init(
            input: input,
            command: listSchemas,
            inputKey: \ListSchemasInput.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieve a session..
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSessionsPaginator(
        _ input: ListSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSessionsRequest, ListSessionsResponse> {
        return .init(
            input: input,
            command: listSessions,
            inputKey: \ListSessionsRequest.nextToken,
            outputKey: \ListSessionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the names of all trigger resources in this Amazon Web Services account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTriggersPaginator(
        _ input: ListTriggersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTriggersRequest, ListTriggersResponse> {
        return .init(
            input: input,
            command: listTriggers,
            inputKey: \ListTriggersRequest.nextToken,
            outputKey: \ListTriggersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists names of workflows created in the account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkflowsPaginator(
        _ input: ListWorkflowsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkflowsRequest, ListWorkflowsResponse> {
        return .init(
            input: input,
            command: listWorkflows,
            inputKey: \ListWorkflowsRequest.nextToken,
            outputKey: \ListWorkflowsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches a set of tables based on properties in the table metadata as well as on the parent database. You can search against text or filter conditions.  You can only get tables that you have access to based on the security policies defined in Lake Formation. You need at least a read-only access to the table for it to be returned. If you do not have access to all the columns in the table, these columns will not be searched against when returning the list of tables back to you. If you have access to the columns but not the data in the columns, those columns and the associated metadata for those columns will be included in the search.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchTablesPaginator(
        _ input: SearchTablesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchTablesRequest, SearchTablesResponse> {
        return .init(
            input: input,
            command: searchTables,
            inputKey: \SearchTablesRequest.nextToken,
            outputKey: \SearchTablesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
