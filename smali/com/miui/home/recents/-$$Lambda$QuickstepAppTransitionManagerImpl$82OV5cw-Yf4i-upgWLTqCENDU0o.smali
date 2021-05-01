.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$82OV5cw-Yf4i-upgWLTqCENDU0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:Lcom/miui/home/recents/util/RemoteAnimationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$82OV5cw-Yf4i-upgWLTqCENDU0o;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$82OV5cw-Yf4i-upgWLTqCENDU0o;->f$1:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$82OV5cw-Yf4i-upgWLTqCENDU0o;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$82OV5cw-Yf4i-upgWLTqCENDU0o;->f$1:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$setRemoteAnimationProvider$523(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    return-void
.end method
