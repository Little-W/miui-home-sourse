.class public Lcom/miui/home/recents/views/FakeNavigationBarView;
.super Landroid/view/View;
.source "FakeNavigationBarView.java"


# instance fields
.field private final mBottom:I

.field private final mLightColor:I

.field private final mNavHeight:I

.field private final mNavMeasureWidth:I

.field private final mNavShowWidth:I

.field private final mOffset:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mPaint:Landroid/graphics/Paint;

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FakeNavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "navigation_bar_height_landscape"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavHeight:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FakeNavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07037f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mRadius:I

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FakeNavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070380

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavShowWidth:I

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavMeasureWidth:I

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FakeNavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07037e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mBottom:I

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FakeNavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06034f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mLightColor:I

    .line 41
    iget-object p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mLightColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FakeNavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070431

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavMeasureWidth:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavShowWidth:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mOffset:I

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FakeNavigationBarView;->getHeight()I

    move-result v0

    .line 54
    iget v1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mRadius:I

    mul-int/lit8 v2, v1, 0x2

    .line 55
    iget v3, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mBottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 56
    iget v3, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mOffset:I

    int-to-float v5, v3

    int-to-float v6, v0

    iget v4, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavShowWidth:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    add-int/2addr v0, v2

    int-to-float v8, v0

    int-to-float v9, v1

    int-to-float v10, v1

    iget-object v11, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 75
    iget p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavMeasureWidth:I

    iget p2, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setMeasuredDimension(II)V

    .line 76
    iget p1, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavMeasureWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/views/FakeNavigationBarView;->mNavHeight:I

    .line 77
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 76
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    :goto_0
    move v8, v0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v0, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 64
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
