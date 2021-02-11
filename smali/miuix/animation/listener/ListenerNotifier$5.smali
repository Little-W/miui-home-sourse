.class final Lmiuix/animation/listener/ListenerNotifier$5;
.super Lmiuix/animation/listener/ListenerNotifier$SingleNotifier;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lmiuix/animation/listener/ListenerNotifier$SingleNotifier;-><init>(Lmiuix/animation/listener/ListenerNotifier$1;)V

    return-void
.end method


# virtual methods
.method doNotify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 4

    .line 103
    iget-boolean v0, p3, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p3, Lmiuix/animation/listener/UpdateInfo;->isCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lmiuix/animation/listener/UpdateInfo;->isEndByUser:Z

    if-nez v0, :cond_0

    iget-wide v0, p3, Lmiuix/animation/listener/UpdateInfo;->endTime:J

    .line 104
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimRunner;->getRunningTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 105
    iget-object p1, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {p1, p2, p3}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    :cond_0
    return-void
.end method
