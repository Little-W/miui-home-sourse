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

.field private mArrowCenterToMenuNearestLeftOrRightBorder:I

.field private mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mDragIconToArrowGap:I

.field private mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

.field private mIsWithoutAnimNextHide:Z

.field private mMenuVisualWidth:I

.field private mScale:F

.field private mShadowPadding:I

.field private mShortcutMenuItemNormalColor:I

.field private mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

.field private mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

.field private mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;F)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setChildViewAlpha(F)V

    return-void
.end method

.method private addViewAndAdjustOrder(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 0

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->removeAllViews()V

    .line 266
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 271
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addView(Landroid/view/View;)V

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->showPreInflateViews()V

    .line 282
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->showPreInflateViews()V

    .line 283
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->showPreInflateViews()V

    .line 284
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->showPreInflateViews()V

    return-void
.end method

.method private adjustMenuMaxSize()V
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calculateScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    .line 89
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;FF)V

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    return-void
.end method

.method private calcPositionInfo([FZ[II)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 8

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCell1x1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearIconImageBorder([FZI)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move v7, p2

    .line 296
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearIconImageMiddleOrBorder([I[FIIIZ)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x2

    if-gt v5, p2, :cond_3

    if-ne v5, p2, :cond_2

    if-le v4, p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    .line 303
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionNearDragViewBorder([I[FIII)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0

    .line 301
    :cond_3
    :goto_0
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcShortcutMenuPositionAtPoint([I)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p0

    return-object p0
.end method

.method private calcShortcutMenuPositionAtPoint([I)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 5

    .line 309
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    .line 311
    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 313
    aget v3, p1, v2

    .line 314
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v1, v4}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v1

    aput v1, p1, v2

    .line 316
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

    .line 317
    aget v1, p1, v2

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 318
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_0

    .line 320
    :cond_0
    aget v1, p1, v2

    iget v2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMenuVisualWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 v1, 0x4

    .line 321
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 324
    :goto_0
    aget v1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    aget p1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p0, 0x8

    .line 326
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 328
    :cond_1
    aget p1, p1, v4

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/4 p0, 0x2

    .line 329
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-object v0
.end method

.method private calcShortcutMenuPositionNearDragViewBorder([I[FIII)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 4

    .line 336
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    mul-int/2addr p5, p3

    .line 339
    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le p5, v1, :cond_1

    .line 340
    aget p1, p1, v3

    int-to-float p1, p1

    aget v1, p2, v3

    sub-float/2addr p1, v1

    div-int/lit8 v1, p5, 0x2

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_0
    move p1, v3

    goto :goto_1

    .line 342
    :cond_1
    aget p1, p2, v3

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_2

    .line 345
    aget p1, p2, v3

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 346
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_2

    .line 348
    :cond_2
    aget p1, p2, v3

    float-to-int p1, p1

    add-int/2addr p1, p5

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p5

    sub-int/2addr p1, p5

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p1, 0x4

    .line 349
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 351
    :goto_2
    aget p1, p2, v2

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result p1

    const/4 p5, 0x2

    if-eqz p1, :cond_4

    .line 352
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-lt p1, p5, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-lt p1, p5, :cond_3

    .line 353
    aget p1, p2, v2

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    sub-int/2addr p1, p2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    mul-int/2addr p0, p5

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    goto :goto_3

    .line 355
    :cond_3
    aget p1, p2, v2

    float-to-int p1, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    sub-int/2addr p1, p2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    :goto_3
    const/16 p0, 0x8

    .line 357
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_5

    .line 359
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-lt p1, p5, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-lt p1, p5, :cond_5

    .line 360
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 361
    aget p2, p2, v2

    float-to-int p2, p2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    add-int/2addr p2, v1

    sget-object v1, Lcom/miui/home/launcher/folder/BigFolderConfig;->Companion:Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, p3, p4}, Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;->bigFolderIconHeight(Landroid/content/Context;II)I

    move-result p0

    add-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    goto :goto_4

    .line 363
    :cond_5
    aget p1, p2, v2

    float-to-int p1, p1

    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    add-int/2addr p1, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p0

    mul-int/2addr p0, p4

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 365
    :goto_4
    invoke-virtual {v0, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_5
    return-object v0
.end method

.method private calcShortcutMenuPositionNearIconImageBorder([FZI)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 5

    .line 443
    new-instance v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    const/4 v1, 0x0

    .line 444
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isIconCenterMoreThanScreenHalfWidth(F)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 445
    aget v1, p1, v1

    float-to-int v1, v1

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget p3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    add-int/2addr v1, p3

    .line 447
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr v1, p3

    .line 445
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p3, 0x4

    .line 448
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_0

    .line 450
    :cond_0
    aget v1, p1, v1

    float-to-int v1, v1

    div-int/2addr p3, v3

    add-int/2addr v1, p3

    iget p3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 452
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    .line 454
    :goto_0
    aget p3, p1, v4

    invoke-direct {p0, p3, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F

    move-result p3

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 455
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p3

    .line 456
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    add-int/2addr p3, v1

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisibleItemCount()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr p3, v1

    .line 462
    :cond_3
    aget v1, p1, v4

    invoke-direct {p0, v1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 464
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icon1x1 shortcut positionY: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v4

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutMenu"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    .line 465
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 467
    :cond_4
    aget p1, p1, v4

    float-to-int p1, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 468
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-object v0
.end method

.method private calcShortcutMenuPositionNearIconImageMiddleOrBorder([I[FIIIZ)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;
    .locals 8

    .line 373
    new-instance v7, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    invoke-direct {v7}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;-><init>()V

    const/4 v0, 0x0

    .line 374
    aget v1, p2, v0

    aget v2, p1, v0

    move-object v0, p0

    move v3, p5

    move v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setShortcutMenuXPosition(FIIILcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    const/4 p1, 0x1

    .line 376
    aget v1, p2, p1

    move v2, p5

    move v3, p3

    move v4, p4

    move v5, p6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setShortcutMenuYPosition(FIIIZLcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    return-object v7
.end method

.method private calculateScale()F
    .locals 3

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getMaxVisualHeight()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualMaxHeightWhenDisplayComplete()I

    move-result v2

    if-le v0, v2, :cond_1

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuVisualMaxWidthWhenDisplayComplete()I

    move-result v2

    .line 114
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    if-le p0, v2, :cond_2

    int-to-float v1, v2

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 118
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateScale, heightScale="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", widthScale="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ShortcutMenu"

    invoke-static {v2, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private canMenuShowCompleteWhenMenuAboveIcon(F)Z
    .locals 0

    .line 488
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canMenuShowCompleteWhenMenuBelowIcon(FZ)Z
    .locals 4

    .line 493
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 498
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move p0, v2

    goto :goto_1

    .line 499
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_1
    int-to-float p0, p0

    sub-float/2addr p1, p0

    sub-float/2addr v1, p1

    int-to-float p0, v0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private getBigIconMenuTransY(FIIIZ)I
    .locals 0

    const/4 p2, 0x1

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    .line 430
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    :goto_1
    float-to-int p0, p1

    return p0

    :cond_1
    if-eqz p5, :cond_2

    float-to-int p1, p1

    .line 433
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p0

    :goto_2
    sub-int/2addr p1, p0

    return p1

    :cond_2
    if-eqz p2, :cond_3

    .line 436
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    goto :goto_1

    :cond_3
    float-to-int p1, p1

    .line 438
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    goto :goto_2
.end method

.method private getIntrinsicHeight()I
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result p0

    return p0
.end method

.method private getIntrinsicWidth()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    return p0
.end method

.method private getMaxVisualHeight()I
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxVisualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    .line 130
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getItemHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getMaxVisualHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getMenuVisualWidth()I
    .locals 0

    .line 170
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    return p0
.end method

.method private getShadowPadding()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShadowPadding:I

    return p0
.end method

.method private getShortcutMenuTopYWhenMenuAboveIcon(FZ)F
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 504
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private getShortcutMenuTopYWhenMenuBelowIcon(IF)F
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    float-to-int p0, p2

    .line 508
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    .line 509
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p1

    :goto_0
    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method private getShortcutMenuVisualMaxWidthWhenDisplayComplete()I
    .locals 1

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr p0, v0

    return p0
.end method

.method private getShortcutMenuVisualTopYWhenMenuAboveIcon(FZ)F
    .locals 2

    .line 513
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisualHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 514
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private getVisualHeight()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 151
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    .line 153
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisualHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private isIconCenterMoreThanScreenHalfWidth(F)Z
    .locals 0

    .line 518
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private move(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 1

    .line 260
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->getTransX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setTranslationX(F)V

    .line 261
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->getTransY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setTranslationY(F)V

    return-void
.end method

.method private requestAccessibilityFocus(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private setBlur()V
    .locals 14

    .line 643
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 646
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07065e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, -0x4c89898a

    const/16 v10, 0x64

    const v11, 0x66b4b4b4

    const/16 v12, 0x64

    move-object v5, p0

    .line 645
    invoke-static/range {v5 .. v12}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZIIIII)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    const v6, -0xe05a00

    const/16 v7, 0x6a

    const v8, -0xd10e00

    const/16 v9, 0x6a

    const v10, -0x4cdbdbdc

    const/4 v11, 0x3

    const v12, -0x4c000001

    const/4 v13, 0x3

    move-object v2, p0

    .line 647
    invoke-static/range {v2 .. v13}, Lcom/miui/home/launcher/common/BlurUtilities;->setElementBlur(Landroid/view/View;IIZIIIIIIII)V

    :cond_0
    return-void
.end method

.method private setChildViewAlpha(F)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setAlpha(F)V

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setAlpha(F)V

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setAlpha(F)V

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setAlpha(F)V

    return-void
.end method

.method private setMenuItemBg()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBg()V

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBg()V

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBg()V

    .line 200
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBg()V

    return-void
.end method

.method private setMenuItemTextColor()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setTextColor()V

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setTextColor()V

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setTextColor()V

    .line 207
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setTextColor()V

    return-void
.end method

.method private setPivot(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 2

    const/4 v0, 0x4

    .line 474
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotX(F)V

    goto :goto_0

    .line 477
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotX(F)V

    :goto_0
    const/4 v0, 0x2

    .line 480
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->isDragViewAtMenuPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 481
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotY(F)V

    goto :goto_1

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivotY(F)V

    :goto_1
    return-void
.end method

.method private setShortcutMenuXPosition(FIIILcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 2

    mul-int/2addr p3, p4

    .line 387
    iget p4, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, p4, :cond_0

    int-to-float p2, p2

    sub-float/2addr p2, p1

    .line 388
    div-int/lit8 p4, p3, 0x2

    int-to-float p4, p4

    cmpg-float p2, p2, p4

    if-gez p2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    add-int/2addr p2, p4

    .line 392
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p4

    if-ge p2, p4, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    float-to-int p0, p1

    .line 395
    invoke-virtual {p5, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    .line 396
    invoke-virtual {p5, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_2

    :cond_2
    float-to-int p1, p1

    add-int/2addr p1, p3

    .line 399
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getIntrinsicWidth()I

    move-result p0

    sub-int/2addr p1, p0

    .line 398
    invoke-virtual {p5, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransX(I)V

    const/4 p0, 0x4

    .line 400
    invoke-virtual {p5, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_2
    return-void
.end method

.method private setShortcutMenuYPosition(FIIIZLcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V
    .locals 8

    .line 407
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/launcher/sosc/module/SoscEvent;->isMinimized:Z

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    move v3, p1

    goto :goto_0

    .line 409
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    move v3, v1

    .line 410
    :goto_0
    invoke-direct {p0, p1, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuAboveIcon(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-direct {p0, p1, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuAboveIcon(FZ)F

    move-result p1

    float-to-int p1, p1

    .line 413
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    if-eqz v0, :cond_1

    mul-int/lit8 p0, p0, 0x3

    :cond_1
    sub-int/2addr p1, p0

    .line 412
    invoke-virtual {p6, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    const/16 p0, 0x8

    .line 414
    invoke-virtual {p6, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    .line 415
    :cond_2
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuBelowIcon(IF)F

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->canMenuShowCompleteWhenMenuBelowIcon(FZ)Z

    move-result p5

    const/4 v0, 0x2

    if-eqz p5, :cond_3

    float-to-int p1, p1

    int-to-float p1, p1

    .line 416
    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShortcutMenuTopYWhenMenuBelowIcon(IF)F

    move-result p1

    float-to-int p1, p1

    .line 417
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getShadowPadding()I

    move-result p0

    add-int/2addr p1, p0

    .line 416
    invoke-virtual {p6, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 418
    invoke-virtual {p6, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    .line 420
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getBigIconMenuTransY(FIIIZ)I

    move-result p0

    invoke-virtual {p6, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setTransY(I)V

    .line 422
    invoke-virtual {p6, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;->setDragViewRelativeToMenuPosition(I)V

    :goto_1
    return-void
.end method

.method private updateTransparentSpaceVisible()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->shouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->shouldBeShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindShortcut(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 2

    .line 211
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 212
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAppShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAppShortcutMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;)V

    .line 215
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getSystemShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getSystemShortcutMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;)V

    .line 218
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;)V

    .line 221
    :cond_2
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getFolderShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 222
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getFolderShortcutMenuItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method public getShortcutMenuVisualMaxHeightWhenDisplayComplete()I
    .locals 1

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v0, p0

    .line 136
    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getApplicationIconContainerHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public hide(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 2

    .line 534
    iget-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->goToStart()V

    .line 540
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 541
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide ShortcutMenu, pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutMenu"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCancelShortcutMenu(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 0

    .line 522
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 638
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 639
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setBlur()V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setBlur()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 655
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 656
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0071

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    const v0, 0x7f0a0357

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    const v0, 0x7f0a017c

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    const v0, 0x7f0a03eb

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    const v0, 0x7f0a03aa

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070662

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShadowPadding:I

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0605ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuItemNormalColor:I

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mMenuVisualWidth:I

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mArrowCenterToMenuNearestLeftOrRightBorder:I

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mDragIconToArrowGap:I

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->adjustMenuMaxSize()V

    const-string p0, "ShortcutMenu"

    const-string v0, "ShortcutMenu finish inflate"

    .line 80
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->adjustMenuMaxSize()V

    return-void
.end method

.method public requestFocusForTalkBack()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->requestAccessibilityFocus(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->requestAccessibilityFocus(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;)Z

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
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->reset()V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->reset()V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->resetVisibility()V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method public setBindedItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mBindedItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public setMenuBg()V
    .locals 4

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0605ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShortcutMenuItemNormalColor:I

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mWidgetShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0806bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0806c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppShortcutMenu:Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mSystemShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mFolderShortcutMenu:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWithoutAnimNextHide()V
    .locals 1

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mIsWithoutAnimNextHide:Z

    return-void
.end method

.method public show([FZ[II)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->updateTransparentSpaceVisible()V

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->calcPositionInfo([FZ[II)Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;

    move-result-object p1

    .line 243
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calculate position="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ShortcutMenu"

    invoke-static {p3, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->move(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->addViewAndAdjustOrder(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 246
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuItemTextColor()V

    .line 247
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p2

    if-nez p2, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuItemBg()V

    .line 249
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setMenuBg()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 251
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setElevation(F)V

    .line 252
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mAppSystemTransparentSpace:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0801a8

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setPivot(Lcom/miui/home/launcher/shortcuts/ShortcutMenuPositionInfo;)V

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->showWithAnim()V

    .line 256
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->requestFocusForTalkBack()V

    return-void
.end method

.method public showWithAnim()V
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->mShowOrHideAnimator:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->goToEnd()V

    return-void
.end method
