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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/InstallWidgetReceiver$2$_lancet;
    }
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

    .line 101
    iput-object p1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$providerName:Landroid/content/ComponentName;

    iput-wide p3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$screenId:J

    iput p5, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellX:I

    iput p6, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellY:I

    iput-object p7, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$resultRunnable:Lcom/miui/home/launcher/common/ResultRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 112
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

    .line 113
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

    .line 119
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 120
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 121
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 123
    iget-object v4, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v4, v3, v5, v1, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Launcher.InstallWidget"

    const-string v1, "bind widget failed"

    .line 124
    invoke-static {v0, v1}, Lcom/miui/home/launcher/InstallWidgetReceiver$2$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 129
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

    .line 132
    invoke-static {v0, v1}, Lcom/miui/home/launcher/InstallWidgetReceiver$2$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
