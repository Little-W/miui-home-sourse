.class public Lcom/miui/home/launcher/shortcuts/ShortcutMenu;
.super Landroid/widget/LinearLayout;
.source "ShortcutMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;
    }
.end annotation


# instance fields
.field private mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

.field private mAppSystemTransparentSpace:Landroid/view/View;

.field private mArrow:Landroid/view/View;

.field private mArrowCenterToMenuNearestLeftOrRightBorder:I

.field private mArrowHeight:I

.field private mArrowWidth:I

.field private mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mDragIconToArrowGap:I

.field private mIsWithoutAnimNextHide:Z

.field private mMenuVisualWidth:I

.field private mScale:F

.field private mShadowPadding:I

.field private mShortcutMenuItemNormalColor:I

.field private mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

.field private mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

.field private mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

.field private mWidgetSystemTransparentSpace:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 52
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;F)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setChildViewAlpha(F)V

    return-void
.end method

.method private addArrow(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 5

    .line 179
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowHeight:I

    int-to-float v2, v2

    const/4 v3, 0x2

    .line 180
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result v4

    .line 179
    invoke-static {v1, v2, v4}, Lcom/miui/home/launcher/shortcuts/TriangleShape;->create(FFZ)Lcom/miui/home/launcher/shortcuts/TriangleShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 181
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuItemNormalColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrow:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getElevation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrow:Landroid/view/View;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getArrowLayoutParams(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewAndAdjustOrder(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->removeAllViews()V

    const/4 v0, 0x2

    .line 284
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 287
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 293
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 294
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->reverseOrder()V

    .line 298
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 299
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 303
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 304
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 306
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 307
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 308
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 311
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->showPreInflateViews()V

    .line 312
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->showPreInflateViews()V

    .line 313
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->showPreInflateViews()V

    return-void
.end method

.method private adjustMenuMaxSize()V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calculateScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    .line 90
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;FF)V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    return-void
.end method

.method private calcPositionInfo([FZ[II)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCell1x1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearIconImageBorder([FZI)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p1

    return-object p1

    .line 322
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 323
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 p2, 0x2

    if-gt v4, p2, :cond_2

    if-ne v4, p2, :cond_1

    if-le v3, p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v5, p4

    .line 328
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearDragViewBorder([I[FIII)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p1

    return-object p1

    .line 326
    :cond_2
    :goto_0
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionAtPoint([I)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p1

    return-object p1
.end method

.method private calcShortcutMenuPositionAtPoint([I)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 5

    .line 334
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    .line 336
    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 338
    aget v3, p1, v2

    .line 339
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v1, v4}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v1

    aput v1, p1, v2

    .line 341
    aget v1, p1, v2

    iget v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, v3

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMenuVisualWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 342
    aget v1, p1, v2

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 343
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_0

    .line 345
    :cond_0
    aget v1, p1, v2

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMenuVisualWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 v1, 0x4

    .line 346
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 349
    :goto_0
    aget v1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    aget p1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p1, 0x8

    .line 351
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 353
    :cond_1
    aget p1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/4 p1, 0x2

    .line 354
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-object v0
.end method

.method private calcShortcutMenuPositionNearDragViewBorder([I[FIII)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 3

    .line 361
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    mul-int/2addr p5, p3

    .line 364
    iget p3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p5, p3, :cond_1

    .line 365
    aget p1, p1, v2

    int-to-float p1, p1

    aget p3, p2, v2

    sub-float/2addr p1, p3

    div-int/lit8 p3, p5, 0x2

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_0

    .line 367
    :cond_1
    aget p1, p2, v2

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 370
    aget p1, p2, v2

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 373
    :cond_3
    aget p1, p2, v2

    float-to-int p1, p1

    add-int/2addr p1, p5

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p1, 0x4

    .line 374
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 376
    :goto_1
    aget p1, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 377
    aget p1, p2, v1

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p1, 0x8

    .line 378
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_2

    .line 380
    :cond_4
    aget p1, p2, v1

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    add-int/2addr p1, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p2

    mul-int/2addr p2, p4

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/4 p1, 0x2

    .line 381
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_2
    return-object v0
.end method

.method private calcShortcutMenuPositionNearIconImageBorder([FZI)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 5

    .line 387
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    const/4 v1, 0x0

    .line 388
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isIconCenterMoreThanScreenHalfWidth(F)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 389
    aget v1, p1, v1

    float-to-int v1, v1

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget p3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    add-int/2addr v1, p3

    .line 390
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p3

    add-int/2addr v1, p3

    .line 391
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr v1, p3

    .line 389
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p3, 0x4

    .line 392
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_0

    .line 394
    :cond_0
    aget v1, p1, v1

    float-to-int v1, v1

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget p3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, p3

    .line 395
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p3

    sub-int/2addr v1, p3

    .line 394
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 396
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 398
    :goto_0
    aget p3, p1, v4

    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F

    move-result p3

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 399
    aget p1, p1, v4

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result p1

    float-to-int p1, p1

    .line 400
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p2

    sub-int/2addr p1, p2

    .line 399
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p1, 0x8

    .line 401
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 403
    :cond_1
    aget p1, p1, v4

    float-to-int p1, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 404
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-object v0
.end method

.method private calculateScale()F
    .locals 5

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMaxVisualHeight()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualMaxHeightWhenDisplayComplete()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualMaxWidthWhenDisplayComplete()I

    move-result v1

    .line 112
    iget v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    if-le v3, v1, :cond_1

    int-to-float v1, v1

    int-to-float v2, v3

    div-float v2, v1, v2

    :cond_1
    const-string v1, "ShortcutMenu"

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateScale, heightScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", widthScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private canMenuShowCompleteWhenMenuAboveIcon(F)Z
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getArrowLayoutParams(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 189
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowWidth:I

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowWidth:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 192
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 193
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    .line 195
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 196
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 199
    :goto_0
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 200
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x50

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 201
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 203
    :cond_1
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x30

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 204
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_1
    return-object v0
.end method

.method private getIntrinsicHeight()I
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v0

    .line 167
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getIntrinsicWidth()I
    .locals 2

    .line 161
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    .line 162
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getMaxVisualHeight()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxVisualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 127
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getMaxVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 129
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getMaxVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetSystemTransparentSpace:Landroid/view/View;

    .line 130
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getMenuVisualWidth()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    return v0
.end method

.method private getShadowPadding()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShadowPadding:I

    return v0
.end method

.method private getShortcutMenuTopYWhenMenuAboveIcon(FZ)F
    .locals 1

    .line 428
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 429
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_0
    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getShortcutMenuVisualMaxWidthWhenDisplayComplete()I
    .locals 2

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method private getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F
    .locals 2

    .line 433
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 434
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_0
    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getVisualHeight()I
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 153
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 155
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 156
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private isIconCenterMoreThanScreenHalfWidth(F)Z
    .locals 1

    .line 438
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private move(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 1

    .line 278
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->getTransX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setTranslationX(F)V

    .line 279
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->getTransY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setTranslationY(F)V

    return-void
.end method

.method private setChildViewAlpha(F)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setAlpha(F)V

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setAlpha(F)V

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setMenuItemBg()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBg()V

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBg()V

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBg()V

    return-void
.end method

.method private setMenuItemTextColor()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setTextColor()V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setTextColor()V

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setTextColor()V

    return-void
.end method

.method private setPivot(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 2

    const/4 v0, 0x4

    .line 410
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotX(F)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotX(F)V

    :goto_0
    const/4 v0, 0x2

    .line 416
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotY(F)V

    goto :goto_1

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicHeight()I

    move-result p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotY(F)V

    :goto_1
    return-void
.end method

.method private updateTransparentSpaceVisible()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->shouldBeShown()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetSystemTransparentSpace:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindShortcut(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 1

    .line 237
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 238
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAppShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->bindMenu(Ljava/util/List;)V

    .line 239
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getSystemShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->bindMenu(Ljava/util/List;)V

    .line 240
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->bindMenu(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method public getShortcutMenuVisualMaxHeightWhenDisplayComplete()I
    .locals 2

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 136
    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public hide(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 4

    .line 454
    iget-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->goToStart()V

    .line 460
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 461
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutMenu"

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide ShortcutMenu, pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCancelShortcutMenu(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0063

    .line 64
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    const v0, 0x7f0a027a

    .line 65
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    const v0, 0x7f0a02eb

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    const v0, 0x7f0a02b1

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    const v0, 0x7f0a02b2

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetSystemTransparentSpace:Landroid/view/View;

    .line 69
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrow:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070411

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShadowPadding:I

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07040e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowWidth:I

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowHeight:I

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuItemNormalColor:I

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    .line 79
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->adjustMenuMaxSize()V

    const-string v0, "ShortcutMenu"

    const-string v1, "ShortcutMenu finish inflate"

    .line 81
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->adjustMenuMaxSize()V

    return-void
.end method

.method public requestFocusForTalkBack()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->reset()V

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->reset()V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->reset()V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->resetVisibility()V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method public setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public setMenuBg()V
    .locals 3

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuItemNormalColor:I

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08058a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWithoutAnimNextHide()V
    .locals 1

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method public show([FZ[II)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->updateTransparentSpaceVisible()V

    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcPositionInfo([FZ[II)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p1

    const-string p2, "ShortcutMenu"

    .line 263
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "calculate position="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->move(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addViewAndAdjustOrder(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 266
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuItemBg()V

    .line 267
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuItemTextColor()V

    .line 268
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuBg()V

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object p2

    sget-object p3, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-eq p2, p3, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addArrow(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivot(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 273
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->showWithAnim()V

    .line 274
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->requestFocusForTalkBack()V

    return-void
.end method

.method public showWithAnim()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->goToEnd()V

    return-void
.end method
