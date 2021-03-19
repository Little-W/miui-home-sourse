.class public abstract Lcom/tencent/matrix/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/tencent/matrix/listeners/IAppForeground;


# instance fields
.field private application:Landroid/app/Application;

.field private isSupported:Z

.field private pluginListener:Lcom/tencent/matrix/plugin/PluginListener;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/tencent/matrix/plugin/Plugin;->isSupported:Z

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/tencent/matrix/plugin/Plugin;->status:I

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDetectIssue(Lcom/tencent/matrix/report/Issue;)V
    .locals 5

    .line 64
    invoke-virtual {p1}, Lcom/tencent/matrix/report/Issue;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/tencent/matrix/plugin/Plugin;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/matrix/report/Issue;->setTag(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p1, p0}, Lcom/tencent/matrix/report/Issue;->setPlugin(Lcom/tencent/matrix/plugin/Plugin;)V

    .line 69
    invoke-virtual {p1}, Lcom/tencent/matrix/report/Issue;->getContent()Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/matrix/report/Issue;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "tag"

    .line 73
    invoke-virtual {p1}, Lcom/tencent/matrix/report/Issue;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/matrix/report/Issue;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "type"

    .line 76
    invoke-virtual {p1}, Lcom/tencent/matrix/report/Issue;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "process"

    .line 78
    iget-object v2, p0, Lcom/tencent/matrix/plugin/Plugin;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/tencent/matrix/util/MatrixUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Matrix.Plugin"

    const-string v2, "json error"

    const/4 v3, 0x1

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/tencent/matrix/plugin/Plugin;->pluginListener:Lcom/tencent/matrix/plugin/PluginListener;

    invoke-interface {v0, p1}, Lcom/tencent/matrix/plugin/PluginListener;->onReportIssue(Lcom/tencent/matrix/report/Issue;)V

    return-void
.end method

.method public onForeground(Z)V
    .locals 0

    return-void
.end method
