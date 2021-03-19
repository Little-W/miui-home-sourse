.class abstract Landroidx/recyclerview/widget/RemixRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RemixRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;
    }
.end annotation


# instance fields
.field private mScrollPointerId:I

.field private mSpringEnabled:Z

.field private mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RemixRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    sget v0, Lmiuix/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RemixRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/RemixRecyclerView;)Z
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RemixRecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/RemixRecyclerView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/RemixRecyclerView;)Lmiuix/animation/utils/VelocityMonitor;
    .locals 0

    .line 27
    iget-object p0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    return-object p0
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .locals 3

    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 95
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    if-ne v0, v2, :cond_3

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    .line 99
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->updateVelocity(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 86
    :pswitch_2
    iget v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string p1, "RecyclerView"

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_2
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->updateVelocity(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 79
    :pswitch_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    .line 81
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mScrollPointerId:I

    .line 82
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/RemixRecyclerView;->updateVelocity(Landroid/view/MotionEvent;I)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private updateVelocity(Landroid/view/MotionEvent;I)V
    .locals 6

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_0

    .line 107
    iget-object v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    new-array v3, v3, [D

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v3, v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    float-to-double p1, p1

    aput-wide p1, v3, v1

    invoke-virtual {v0, v3}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    new-array v0, v3, [D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-double v3, v3

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v2, p1

    aput-wide v2, v0, v1

    invoke-virtual {p2, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSpringEnabled()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 68
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 116
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    :cond_0
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    return-void
.end method
