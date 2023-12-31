.class Lcom/miui/home/launcher/InstallWidgetReceiver$2;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallWidgetReceiver;->addWidget(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;JIILcom/miui/home/launcher/common/ResultRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$addWidgetCallback:Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;

.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$providerName:Landroid/content/ComponentName;

.field final synthetic val$resultRunnable:Lcom/miui/home/launcher/common/ResultRunnable;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;JIILcom/miui/home/launcher/common/ResultRunnable;Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$providerName:Landroid/content/ComponentName;

    iput-wide p3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$screenId:J

    iput p5, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellX:I

    iput p6, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellY:I

    iput-object p7, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$resultRunnable:Lcom/miui/home/launcher/common/ResultRunnable;

    iput-object p8, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$addWidgetCallback:Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 134
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$providerName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    const-string v0, "Launcher.InstallWidget"

    if-eqz v1, :cond_4

    .line 140
    iget-object v2, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 144
    invoke-static {v2}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object v4

    .line 145
    iget-object v5, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, v4}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "appWidgetId"

    .line 148
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget-object v5, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    .line 150
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 149
    invoke-static {v5, v3, v6, v1, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "bind widget failed"

    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_3
    new-instance v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v6, v3, v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 155
    iget-object v5, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-wide v7, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$screenId:J

    const-wide/16 v9, -0x64

    iget v11, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellX:I

    iget v12, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$cellY:I

    iget-object v13, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$resultRunnable:Lcom/miui/home/launcher/common/ResultRunnable;

    invoke-virtual/range {v5 .. v13}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    .line 158
    iget-object p0, p0, Lcom/miui/home/launcher/InstallWidgetReceiver$2;->val$addWidgetCallback:Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;

    if-eqz p0, :cond_5

    .line 159
    invoke-interface {p0, v4}, Lcom/miui/home/launcher/AddItemActivity$AddWidgetSuccessCallback;->onWidgetAdded(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string p0, "provider not installed"

    .line 162
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
