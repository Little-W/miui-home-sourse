.class Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
.super Ljava/lang/Object;
.source "SplitSelectStateController.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/SplitSelectStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSplitLaunchTransitionRunner"
.end annotation


# instance fields
.field private final mAnimate:Z

.field private final mInitialTaskId:I

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
.method constructor <init>(Lcom/miui/home/recents/util/SplitSelectStateController;ZIILjava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->this$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-boolean p2, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mAnimate:Z

    .line 245
    iput p3, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mInitialTaskId:I

    .line 246
    iput p4, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSecondTaskId:I

    .line 247
    iput-object p5, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/os/IBinder;Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 254
    invoke-static {p2, p3, v0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Z)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    const/4 v1, 0x1

    .line 255
    invoke-static {p2, v1, p3, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    .line 256
    invoke-static {p2, p1, p3, v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v3

    .line 258
    array-length p2, v2

    :goto_0
    if-ge p1, p2, :cond_0

    aget-object v0, v2, p1

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAnimation: app = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitSelectStateController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->this$0:Lcom/miui/home/recents/util/SplitSelectStateController;

    const/4 v5, -0x1

    iget-boolean v6, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mAnimate:Z

    iget-object v8, p0, Lcom/miui/home/recents/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/util/SplitSelectStateController;->access$000(Lcom/miui/home/recents/util/SplitSelectStateController;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;IZLjava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 263
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
