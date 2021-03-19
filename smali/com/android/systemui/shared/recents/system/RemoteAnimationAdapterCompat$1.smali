.class final Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "RemoteAnimationAdapterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationCancelled()V

    return-void
.end method

.method public onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 1

    .line 50
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1$1;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 62
    iget-object p2, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
