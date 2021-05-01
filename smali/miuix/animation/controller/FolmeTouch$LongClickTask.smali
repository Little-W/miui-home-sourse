.class final Lmiuix/animation/controller/FolmeTouch$LongClickTask;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongClickTask"
.end annotation


# instance fields
.field private mTouchRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/animation/controller/FolmeTouch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 502
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->mTouchRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeTouch;

    if-eqz v0, :cond_0

    .line 504
    iget-object v1, v0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    instance-of v2, v1, Lmiuix/animation/ViewTarget;

    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 506
    invoke-static {v0}, Lmiuix/animation/controller/FolmeTouch;->access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 508
    invoke-static {v0, v1}, Lmiuix/animation/controller/FolmeTouch;->access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method start(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 3

    .line 480
    iget-object v0, p1, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 481
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_0

    .line 482
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->mTouchRef:Ljava/lang/ref/WeakReference;

    .line 485
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method stop(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 1

    .line 491
    iget-object p1, p1, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p1

    .line 492
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_0

    .line 493
    check-cast p1, Lmiuix/animation/ViewTarget;

    invoke-virtual {p1}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
