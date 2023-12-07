.class public Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationControllerCompat"


# instance fields
.field private mAnimationController:Landroid/view/IRecentsAnimationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/IRecentsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    return-void
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-static {p0}, Lmiui/view/IRecentsAnimationControllerExpose;->box(Ljava/lang/Object;)Lmiui/view/IRecentsAnimationControllerExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/IRecentsAnimationControllerExpose;->cleanupScreenshot()V

    return-void
.end method

.method public finish(ZZ)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string p2, "Failed to finish recents animation"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finishForSosc(IZZZ)V
    .locals 10

    :try_start_0
    const-class v0, Landroid/view/IRecentsAnimationController;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    const-string v2, "finishForSoSc"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x4

    new-array v4, p0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v5, p0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v8

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string p2, "Failed to finishForSosc recents animation"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public hideCurrentInputMethod()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0}, Landroid/view/IRecentsAnimationController;->hideCurrentInputMethod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to set hide input method"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 7

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->takeTaskSnapshot(IZ)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-class v0, Landroid/view/IRecentsAnimationController;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    const-class v3, Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "screenshotTask"

    move-object v1, p0

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->createTaskSnapshotCompat(Ljava/lang/Object;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setAnimationTargetsBehindSystemBars(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to set whether animation targets are behind system bars"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setCancelWithDeferredScreenshot(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to set cancel with deferred screenshot"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setInputConsumerEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to set input consumer enabled state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {p0, p1}, Landroid/view/IRecentsAnimationController;->setSplitScreenMinimized(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to set minimize dock"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
