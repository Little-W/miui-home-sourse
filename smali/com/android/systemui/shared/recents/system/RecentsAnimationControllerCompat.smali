.class public Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "RecentsAnimationControllerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationControllerCompat"


# instance fields
.field private mAnimationController:Landroid/view/IRecentsAnimationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/IRecentsAnimationController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    return-void
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationController;->cleanupScreenshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecentsAnimationControllerCompat"

    const-string v2, "Failed to clean up screenshot of recents animation"

    .line 104
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finish(ZZ)V
    .locals 1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1, p2}, Landroid/view/IRecentsAnimationController;->finish(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RecentsAnimationControllerCompat"

    const-string v0, "Failed to finish recents animation"

    .line 88
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public hideCurrentInputMethod()V
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationController;->hideCurrentInputMethod()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecentsAnimationControllerCompat"

    const-string v2, "Failed to set hide input method"

    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 2

    .line 39
    :try_start_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v1, p1}, Landroid/view/IRecentsAnimationController;->screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to screenshot task"

    .line 41
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->setAnimationTargetsBehindSystemBars(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to set whether animation targets are behind system bars"

    .line 58
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .locals 2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->setCancelWithDeferredScreenshot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to set cancel with deferred screenshot"

    .line 96
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->setInputConsumerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to set input consumer enabled state"

    .line 50
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 2

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v0, p1}, Landroid/view/IRecentsAnimationController;->setSplitScreenMinimized(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to set minimize dock"

    .line 66
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
