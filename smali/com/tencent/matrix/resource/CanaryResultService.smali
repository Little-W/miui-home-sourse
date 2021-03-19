.class public Lcom/tencent/matrix/resource/CanaryResultService;
.super Lcom/tencent/matrix/resource/MatrixJobIntentService;
.source "CanaryResultService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tencent/matrix/resource/MatrixJobIntentService;-><init>()V

    return-void
.end method

.method private doReportHprofResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "resultZipPath"

    .line 75
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "activity"

    .line 76
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-static {}, Lcom/tencent/matrix/Matrix;->with()Lcom/tencent/matrix/Matrix;

    move-result-object p1

    const-class p2, Lcom/tencent/matrix/resource/ResourcePlugin;

    invoke-virtual {p1, p2}, Lcom/tencent/matrix/Matrix;->getPluginByClass(Ljava/lang/Class;)Lcom/tencent/matrix/plugin/Plugin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    new-instance p2, Lcom/tencent/matrix/report/Issue;

    invoke-direct {p2, v0}, Lcom/tencent/matrix/report/Issue;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/tencent/matrix/plugin/Plugin;->onDetectIssue(Lcom/tencent/matrix/report/Issue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Matrix.CanaryResultService"

    const-string v0, "unexpected exception, skip reporting."

    const/4 v1, 0x0

    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lcom/tencent/matrix/util/MatrixLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static reportHprofResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/matrix/resource/CanaryResultService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.tencent.matrix.resource.result.action.REPORT_HPROF_RESULT"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RESULT_PATH"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RESULT_ACTIVITY"

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-class p1, Lcom/tencent/matrix/resource/CanaryResultService;

    const p2, -0x5040302

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/matrix/resource/CanaryResultService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.matrix.resource.result.action.REPORT_HPROF_RESULT"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RESULT_PATH"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESULT_ACTIVITY"

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-direct {p0, v0, p1}, Lcom/tencent/matrix/resource/CanaryResultService;->doReportHprofResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Matrix.CanaryResultService"

    const-string v0, "resultPath or activityName is null or empty, skip reporting."

    const/4 v1, 0x0

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
