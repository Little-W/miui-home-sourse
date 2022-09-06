.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingAnimTransitionListener"
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V
    .locals 1

    .line 556
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 557
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 558
    iput p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ILmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 572
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    :goto_0
    if-eqz v0, :cond_1

    .line 575
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$600(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 563
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    :goto_0
    if-eqz v0, :cond_1

    .line 566
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$600(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
