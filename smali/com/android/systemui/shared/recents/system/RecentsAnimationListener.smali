.class public interface abstract Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;
.super Ljava/lang/Object;
.source "RecentsAnimationListener.java"


# virtual methods
.method public abstract onAnimationCanceled(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAnimationCanceled(Z)V
.end method

.method public abstract onAnimationStart(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
.end method

.method public abstract onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
.end method

.method public abstract setIsMergedAnimation(Z)V
.end method
