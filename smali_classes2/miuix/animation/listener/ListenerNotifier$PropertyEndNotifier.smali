.class Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"

# interfaces
.implements Lmiuix/animation/listener/ListenerNotifier$INotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertyEndNotifier"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doNotify(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lmiuix/animation/listener/TransitionListener;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/animation/listener/UpdateInfo;

    .line 89
    iget-boolean p4, p3, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p4, :cond_0

    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-boolean p4, p4, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    if-eqz p4, :cond_0

    .line 90
    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    const/4 v0, 0x0

    iput-boolean v0, p4, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 91
    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte p4, p4, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 92
    invoke-virtual {p2, p1, p3}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p2, p1, p3}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method
