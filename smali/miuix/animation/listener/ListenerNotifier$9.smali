.class final Lmiuix/animation/listener/ListenerNotifier$9;
.super Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;
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

    .line 132
    invoke-direct {p0, v0}, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;-><init>(Lmiuix/animation/listener/ListenerNotifier$1;)V

    return-void
.end method


# virtual methods
.method doNotify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/listener/ListenerNotifier$ListenerNode;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object p3, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {p3, p2}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 136
    invoke-static {p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->access$300(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V

    return-void
.end method
