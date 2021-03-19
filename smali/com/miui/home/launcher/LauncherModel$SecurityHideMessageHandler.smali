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

    .line 208
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/LauncherModel$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;-><init>(Lcom/miui/home/launcher/LauncherModel;)V

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$onMessageEvent$1(Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;Lcom/miui/home/launcher/Launcher;)V
    .locals 9

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 217
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/launcher/utils/PortableUtils;->launcherApps_getActivityList(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 218
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

    .line 219
    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    .line 220
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->user:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 222
    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/launcher/utils/PortableUtils$ComponentAndUser;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
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

    .line 226
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$100(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/AllAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 235
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mP3kiR5WY4D7mwplwtuwcAgiy70;

    invoke-direct {v3, p1, v0, v1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mP3kiR5WY4D7mwplwtuwcAgiy70;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SecurityHideMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$Bb4G-6nCyVx_bxPO6-UZOgOzm0g;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$Bb4G-6nCyVx_bxPO6-UZOgOzm0g;-><init>(Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method
