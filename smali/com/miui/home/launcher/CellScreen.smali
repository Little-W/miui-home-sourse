.class public Lcom/miui/home/launcher/CellScreen;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "CellScreen.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field public static final EDITIMG_ANIM_PIVOTY_RATIO:F

.field public static FOLD_EDITIMG_ANIM_PIVOTY_RATIO:F


# instance fields
.field private final QUICK_ANIM_PIVOTY_RATIO:F

.field public autoScrolling:Z

.field private mCameraDistanceCache:F

.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mEditingPreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldEditOtherScreenTranslationx:F

.field private mFoldEditTranslationx:F

.field private mInEditing:Z

.field private mInQuickEditing:Z

.field private mIsAnimating:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

.field private mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ec28f5c    # 0.38f

    goto :goto_0

    :cond_0
    const v0, 0x3efae148    # 0.49f

    :goto_0
    sput v0, Lcom/miui/home/launcher/CellScreen;->EDITIMG_ANIM_PIVOTY_RATIO:F

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/miui/home/launcher/CellScreen;->FOLD_EDITIMG_ANIM_PIVOTY_RATIO:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x3f5c28f6    # 0.86f

    goto :goto_0

    :cond_0
    const p2, 0x3f4ccccd    # 0.8f

    :goto_0
    iput p2, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    .line 37
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    .line 38
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    .line 156
    new-instance p2, Lcom/miui/home/launcher/CellScreen$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellScreen$1;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    .line 172
    new-instance p2, Lcom/miui/home/launcher/CellScreen$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellScreen$2;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 p2, 0x0

    .line 438
    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    const/4 p2, 0x0

    .line 464
    iput p2, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    .line 44
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->initFoldParam()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/CellScreen;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-object p0
.end method

.method public static createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;
    .locals 2

    .line 49
    new-instance v0, Lcom/miui/home/launcher/CellScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/CellScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p0, 0x0

    .line 50
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellScreen;->setClipChildren(Z)V

    .line 51
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellScreen;->setClipToPadding(Z)V

    .line 52
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    :goto_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellScreen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getEditimgAnimPivotyRatio()F
    .locals 1

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/home/launcher/CellScreen;->FOLD_EDITIMG_ANIM_PIVOTY_RATIO:F

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/home/launcher/CellScreen;->EDITIMG_ANIM_PIVOTY_RATIO:F

    :goto_0
    return v0
.end method

.method private getScaledY(FFF)F
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method private initFoldParam()V
    .locals 2

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditTranslationx:F

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditOtherScreenTranslationx:F

    return-void
.end method

.method private isShowEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    if-eqz p3, :cond_3

    const-string p2, "event_back"

    .line 377
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_home"

    .line 378
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_pinch_out"

    .line 379
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_finish_button"

    .line 380
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_menu"

    .line 381
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1

    :cond_3
    return v1
.end method

.method private scaleCellLayoutToFoldEditCenter(F)V
    .locals 4

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 351
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 352
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p1, v2, p1

    .line 354
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr p1, v2

    if-ne v0, v1, :cond_0

    .line 356
    iget v0, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditTranslationx:F

    mul-float/2addr v0, p1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    .line 358
    iget v2, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditTranslationx:F

    iget v3, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditOtherScreenTranslationx:F

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    mul-float v0, v2, p1

    goto :goto_0

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v2

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 360
    iget v0, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditTranslationx:F

    neg-float v0, v0

    mul-float/2addr v0, p1

    goto :goto_0

    .line 362
    :cond_2
    iget v2, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditTranslationx:F

    iget v3, p0, Lcom/miui/home/launcher/CellScreen;->mFoldEditOtherScreenTranslationx:F

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    neg-float v0, v2

    mul-float/2addr v0, p1

    .line 364
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->setTranslationX(F)V

    .line 365
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 366
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    :cond_3
    return-void
.end method

