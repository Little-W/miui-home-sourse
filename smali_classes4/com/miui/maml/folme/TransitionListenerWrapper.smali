.class public Lcom/miui/maml/folme/TransitionListenerWrapper;
.super Lmiuix/animation/listener/TransitionListener;
.source "TransitionListenerWrapper.java"


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/folme/MamlTransitionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/folme/MamlTransitionListener;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public getListener()Lcom/miui/maml/folme/MamlTransitionListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/folme/MamlTransitionListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onBegin(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onComplete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/MamlTransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method
