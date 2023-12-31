.class Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTransitionListener"
.end annotation


# instance fields
.field private mNewState:I

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ActionBarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V
    .locals 1

    .line 2908
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2909
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 2910
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mNewState:I

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 2915
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 2916
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez p0, :cond_0

    return-void

    .line 2920
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result p1

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2802(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z

    const/4 p1, 0x1

    .line 2921
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    const/4 p1, 0x2

    .line 2922
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 2923
    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 2943
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2944
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez p1, :cond_0

    return-void

    .line 2948
    :cond_0
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mNewState:I

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 2949
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 2950
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2951
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    .line 2953
    :cond_1
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :goto_0
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

    .line 2928
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    const-string p1, "actionbar_state_change"

    .line 2929
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2933
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez p0, :cond_1

    return-void

    .line 2937
    :cond_1
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2402(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I

    .line 2938
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    return-void
.end method
