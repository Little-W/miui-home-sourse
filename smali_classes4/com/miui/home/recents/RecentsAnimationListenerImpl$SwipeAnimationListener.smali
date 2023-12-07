.class public interface abstract Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;
.super Ljava/lang/Object;
.source "RecentsAnimationListenerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/RecentsAnimationListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwipeAnimationListener"
.end annotation


# virtual methods
.method public abstract onRecentsAnimationCanceled(Z)V
.end method

.method public abstract onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
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
