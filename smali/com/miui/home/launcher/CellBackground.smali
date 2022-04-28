.class public Lcom/miui/home/launcher/CellBackground;
.super Landroid/widget/ImageView;
.source "CellBackground.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;


# instance fields
.field private mAlphaInAnimator:Landroid/animation/ObjectAnimator;

.field private mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

.field private mAutoLayoutAnimatorAnimateDelegate:Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;

.field private mIsIconCellBackground:Z

.field private mIsUseSmoothTransAnimation:Z

.field private mSkipNextAutoLayoutAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsIconCellBackground:Z

    .line 25
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsUseSmoothTransAnimation:Z

    .line 90
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    .line 91
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    .line 93
    new-instance p1, Lcom/miui/home/launcher/CellBackground$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellBackground$2;-><init>(Lcom/miui/home/launcher/CellBackground;)V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAutoLayoutAnimatorAnimateDelegate:Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;

    .line 33
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 36
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 40
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 42
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/miui/home/launcher/CellBackground$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellBackground$1;-><init>(Lcom/miui/home/launcher/CellBackground;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public bindDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemIcon;

    iput-boolean v0, p0, Lcom/miui/home/launcher/CellBackground;->mIsIconCellBackground:Z

    .line 64
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsUseSmoothTransAnimation:Z

    return-void
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCellTranslate(I)V
    .locals 2

    .line 120
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellBackground;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 7

    .line 107
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellBackground;->mIsUseSmoothTransAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground;->mAutoLayoutAnimatorAnimateDelegate:Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIIILcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;)Z

    move-result p1

    return p1
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public unbindDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method
