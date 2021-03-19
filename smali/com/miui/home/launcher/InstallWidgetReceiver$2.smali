.class final Lcom/miui/home/launcher/InstallWidgetReceiver$2;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallWidgetReceiver;->addWidget(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;JIILcom/miui/home/launcher/common/ResultRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$providerName:Landroid/content/ComponentName;

.field final synthetic val$resultRunnable:Lcom/miui/home/launcher/common/ResultRunnable;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;JIILcom/miui/home/launcher/common/ResultRunnable;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$providerName:Landroid/content/ComponentName;

    iput-wide p3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$screenId:J

    iput p5, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellX:I

    iput p6, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellY:I

    iput-object p7, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$resultRunnable:Lcom/miui/home/launcher/common/ResultRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 122
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$providerName:Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 128
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 129
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 130
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 132
    iget-object v4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v4, v3, v5, v1, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Launcher.InstallWidget"

    const-string v1, "bind widget failed"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 138
    iget-object v2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-wide v4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$screenId:J

    const-wide/16 v6, -0x64

    iget v8, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellX:I

    iget v9, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellY:I

    iget-object v10, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$resultRunnable:Lcom/miui/home/launcher/common/ResultRunnable;

    move-object v3, v1

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    const-string v0, "Launcher.InstallWidget"

    const-string v1, "provider not installed"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
