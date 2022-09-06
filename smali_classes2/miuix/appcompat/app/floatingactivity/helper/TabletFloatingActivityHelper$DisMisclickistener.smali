.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;
.super Ljava/lang/Object;
.source "TabletFloatingActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisMisclickistener"
.end annotation


# instance fields
.field private mStartTime:J

.field private mStartX:F

.field private mStartY:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V
    .locals 0

    .line 580
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 588
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 595
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 596
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 597
    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;->mStartX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;->mStartY:F

    sub-float/2addr p2, v4

    float-to-double v4, p2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;->mStartTime:J

    sub-long/2addr v2, v4

    .line 600
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-double v4, p1

    cmpl-double p1, v0, v4

    if-gtz p1, :cond_0

    int-to-long p1, p2

    cmp-long p1, v2, p1

    if-lez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 590
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;->mStartX:F

    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;->mStartY:F

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$DisMisclickistener;->mStartTime:J

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
