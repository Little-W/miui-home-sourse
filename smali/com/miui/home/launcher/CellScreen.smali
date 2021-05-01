.class public Lcom/miui/home/launcher/CellScreen;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "CellScreen.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field public static final EDITIMG_ANIM_PIVOTY_RATIO:F


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

.field private mInEditing:Z

.field private mInQuickEditing:Z

.field private mIsAnimating:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

.field private mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ec28f5c    # 0.38f

    goto :goto_0

    :cond_0
    const v0, 0x3efae148    # 0.49f

    :goto_0
    sput v0, Lcom/miui/home/launcher/CellScreen;->EDITIMG_ANIM_PIVOTY_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x3f5c28f6    # 0.86f

    goto :goto_0

    :cond_0
    const p2, 0x3f4ccccd    # 0.8f

    :goto_0
    iput p2, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    .line 36
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    .line 37
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    .line 142
    new-instance p2, Lcom/miui/home/launcher/CellScreen$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellScreen$1;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    .line 158
    new-instance p2, Lcom/miui/home/launcher/CellScreen$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellScreen$2;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 p2, 0x0

    .line 360
    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    const/4 p2, 0x0

    .line 386
    iput p2, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    .line 43
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/CellScreen;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method public static createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;
    .locals 2

    .line 47
    new-instance v0, Lcom/miui/home/launcher/CellScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/CellScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p0, 0x0

    .line 48
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellScreen;->setClipChildren(Z)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellScreen;->setClipToPadding(Z)V

    .line 50
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellScreen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getScaledY(FFF)F
    .locals 2

    .line 109
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

.method private isShowEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 2

    .line 296
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

    .line 300
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_home"

    .line 301
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_pinch_out"

    .line 302
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_finish_button"

    .line 303
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "event_menu"

    .line 304
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

.method private final translateTouchX(Lcom/miui/home/launcher/DragObject;F)F
    .locals 3

    .line 83
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

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 88
    iget p1, p1, Lcom/miui/home/launcher/DragObject;->y:I

    int-to-float p1, p1

    return p1

    .line 90
    :cond_0
    new-instance v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 92
    iget v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    int-to-float v8, v0

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 94
    iget v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 95
    invoke-direct {p0, v8, p2, p3}, Lcom/miui/home/launcher/CellScreen;->getScaledY(FFF)F

    move-result v1

    .line 96
    invoke-direct {p0, v0, p2, p3}, Lcom/miui/home/launcher/CellScreen;->getScaledY(FFF)F

    move-result p2

    .line 97
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object p3

    aget p3, p3, v9

    int-to-float p3, p3

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_1

    return v8

    .line 100
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

    .line 105
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

    .line 68
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method clearDraggingState()V
    .locals 2

    .line 330
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

    .line 311
    new-instance v1, Lcom/miui/home/launcher/CellLayout;

    .line 312
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

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setClipChildren(Z)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setClipToPadding(Z)V

    .line 315
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->addView(Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScreenType(I)V

    return-void
.end method

.method public findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I
    .locals 1

    .line 342
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object p1

    return-object p1
.end method

.method public getCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-object v0
.end method

.method public getEditModePivotX()F
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEditModePivotY()F
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/miui/home/launcher/CellScreen;->EDITIMG_ANIM_PIVOTY_RATIO:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    const v0, 0x7f0a0073

    if-ne p1, v0, :cond_1

    .line 374
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 376
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    .line 382
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateVision()V

    .line 383
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public isAnimating()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onAttachedToWindow()V

    .line 58
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

    .line 74
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 334
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z
    .locals 1

    .line 349
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onEditingAnimationEnterEnd()V
    .locals 0

    return-void
.end method

.method onEditingAnimationEnterStart()V
    .locals 0

    return-void
.end method

.method onEditingAnimationExitEnd()V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method onEditingAnimationExitStart()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 121
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

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onNormalEditAnimationEnterEnd()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onEditingModeEnterEnd()V

    :cond_0
    return-void
.end method

.method public onNormalEditAnimationExitEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onEditingModeExitEnd()V

    :cond_0
    return-void
.end method

.method public onNormalEditAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return-void
.end method

.method onQuickEditingModeChanged(ZZ)V
    .locals 3

    .line 223
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 226
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-eqz p2, :cond_2

    .line 228
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x12c

    .line 229
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 230
    invoke-static {v0, v2}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 231
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 232
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    .line 235
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 236
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 238
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

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 243
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    instance-of p2, p1, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    if-eqz p2, :cond_3

    .line 244
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

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onScreenOrientationChanged()V

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    new-instance v1, Lcom/miui/home/launcher/CellScreen$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellScreen$3;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onScreenSizeChanged()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public scaleCellLayoutToNormalEditMode(F)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 291
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 389
    iget v0, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 390
    iput p1, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    .line 391
    iget p1, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setEditMode(ZILcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 2

    .line 267
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 270
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setEditMode(Z)V

    const/4 v0, 0x1

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 272
    :goto_0
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/CellScreen;->isShowEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 273
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->onEditingModeEnterStart()V

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->onEditingModeExitStart()V

    .line 280
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/CellLayout;->doEditModeAnimation(Z)V

    return v0

    .line 283
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return v1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 1

    const v0, 0x7f0a0073

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    goto :goto_1

    .line 367
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->setTag(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method translateTouch(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleX()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouchX(Lcom/miui/home/launcher/DragObject;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    .line 116
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

.method public updateLayout()V
    .locals 3

    .line 191
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->scaleCellLayout()V

    goto :goto_0

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 196
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellLayout;->setPivotX(F)V

    .line 197
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setTranslationY(F)V

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleX(F)V

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setScaleY(F)V

    .line 206
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    return-void
.end method

.method updateVision()V
    .locals 2

    const/4 v0, 0x1

    .line 396
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v1, 0x7f0a0074

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellScreen;->setTag(ILjava/lang/Object;)V

    return-void
.end method
