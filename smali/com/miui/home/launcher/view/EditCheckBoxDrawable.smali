.class public Lcom/miui/home/launcher/view/EditCheckBoxDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "EditCheckBoxDrawable.java"


# instance fields
.field private mCheckAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0800b3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 18
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 22
    invoke-static {p0}, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->getCheckAnimator(Landroid/graphics/drawable/LayerDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private static getCheckAnimator(Landroid/graphics/drawable/LayerDrawable;)Landroid/animation/ValueAnimator;
    .locals 8

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 29
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 30
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    .line 31
    new-instance v7, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/view/-$$Lambda$EditCheckBoxDrawable$ZJ9e61iSnqegRCV7SNOYzLqXxaU;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/LayerDrawable;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v6
.end method

.method static synthetic lambda$getCheckAnimator$0(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/LayerDrawable;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 32
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p5

    int-to-float p0, p0

    mul-float v2, v1, p0

    float-to-int v2, v2

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/16 v3, 0x11

    .line 33
    invoke-static {v3, v2, v1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    mul-float/2addr p0, p5

    float-to-int p0, p0

    mul-float/2addr p1, p5

    float-to-int p1, p1

    .line 35
    invoke-static {v3, p0, p1, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    .line 36
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 38
    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 39
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sub-float/2addr v0, p1

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr v0, p3

    float-to-int p5, v0

    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method startCheckAnimator(ZZ)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->BACK_EASE_OUT:Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    iget-object p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->mCheckAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