.method private final translateTouchX(Lcom/miui/home/launcher/DragObject;F)F
    .locals 3

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p2, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragObject;->getXFromCenter(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private final translateTouchY(Lcom/miui/home/launcher/DragObject;FF)F
    .locals 10

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 101
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    int-to-float p1, p1

    return p1

    .line 103
    :cond_0
    new-instance v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 105
    iget v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    int-to-float v8, v0

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 107
    iget v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 108
    invoke-direct {p0, v8, p2, p3}, Lcom/miui/home/launcher/CellScreen;->getScaledY(FFF)F

    move-result v1

    .line 109
    invoke-direct {p0, v0, p2, p3}, Lcom/miui/home/launcher/CellScreen;->getScaledY(FFF)F

    move-result p2

    .line 110
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object p3

    aget p3, p3, v9

    int-to-float p3, p3

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_1

    return v8

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object p3

    aget p3, p3, v9

    int-to-float p3, p3

    cmpl-float p3, p3, p2

    if-ltz p3, :cond_2

    return v0

    :cond_2
    sub-float/2addr v0, v8

    sub-float/2addr p2, v1

    div-float/2addr v0, p2

    mul-float/2addr v1, v0

    sub-float/2addr v8, v1

    .line 118
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object p2

    aget p2, p2, v9

    int-to-float p2, p2

    mul-float/2addr v0, p2

    add-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragObject;->getYFromCenter(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method clearDraggingState()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->clearDraggingState(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public createCellLayout(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 389
    new-instance v1, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    iput-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 390
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setClipChildren(Z)V

    .line 391
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setClipToPadding(Z)V

    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->addView(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScreenType(I)V

    return-void
.end method

.method public findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I
    .locals 1

    .line 420
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object p1

    return-object p1
.end method

.method public getCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-object v0
.end method

.method public getEditModePivotX()F
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEditModePivotY()F
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/CellScreen;->getEditimgAnimPivotyRatio()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFoldEditModePivotX()F
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    const v0, 0x7f0a009a

    if-ne p1, v0, :cond_1

    .line 452
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 454
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    .line 460
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateVision()V

    .line 461
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public isAnimating()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 411
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 412
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z
    .locals 1

    .line 427
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onEditingAnimationEnterEnd()V
    .locals 0

    return-void
.end method

.method onEditingAnimationExitEnd()V
    .locals 0

    .line 263
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->setDisableTouch(Z)V

    return v1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onNormalEditAnimationEnterEnd()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onEditingModeEnterEnd()V

    :cond_0
    return-void
.end method

.method public onNormalEditAnimationExitEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onEditingModeExitEnd()V

    :cond_0
    return-void
.end method

.method public onNormalEditAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return-void
.end method

.method onQuickEditingModeChanged(ZZ)V
    .locals 3

    .line 267
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 270
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-eqz p2, :cond_2

    .line 272
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x12c

    .line 273
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 274
    invoke-static {v0, v2}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 275
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 276
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 280
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 287
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    instance-of p2, p1, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-eqz p2, :cond_3

    .line 288
    check-cast p1, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    iget-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->onQuickEditModeChanged(Z)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method public onScreenOrientationChanged()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onScreenOrientationChanged()V

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    new-instance v1, Lcom/miui/home/launcher/CellScreen$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellScreen$3;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->post(Ljava/lang/Runnable;)Z

    .line 300
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateEditimgAnimPivotyRatio()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onScreenSizeChanged()V

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateEditimgAnimPivotyRatio()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public scaleCellLayoutToNormalEditMode(F)V
    .locals 2

    .line 334
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellScreen;->scaleCellLayoutToFoldEditCenter(F)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 340
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    goto :goto_1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    :goto_1
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 468
    iget v0, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 469
    iput p1, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    .line 470
    iget p1, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 3

    .line 313
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 316
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    const/4 v0, 0x1

    if-nez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 317
    :goto_0
    invoke-direct {p0, v2, p1, p3}, Lcom/miui/home/launcher/CellScreen;->isShowEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/CellLayout;->setAndDoEditModeAnimation(ZLcom/miui/home/launcher/EditStateChangeReason;)V

    return v0

    .line 321
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p3}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 322
    iget-object p3, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/miui/home/launcher/CellScreen$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/CellScreen$4;-><init>(Lcom/miui/home/launcher/CellScreen;Z)V

    .line 328
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x14

    const/16 p2, 0x64

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    .line 322
    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 1

    const v0, 0x7f0a009a

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 443
    :cond_0
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    goto :goto_1

    .line 445
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->setTag(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method translateTouch(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 128
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleX()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouchX(Lcom/miui/home/launcher/DragObject;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getPivotY()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/CellScreen;->translateTouchY(Lcom/miui/home/launcher/DragObject;FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    return-void
.end method

.method public updateEditLayout()V
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setTranslationY(F)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    :goto_1
    return-void
.end method

.method public updateEditimgAnimPivotyRatio()V
    .locals 3

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f090002

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/miui/home/launcher/CellScreen;->FOLD_EDITIMG_ANIM_PIVOTY_RATIO:F

    return-void
.end method

.method public updateLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->updateLayout(Z)V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 4

    .line 232
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->scaleCellLayout()V

    goto :goto_0

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 237
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 238
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setTranslationY(F)V

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 249
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    :cond_3
    return-void
.end method

.method updateVision()V
    .locals 2

    const/4 v0, 0x1

    .line 475
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0a009b

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellScreen;->setTag(ILjava/lang/Object;)V

    return-void
.end method
