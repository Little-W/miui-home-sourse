.class public interface abstract Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAnimationCancelled()V
.end method

.method public abstract onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method
