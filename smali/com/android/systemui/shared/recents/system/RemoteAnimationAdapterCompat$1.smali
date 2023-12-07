.class Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationCancelled()V

    return-void
.end method

.method public onAnimationCancelled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->onAnimationCancelled()V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setFinishCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v3

    invoke-static {p3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    invoke-static {p4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1$2;

    invoke-direct {v6, p0, p5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1$2;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;Landroid/view/IRemoteAnimationFinishedCallback;)V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1$1;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;Landroid/view/IRemoteAnimationFinishedCallback;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
