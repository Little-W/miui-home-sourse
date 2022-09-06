.class public Lcom/miui/home/launcher/anim/NormalEditEnterAnim;
.super Lcom/miui/home/launcher/anim/EditAnimController;
.source "NormalEditEnterAnim.java"


# instance fields
.field private mAnimatorNum:I

.field protected mCurrentCellLayoutScale:F

.field protected mIsScalePivotInCenter:Z

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPivotX:F

.field private mPivotY:F

.field private final mSpringAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/animate/SpringAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetCellLayoutScale:F

.field private mTouchX:F

.field private mTouchY:F

.field private mXs:[I

.field private mYs:[I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/EditAnimController;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 233
    invoke-virtual {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private checkItemIsValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 132
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mXs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-ltz v0, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mYs:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$startNormalEnterEditAnim$0(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;Landroid/view/View;FIFIF)V
    .locals 2

    .line 118
    iget v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, p6

    add-float/2addr v0, v1

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    int-to-float p3, p3

    add-float/2addr p2, p3

    mul-float/2addr p2, p6

    sub-float/2addr p2, p3

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p2, p5

    add-float/2addr p4, p2

    mul-float/2addr p4, p6

    sub-float/2addr p4, p2

    .line 122
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic lambda$startNormalOutAnim$1(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 178
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 179
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    add-float/2addr v1, p1

    .line 180
    iget-boolean p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsScalePivotInCenter:Z

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 182
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 184
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->scaleTargetView(F)V

    return-void
.end method

.method private normalEnterEditAnimStart()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 137
    invoke-static {v0}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setDisableAutoLayoutAnimation(Z)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    const/4 v0, 0x0

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/animate/SpringAnimator;

    if-nez v0, :cond_0

    .line 142
    new-instance v2, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$1;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_1

    .line 154
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$2;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEditModeForItem(Landroid/view/View;Z)V
    .locals 1

    .line 239
    instance-of v0, p1, Lcom/miui/home/launcher/interfaces/IEditable;

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Lcom/miui/home/launcher/interfaces/IEditable;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/miui/home/launcher/interfaces/IEditable;->setEditMode(ZZ)V

    :cond_0
    return-void
.end method

.method private startNormalEnterEditAnim()V
    .locals 12

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    iget v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v2, 0x1

    .line 98
    invoke-direct {p0, v5, v2}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->setEditModeForItem(Landroid/view/View;Z)V

    .line 99
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 100
    iget v3, v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    .line 101
    iget v2, v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    .line 102
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ItemInfo;

    .line 103
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->checkItemIsValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mXs:[I

    iget v7, v4, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget v6, v6, v7

    .line 107
    iget-object v7, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mYs:[I

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget v4, v7, v4

    sub-int v7, v6, v3

    sub-int v9, v4, v2

    neg-int v2, v7

    int-to-float v2, v2

    .line 110
    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    neg-int v2, v9

    int-to-float v2, v2

    .line 111
    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 112
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v5, v2}, Landroid/view/View;->setPivotX(F)V

    .line 113
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v2}, Landroid/view/View;->setPivotY(F)V

    .line 114
    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotX:F

    int-to-float v6, v6

    sub-float/2addr v2, v6

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    sub-float/2addr v2, v6

    mul-float/2addr v2, v0

    iget v6, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    div-float v6, v2, v6

    .line 115
    iget v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotY:F

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    div-float v8, v2, v3

    .line 116
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v3, 0x3f170a3d    # 0.59f

    const v4, 0x3eb33333    # 0.35f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v10, v11}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 117
    new-instance v10, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$PGsL98XMv_hNluedTy-v0TPzKfM;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;Landroid/view/View;FIFI)V

    invoke-virtual {v2, v10}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 124
    invoke-virtual {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->registerEndAnimationMessage()V

    const-wide/16 v3, 0x0

    .line 125
    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/animate/SpringAnimator;->startDelay(J)V

    .line 126
    iget-object v3, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->normalEnterEditAnimStart()V

    return-void
.end method


# virtual methods
.method public onEnterAnimationEnd()V
    .locals 1

    .line 211
    iget v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    .line 212
    iget v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mAnimatorNum:I

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->scaleCellLayout()V

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->resetAllViews()V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationEnterEnd()V

    :cond_0
    return-void
.end method

.method protected prepareAnimParam()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayerBackground()Lcom/miui/home/launcher/Background;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->getTouchrawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTouchX:F

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayerBackground()Lcom/miui/home/launcher/Background;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->getTouchrawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTouchY:F

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->calculateXsAndYs()V

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotY:F

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mPivotX:F

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCurrentCellLayoutScale:F

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mTargetCellLayoutScale:F

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mIsScalePivotInCenter:Z

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getmXs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mXs:[I

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getmYs()[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mYs:[I

    return-void
.end method

.method public resetAllViews()V
    .locals 3

    .line 220
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->cancelAnimation()V

    const/4 v0, 0x0

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 224
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 225
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 226
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected scaleTargetView(F)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    return-void
.end method

.method public startEditAnim(ZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startEnterAnim()V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startOutAnim()V

    :goto_0
    return-void
.end method

.method public startEnterAnim()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->prepareAnimParam()V

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startNormalEnterEditAnim()V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->updateBlur(Z)V

    return-void
.end method

.method protected startNormalOutAnim()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->setEditModeForItem(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mSpringAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 170
    invoke-virtual {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    goto :goto_1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    const/4 v0, 0x2

    .line 174
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    new-instance v1, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$06qcZg2mjcBUp9BYUpxjDkqoVrI;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$NormalEditEnterAnim$06qcZg2mjcBUp9BYUpxjDkqoVrI;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    new-instance v1, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim$3;-><init>(Lcom/miui/home/launcher/anim/NormalEditEnterAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startOutAnim()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->startNormalOutAnim()V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->updateBlur(Z)V

    return-void
.end method

.method protected updateBlur(Z)V
    .locals 5

    .line 245
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 247
    sget-wide v3, Lcom/miui/home/launcher/common/BlurUtils;->LONG_BLUR_ANIM_DURATION:J

    goto :goto_1

    :cond_1
    sget-wide v3, Lcom/miui/home/launcher/common/BlurUtils;->DEFAULT_BLUR_ANIM_DURATION:J

    :goto_1
    invoke-static {v1, v0, v2, v3, v4}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;ZJ)Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method public updateParam()V
    .locals 0

    return-void
.end method
