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
extension IoTTwinMaker {
    // MARK: Async API Calls

    /// Sets values for multiple time series properties.
    public func batchPutPropertyValues(_ input: BatchPutPropertyValuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchPutPropertyValuesResponse {
        return try await self.client.execute(operation: "BatchPutPropertyValues", path: "/workspaces/{workspaceId}/entity-properties", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Creates a component type.
    public func createComponentType(_ input: CreateComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComponentTypeResponse {
        return try await self.client.execute(operation: "CreateComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates an entity.
    public func createEntity(_ input: CreateEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEntityResponse {
        return try await self.client.execute(operation: "CreateEntity", path: "/workspaces/{workspaceId}/entities", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a scene.
    public func createScene(_ input: CreateSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSceneResponse {
        return try await self.client.execute(operation: "CreateScene", path: "/workspaces/{workspaceId}/scenes", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a workplace.
    public func createWorkspace(_ input: CreateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceResponse {
        return try await self.client.execute(operation: "CreateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a component type.
    public func deleteComponentType(_ input: DeleteComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteComponentTypeResponse {
        return try await self.client.execute(operation: "DeleteComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes an entity.
    public func deleteEntity(_ input: DeleteEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEntityResponse {
        return try await self.client.execute(operation: "DeleteEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a scene.
    public func deleteScene(_ input: DeleteSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSceneResponse {
        return try await self.client.execute(operation: "DeleteScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a workspace.
    public func deleteWorkspace(_ input: DeleteWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkspaceResponse {
        return try await self.client.execute(operation: "DeleteWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a component type.
    public func getComponentType(_ input: GetComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentTypeResponse {
        return try await self.client.execute(operation: "GetComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about an entity.
    public func getEntity(_ input: GetEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEntityResponse {
        return try await self.client.execute(operation: "GetEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets the property values for a component, component type, entity, or workspace. You must specify a value for either componentName, componentTypeId, entityId, or workspaceId.
    public func getPropertyValue(_ input: GetPropertyValueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPropertyValueResponse {
        return try await self.client.execute(operation: "GetPropertyValue", path: "/workspaces/{workspaceId}/entity-properties/value", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about the history of a time series property value for a component, component type, entity, or workspace. You must specify a value for workspaceId. For entity-specific queries, specify values for componentName and entityId. For cross-entity quries, specify a value for componentTypeId.
    public func getPropertyValueHistory(_ input: GetPropertyValueHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPropertyValueHistoryResponse {
        return try await self.client.execute(operation: "GetPropertyValueHistory", path: "/workspaces/{workspaceId}/entity-properties/history", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a scene.
    public func getScene(_ input: GetSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSceneResponse {
        return try await self.client.execute(operation: "GetScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a workspace.
    public func getWorkspace(_ input: GetWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkspaceResponse {
        return try await self.client.execute(operation: "GetWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all component types in a workspace.
    public func listComponentTypes(_ input: ListComponentTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentTypesResponse {
        return try await self.client.execute(operation: "ListComponentTypes", path: "/workspaces/{workspaceId}/component-types-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all entities in a workspace.
    public func listEntities(_ input: ListEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEntitiesResponse {
        return try await self.client.execute(operation: "ListEntities", path: "/workspaces/{workspaceId}/entities-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all scenes in a workspace.
    public func listScenes(_ input: ListScenesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScenesResponse {
        return try await self.client.execute(operation: "ListScenes", path: "/workspaces/{workspaceId}/scenes-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all tags associated with a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about workspaces in the current account.
    public func listWorkspaces(_ input: ListWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkspacesResponse {
        return try await self.client.execute(operation: "ListWorkspaces", path: "/workspaces-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates information in a component type.
    public func updateComponentType(_ input: UpdateComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateComponentTypeResponse {
        return try await self.client.execute(operation: "UpdateComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an entity.
    public func updateEntity(_ input: UpdateEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEntityResponse {
        return try await self.client.execute(operation: "UpdateEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a scene.
    public func updateScene(_ input: UpdateSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSceneResponse {
        return try await self.client.execute(operation: "UpdateScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a workspace.
    public func updateWorkspace(_ input: UpdateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkspaceResponse {
        return try await self.client.execute(operation: "UpdateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
