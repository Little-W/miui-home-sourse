.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$qP2kYCP_rvRqvwIH-sCfucgHhbk;
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

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$qP2kYCP_rvRqvwIH-sCfucgHhbk;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$qP2kYCP_rvRqvwIH-sCfucgHhbk;->f$1:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$qP2kYCP_rvRqvwIH-sCfucgHhbk;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$qP2kYCP_rvRqvwIH-sCfucgHhbk;->f$1:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$setRemoteAnimationProvider$3$QuickstepAppTransitionManagerImpl(Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    return-void
.end method
