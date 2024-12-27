import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = ""
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("aicontent", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    public func getEndpoint(_ productId: String, _ regionId: String, _ endpointRule: String, _ network: String, _ suffix: String, _ endpointMap: [String: String], _ endpoint: String) throws -> String {
        if (!TeaUtils.Client.empty(endpoint)) {
            return endpoint as! String
        }
        if (!TeaUtils.Client.isUnset(endpointMap) && !TeaUtils.Client.empty(endpointMap[regionId as! String])) {
            return endpointMap[regionId as! String] ?? ""
        }
        return try AlibabacloudEndpointUtil.Client.getEndpointRules(productId, regionId, endpointRule, network, suffix)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aITeacherExpansionPracticeTaskGenerateWithOptions(_ request: AITeacherExpansionPracticeTaskGenerateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AITeacherExpansionPracticeTaskGenerateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.grade)) {
            body["grade"] = request.grade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keySentences)) {
            body["keySentences"] = request.keySentences ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keyWords)) {
            body["keyWords"] = request.keyWords ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.learningObject)) {
            body["learningObject"] = request.learningObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["textContent"] = request.textContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textbook)) {
            body["textbook"] = request.textbook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AITeacherExpansionPracticeTaskGenerate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/generateTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AITeacherExpansionPracticeTaskGenerateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aITeacherExpansionPracticeTaskGenerate(_ request: AITeacherExpansionPracticeTaskGenerateRequest) async throws -> AITeacherExpansionPracticeTaskGenerateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aITeacherExpansionPracticeTaskGenerateWithOptions(request as! AITeacherExpansionPracticeTaskGenerateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aITeacherSyncPracticeTaskGenerateWithOptions(_ request: AITeacherSyncPracticeTaskGenerateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AITeacherSyncPracticeTaskGenerateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.grade)) {
            body["grade"] = request.grade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keySentences)) {
            body["keySentences"] = request.keySentences ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.keyWords)) {
            body["keyWords"] = request.keyWords ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.learningObject)) {
            body["learningObject"] = request.learningObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textContent)) {
            body["textContent"] = request.textContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.textbook)) {
            body["textbook"] = request.textbook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AITeacherSyncPracticeTaskGenerate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/generateTask",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AITeacherSyncPracticeTaskGenerateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aITeacherSyncPracticeTaskGenerate(_ request: AITeacherSyncPracticeTaskGenerateRequest) async throws -> AITeacherSyncPracticeTaskGenerateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aITeacherSyncPracticeTaskGenerateWithOptions(request as! AITeacherSyncPracticeTaskGenerateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServcieListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AliyunConsoleOpenApiQueryAliyunConsoleServcieList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aliyunconsole/queryAliyunConsoleServcieList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServcieList() async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServcieListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aliyunConsoleOpenApiQueryAliyunConsoleServcieListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServiceListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AliyunConsoleOpenApiQueryAliyunConsoleServiceList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aliyunconsole/queryAliyunConsoleServiceList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func aliyunConsoleOpenApiQueryAliyunConsoleServiceList() async throws -> AliyunConsoleOpenApiQueryAliyunConsoleServiceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await aliyunConsoleOpenApiQueryAliyunConsoleServiceListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueWithOptions(_ request: ExecuteAITeacherExpansionDialogueRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherExpansionDialogueResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherExpansionDialogue",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/executeExpansionTraining",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherExpansionDialogueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogue(_ request: ExecuteAITeacherExpansionDialogueRequest) async throws -> ExecuteAITeacherExpansionDialogueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherExpansionDialogueWithOptions(request as! ExecuteAITeacherExpansionDialogueRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueRefineWithOptions(_ request: ExecuteAITeacherExpansionDialogueRefineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherExpansionDialogueRefineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherExpansionDialogueRefine",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/refineByContext",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherExpansionDialogueRefineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueRefine(_ request: ExecuteAITeacherExpansionDialogueRefineRequest) async throws -> ExecuteAITeacherExpansionDialogueRefineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherExpansionDialogueRefineWithOptions(request as! ExecuteAITeacherExpansionDialogueRefineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueTranslateWithOptions(_ request: ExecuteAITeacherExpansionDialogueTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherExpansionDialogueTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherExpansionDialogueTranslate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/translate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherExpansionDialogueTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherExpansionDialogueTranslate(_ request: ExecuteAITeacherExpansionDialogueTranslateRequest) async throws -> ExecuteAITeacherExpansionDialogueTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherExpansionDialogueTranslateWithOptions(request as! ExecuteAITeacherExpansionDialogueTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherGrammarCheckWithOptions(_ request: ExecuteAITeacherGrammarCheckRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherGrammarCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherGrammarCheck",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/common/grammarChecking",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherGrammarCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherGrammarCheck(_ request: ExecuteAITeacherGrammarCheckRequest) async throws -> ExecuteAITeacherGrammarCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherGrammarCheckWithOptions(request as! ExecuteAITeacherGrammarCheckRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogueWithOptions(_ request: ExecuteAITeacherSyncDialogueRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherSyncDialogueResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherSyncDialogue",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/executeSyncTraining",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherSyncDialogueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogue(_ request: ExecuteAITeacherSyncDialogueRequest) async throws -> ExecuteAITeacherSyncDialogueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherSyncDialogueWithOptions(request as! ExecuteAITeacherSyncDialogueRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogueTranslateWithOptions(_ request: ExecuteAITeacherSyncDialogueTranslateRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteAITeacherSyncDialogueTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteAITeacherSyncDialogueTranslate",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/translate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteAITeacherSyncDialogueTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeAITeacherSyncDialogueTranslate(_ request: ExecuteAITeacherSyncDialogueTranslateRequest) async throws -> ExecuteAITeacherSyncDialogueTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await executeAITeacherSyncDialogueTranslateWithOptions(request as! ExecuteAITeacherSyncDialogueTranslateRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherExpansionDialogueSuggestionWithOptions(_ request: GetAITeacherExpansionDialogueSuggestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAITeacherExpansionDialogueSuggestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.background)) {
            body["background"] = request.background ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.roleInfo)) {
            body["roleInfo"] = request.roleInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.startSentence)) {
            body["startSentence"] = request.startSentence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            body["topic"] = request.topic ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAITeacherExpansionDialogueSuggestion",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/expansionPractice/suggestion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAITeacherExpansionDialogueSuggestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherExpansionDialogueSuggestion(_ request: GetAITeacherExpansionDialogueSuggestionRequest) async throws -> GetAITeacherExpansionDialogueSuggestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAITeacherExpansionDialogueSuggestionWithOptions(request as! GetAITeacherExpansionDialogueSuggestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherSyncDialogueSuggestionWithOptions(_ request: GetAITeacherSyncDialogueSuggestionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAITeacherSyncDialogueSuggestionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dialogueTasks)) {
            body["dialogueTasks"] = request.dialogueTasks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.languageCode)) {
            body["languageCode"] = request.languageCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.records)) {
            body["records"] = request.records ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAITeacherSyncDialogueSuggestion",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/aiteacher/syncPractice/suggestion",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAITeacherSyncDialogueSuggestionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAITeacherSyncDialogueSuggestion(_ request: GetAITeacherSyncDialogueSuggestionRequest) async throws -> GetAITeacherSyncDialogueSuggestionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAITeacherSyncDialogueSuggestionWithOptions(request as! GetAITeacherSyncDialogueSuggestionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageAddInferenceJobWithOptions(_ request: PersonalizedTextToImageAddInferenceJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageAddInferenceJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageNumber)) {
            body["imageNumber"] = request.imageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        if (!TeaUtils.Client.isUnset(request.strength)) {
            body["strength"] = request.strength!;
        }
        if (!TeaUtils.Client.isUnset(request.trainSteps)) {
            body["trainSteps"] = request.trainSteps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageAddInferenceJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addPreModelInferenceJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageAddInferenceJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageAddInferenceJob(_ request: PersonalizedTextToImageAddInferenceJobRequest) async throws -> PersonalizedTextToImageAddInferenceJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageAddInferenceJobWithOptions(request as! PersonalizedTextToImageAddInferenceJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryImageAssetWithOptions(_ request: PersonalizedTextToImageQueryImageAssetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageQueryImageAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            query["encodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["imageId"] = request.imageId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageQueryImageAsset",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryImageAssetFromImageId",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "any"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageQueryImageAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryImageAsset(_ request: PersonalizedTextToImageQueryImageAssetRequest) async throws -> PersonalizedTextToImageQueryImageAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageQueryImageAssetWithOptions(request as! PersonalizedTextToImageQueryImageAssetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryPreModelInferenceJobInfoWithOptions(_ request: PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inferenceJobId)) {
            query["inferenceJobId"] = request.inferenceJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PersonalizedTextToImageQueryPreModelInferenceJobInfo",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryPreModelInferenceJobInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedTextToImageQueryPreModelInferenceJobInfo(_ request: PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest) async throws -> PersonalizedTextToImageQueryPreModelInferenceJobInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedTextToImageQueryPreModelInferenceJobInfoWithOptions(request as! PersonalizedTextToImageQueryPreModelInferenceJobInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddInferenceJobWithOptions(_ request: Personalizedtxt2imgAddInferenceJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgAddInferenceJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageNumber)) {
            body["imageNumber"] = request.imageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seed)) {
            body["seed"] = request.seed!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgAddInferenceJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addInferenceJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgAddInferenceJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddInferenceJob(_ request: Personalizedtxt2imgAddInferenceJobRequest) async throws -> Personalizedtxt2imgAddInferenceJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgAddInferenceJobWithOptions(request as! Personalizedtxt2imgAddInferenceJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddModelTrainJobWithOptions(_ request: Personalizedtxt2imgAddModelTrainJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgAddModelTrainJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            body["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trainSteps)) {
            body["trainSteps"] = request.trainSteps!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgAddModelTrainJob",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/addModelTrainJob",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgAddModelTrainJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgAddModelTrainJob(_ request: Personalizedtxt2imgAddModelTrainJobRequest) async throws -> Personalizedtxt2imgAddModelTrainJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgAddModelTrainJobWithOptions(request as! Personalizedtxt2imgAddModelTrainJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryImageAssetWithOptions(_ request: Personalizedtxt2imgQueryImageAssetRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryImageAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.encodeFormat)) {
            query["encodeFormat"] = request.encodeFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["imageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptId)) {
            query["promptId"] = request.promptId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryImageAsset",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryImageAsset",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "any"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryImageAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryImageAsset(_ request: Personalizedtxt2imgQueryImageAssetRequest) async throws -> Personalizedtxt2imgQueryImageAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryImageAssetWithOptions(request as! Personalizedtxt2imgQueryImageAssetRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryInferenceJobInfoWithOptions(_ request: Personalizedtxt2imgQueryInferenceJobInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryInferenceJobInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inferenceJobId)) {
            query["inferenceJobId"] = request.inferenceJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryInferenceJobInfo",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryInferenceJobInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryInferenceJobInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryInferenceJobInfo(_ request: Personalizedtxt2imgQueryInferenceJobInfoRequest) async throws -> Personalizedtxt2imgQueryInferenceJobInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryInferenceJobInfoWithOptions(request as! Personalizedtxt2imgQueryInferenceJobInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainJobListWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryModelTrainJobListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryModelTrainJobList",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryModelTrainJobList",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryModelTrainJobListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainJobList() async throws -> Personalizedtxt2imgQueryModelTrainJobListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryModelTrainJobListWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainStatusWithOptions(_ request: Personalizedtxt2imgQueryModelTrainStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> Personalizedtxt2imgQueryModelTrainStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["modelId"] = request.modelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Personalizedtxt2imgQueryModelTrainStatus",
            "version": "20240611",
            "protocol": "HTTPS",
            "pathname": "/api/v1/personalizedtxt2img/queryModelTrainStatus",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(Personalizedtxt2imgQueryModelTrainStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func personalizedtxt2imgQueryModelTrainStatus(_ request: Personalizedtxt2imgQueryModelTrainStatusRequest) async throws -> Personalizedtxt2imgQueryModelTrainStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await personalizedtxt2imgQueryModelTrainStatusWithOptions(request as! Personalizedtxt2imgQueryModelTrainStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
