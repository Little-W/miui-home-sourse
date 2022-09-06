.class public Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;
.super Ljava/lang/Object;
.source "FoldEditSwitchScreenAnim.java"


# instance fields
.field private final mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method private doForEachCellScreen(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/CellScreen;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$startFoldEditDragingAnim$4(FLcom/miui/home/launcher/CellScreen;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setPivotX(F)V

    .line 121
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setPivotY(F)V

    const v0, 0x3cf5c280    # 0.029999971f

    mul-float/2addr v0, p0

    const v1, 0x3f7851ec    # 0.97f

    add-float/2addr v0, v1

    .line 122
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setScaleX(F)V

    .line 123
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setScaleY(F)V

    const v0, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr p0, v0

    const v0, 0x3f4ccccd    # 0.8f

    add-float/2addr p0, v0

    .line 124
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$startFoldEditDragingAnim$5(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 119
    new-instance v0, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$w3v4W4SvoXViQEpxchUeQDHYkTU;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$w3v4W4SvoXViQEpxchUeQDHYkTU;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$startFoldSwitchScreenAnim$0(FLcom/miui/home/launcher/CellScreen;)V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, p0

    .line 67
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setAlpha(F)V

    .line 68
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setPivotX(F)V

    .line 69
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setPivotY(F)V

    const v0, 0x3da3d710    # 0.08000004f

    mul-float/2addr p0, v0

    const v0, 0x3f63d70a    # 0.89f

    add-float/2addr p0, v0

    .line 70
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->setScaleX(F)V

    .line 71
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->setScaleY(F)V

    return-void
.end method

.method public static synthetic lambda$startFoldSwitchScreenAnim$1(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    .line 66
    new-instance v0, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$buZlBT6q3LnHJfiVNO6owZea6ks;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$buZlBT6q3LnHJfiVNO6owZea6ks;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$startFoldSwitchScreenAnimOut$2(FLcom/miui/home/launcher/CellScreen;)V
    .locals 2

    .line 107
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->setAlpha(F)V

    .line 108
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setPivotX(F)V

    .line 109
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellScreen;->setPivotY(F)V

    const v0, 0x3de147b0    # 0.110000014f

    mul-float/2addr p0, v0

    const v0, 0x3f63d70a    # 0.89f

    add-float/2addr p0, v0

    .line 110
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->setScaleX(F)V

    .line 111
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellScreen;->setScaleY(F)V

    return-void
.end method

.method public static synthetic lambda$startFoldSwitchScreenAnimOut$3(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    .line 106
    new-instance v0, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$_O0Jo1WKk_7mZVevKJz1-ekM8GI;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$_O0Jo1WKk_7mZVevKJz1-ekM8GI;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->doForEachCellScreen(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private startFoldEditSwitchScreenAnim(FFJLandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 3

    .line 130
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    .line 131
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 132
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    sget-object p1, Lcom/miui/home/launcher/common/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p5, :cond_0

    .line 135
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    :cond_0
    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public startFoldEditDragingAnim()V
    .locals 7

    .line 117
    new-instance v6, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$Py8-g8eHFjU2JLiFsC0jb4NwPUI;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$Py8-g8eHFjU2JLiFsC0jb4NwPUI;-><init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldEditSwitchScreenAnim(FFJLandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
    .locals 7

    .line 35
    new-instance v5, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;-><init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;I)V

    .line 63
    new-instance v6, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$El18YEy6Sc6Q3UduF6v6RjAI-H8;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$El18YEy6Sc6Q3UduF6v6RjAI-H8;-><init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0x96

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldEditSwitchScreenAnim(FFJLandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public startFoldSwitchScreenAnimOut(Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
    .locals 7

    .line 77
    invoke-interface {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;->switchScreenOutAnimStart()V

    .line 79
    new-instance v5, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$2;

    invoke-direct {v5, p0, p1}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$2;-><init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V

    .line 103
    new-instance v6, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$OVYa8f56606HW6oMPfQUGsGa-OU;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditSwitchScreenAnim$OVYa8f56606HW6oMPfQUGsGa-OU;-><init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldEditSwitchScreenAnim(FFJLandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
