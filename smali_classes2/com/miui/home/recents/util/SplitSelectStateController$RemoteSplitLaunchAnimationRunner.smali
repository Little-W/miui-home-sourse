.class Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;
.super Ljava/lang/Object;
.source "SplitSelectStateController.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/SplitSelectStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSplitLaunchAnimationRunner"
.end annotation


# instance fields
.field private mAnimate:Z

.field private final mInitialTaskId:I

.field private final mInitialTaskPendingIntent:Landroid/app/PendingIntent;

.field private final mSecondTaskId:I

.field private final mSuccessCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/recents/util/SplitSelectStateController;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/SplitSelectStateController;ZILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean p2, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mAnimate:Z

    .line 282
    iput p3, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mInitialTaskId:I

    .line 283
    iput-object p4, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mInitialTaskPendingIntent:Landroid/app/PendingIntent;

    .line 284
    iput p5, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSecondTaskId:I

    .line 285
    iput-object p6, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationCancelled$0$SplitSelectStateController$RemoteSplitLaunchAnimationRunner()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-static {v1}, Lcom/miui/home/recents/util/SplitSelectStateController;->access$200(Lcom/miui/home/recents/util/SplitSelectStateController;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 301
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/SplitSelectStateController;->resetState()V

    return-void
.end method

.method public onAnimationCancelled()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/miui/home/recents/util/SplitSelectStateController;->access$100(Lcom/miui/home/recents/util/SplitSelectStateController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$RemoteSplitLaunchAnimationRunner$0D12iyQXxwWW90uALwikGn90CXY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$SplitSelectStateController$RemoteSplitLaunchAnimationRunner$0D12iyQXxwWW90uALwikGn90CXY;-><init>(Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;)V

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 8

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    iget-boolean v5, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mAnimate:Z

    iget-object v7, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move v4, p1

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/util/SplitSelectStateController;->access$000(Lcom/miui/home/recents/util/SplitSelectStateController;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;IZLjava/lang/Runnable;Ljava/util/function/Consumer;)V

    return-void
.end method
