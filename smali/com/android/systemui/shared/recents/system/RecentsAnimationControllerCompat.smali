.class public Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "RecentsAnimationControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationControllerCompat"


# instance fields
.field private mAnimationController:Landroid/view/IRecentsAnimationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/IRecentsAnimationController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 3

    .line 114
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

    .line 116
    invoke-static {v1, v2, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finish(ZZ)V
    .locals 1

    .line 98
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

    .line 100
    invoke-static {p2, v0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public hideCurrentInputMethod()V
    .locals 3

    .line 84
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

    .line 86
    invoke-static {v1, v2, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 2

    .line 44
    :try_start_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v1, p1}, Landroid/view/IRecentsAnimationController;->screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->wrapHardwareBuffer(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 49
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isAccessLocked:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "RecentsAnimationControllerCompat"

    const-string v1, "Failed to screenshot task"

    .line 53
    invoke-static {v0, v1, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    return-object p1
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 2

    .line 68
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

    .line 70
    invoke-static {v0, v1, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .locals 2

    .line 106
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

    .line 108
    invoke-static {v0, v1, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 2

    .line 60
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

    .line 62
    invoke-static {v0, v1, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 2

    .line 76
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

    .line 78
    invoke-static {v0, v1, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
