.class Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityHideMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$1;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;-><init>(Lcom/miui/home/launcher/LauncherModel;)V

    return-void
.end method

.method static synthetic lambda$updateSecurityHideApps$1(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private updateSecurityHideApps(Lcom/miui/home/launcher/Launcher;)V
    .locals 9

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 256
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/launcher/utils/PortableUtils;->launcherApps_getActivityList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;

    .line 258
    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    .line 259
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 261
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v3

    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;Z)V

    goto :goto_0

    .line 265
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 274
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p0

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;

    invoke-direct {v2, p1, v0, v1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onMessageEvent$0$LauncherModel$SecurityHideMessageHandler(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->updateSecurityHideApps(Lcom/miui/home/launcher/Launcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSecurityHideApps err:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Model"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SecurityHideMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 239
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mIDglMKqSUld5PYAjSRb2Iy8EfQ;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mIDglMKqSUld5PYAjSRb2Iy8EfQ;-><init>(Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method
