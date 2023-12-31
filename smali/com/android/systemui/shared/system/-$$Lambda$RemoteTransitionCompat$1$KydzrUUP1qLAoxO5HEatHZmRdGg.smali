.class public final synthetic Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:Landroid/window/TransitionInfo;

.field private final synthetic f$3:Landroid/view/SurfaceControl$Transaction;

.field private final synthetic f$4:Landroid/os/IBinder;

.field private final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$0:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

    iput-object p2, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$2:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$3:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$0:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

    iget-object v1, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$2:Landroid/window/TransitionInfo;

    iget-object v3, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$3:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$4:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;->f$5:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->lambda$mergeAnimation$3(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void
.end method
