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
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsIconCellBackground:Z

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mIsUseSmoothTransAnimation:Z

    .line 81
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    .line 82
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    .line 84
    new-instance p1, Lcom/miui/home/launcher/CellBackground$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellBackground$2;-><init>(Lcom/miui/home/launcher/CellBackground;)V

    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAutoLayoutAnimatorAnimateDelegate:Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;

    .line 24
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 27
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/miui/home/launcher/common/Ease$Sine;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 33
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/miui/home/launcher/CellBackground$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellBackground$1;-><init>(Lcom/miui/home/launcher/CellBackground;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

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

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaInAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/CellBackground;->mAlphaOutAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public bindDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemIcon;

    iput-boolean v0, p0, Lcom/miui/home/launcher/CellBackground;->mIsIconCellBackground:Z

    .line 55
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

    .line 73
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 7

    .line 98
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

    .line 68
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellBackground;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public superSetFrame(IIII)Z
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public unbindDragObject(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method
