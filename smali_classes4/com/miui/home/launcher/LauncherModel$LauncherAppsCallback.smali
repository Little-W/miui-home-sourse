.class public Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LauncherAppsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPackageAdded$1$LauncherModel$LauncherAppsCallback(Ljava/lang/String;)V
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/model/WidgetUpdateTask;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/model/WidgetUpdateTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public synthetic lambda$onPackageChanged$0$LauncherModel$LauncherAppsCallback(Ljava/lang/String;)V
    .locals 1

    .line 378
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/model/WidgetUpdateTask;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/model/WidgetUpdateTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v1, "onPackageAdded"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$a9lGSi6mGMG_cIhaF6uC3o7453c;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$a9lGSi6mGMG_cIhaF6uC3o7453c;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->access$800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Runnable;)V

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$3;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    .line 414
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v1, "onPackageChanged"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$500(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$600(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isSecurityCenterSupportShareAPK()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setSecurityCenterIsSupportShareAPK(Z)V

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$1;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    .line 378
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$9-ElH-VIbtbAQkiLsEH1dC9qK_k;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$9-ElH-VIbtbAQkiLsEH1dC9qK_k;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->access$800(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Runnable;)V

    .line 380
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$900(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 381
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 382
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v1, "onPackageRemoved"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$400(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/model/PackageRemovedTask;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/model/PackageRemovedTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$2;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    .line 397
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1000(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    .line 398
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->access$1100(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 4

    .line 419
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p1, v0

    .line 420
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v3, "onPackagesAvailable"

    invoke-static {v2, v3, v1, p2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$4;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    .line 451
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 452
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v4, "onPackagesSuspended"

    invoke-static {v3, v4, v2, p2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$6;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 4

    .line 433
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p1, v0

    .line 434
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v3, "onPackagesUnavailable"

    invoke-static {v2, v3, v1, p2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$5;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    .line 469
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 470
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v4, "onPackagesUnsuspended"

    invoke-static {v3, v4, v2, p2}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    new-instance v1, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback$7;-><init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->runOnWorkerThreadAndCheckForReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 484
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    .line 485
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    .line 486
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 488
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    const-string v0, "onShortcutsChanged"

    invoke-static {p2, v0, p1, p3}, Lcom/miui/home/launcher/LauncherModel;->access$300(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 490
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    .line 491
    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    invoke-static {p3}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutMap(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p2

    .line 493
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$700(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    .line 496
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 495
    invoke-static {v0, p1, v2, p3}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->queryForFullDetails(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 497
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 498
    invoke-virtual {p3}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 499
    invoke-virtual {p3}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/ShortcutChangeTask;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v3, v0, v1, p3, v4}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p3

    new-instance v2, Lcom/miui/home/launcher/ShortcutChangeTask;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v3}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v2, v1, v0, v1, v3}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {p3, v2}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 511
    iget-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p3}, Lcom/miui/home/launcher/LauncherModel;->access$200(Lcom/miui/home/launcher/LauncherModel;)Lcom/miui/home/library/utils/DeferredHandler;

    move-result-object p3

    new-instance v0, Lcom/miui/home/launcher/ShortcutChangeTask;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v2}, Lcom/miui/home/launcher/LauncherModel;->access$1200(Lcom/miui/home/launcher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {v0, v1, p2, v1, v2}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {p3, v0}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
