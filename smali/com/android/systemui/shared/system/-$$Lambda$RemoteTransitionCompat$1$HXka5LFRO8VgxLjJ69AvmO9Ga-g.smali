.class public final synthetic Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

.field private final synthetic f$3:Landroid/view/SurfaceControl$Transaction;

.field private final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$0:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

    iput-object p2, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$2:Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    iput-object p4, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$3:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$0:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

    iget-object v1, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$2:Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    iget-object v3, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$3:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->lambda$startAnimation$1(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method
