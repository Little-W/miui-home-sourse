.class public Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;
.super Lcom/miui/home/recents/views/RecentsTopWindowCrop;
.source "RecentsWorldCirculateAndSmallWindowCrop.java"


# instance fields
.field private final ITEM_BG_INITIAL_COLOR:I

.field private final SMALL_BG_IS_CHOSEN_COLOR:I

.field private final WORLD_BG_IS_CHOSEN_COLOR:I

.field private mAppToWorldCirculateRectF:Landroid/graphics/RectF;

.field private mHeight:I

.field private mItemBg:Landroid/graphics/drawable/GradientDrawable;

.field private mSmallwindowContent:Landroid/view/ViewGroup;

.field private mSmallwindowContentTransY:I

.field private mSmallwindowHoldText:Landroid/widget/TextView;

.field private mSmallwindowIcon:Landroid/view/View;

.field private mSpace:Landroid/widget/Space;

.field private mWidth:I

.field private mWorldcirculateContent:Landroid/view/ViewGroup;

.field private mWorldcirculateHoldText:Landroid/widget/TextView;

.field private mWorldcirculateIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "#26B2B2B2"

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->ITEM_BG_INITIAL_COLOR:I

    const-string p1, "#808288C0"

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->WORLD_BG_IS_CHOSEN_COLOR:I

    const-string p1, "#80B2B2B2"

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->SMALL_BG_IS_CHOSEN_COLOR:I

    return-void
.end method

.method private configContentParams()V
    .locals 8

    .line 307
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSpace:Landroid/widget/Space;

    invoke-virtual {v2}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07072d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 311
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f07072e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 314
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 315
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 316
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 317
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 318
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 320
    :cond_0
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 321
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 322
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 323
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 324
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07072b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 325
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSpace:Landroid/widget/Space;

    invoke-virtual {p0, v2}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewDisplayInDrag()V
    .locals 3

    .line 214
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    .line 215
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 221
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->ITEM_BG_INITIAL_COLOR:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->ITEM_BG_INITIAL_COLOR:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    .line 230
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 232
    sget v0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    return-void
.end method

.method private isToDragState(FFF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isToHoldState(FFF)Z
    .locals 5

    .line 153
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsLandscape:Z

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 154
    iget p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v3, 0x3fd051eb851eb852L    # 0.255

    cmpg-double p1, p1, v3

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v1

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 156
    :cond_1
    iget p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v3, 0x3fd73b645a1cac08L    # 0.363

    cmpg-double p1, p1, v3

    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v1

    cmpg-float p0, p3, p0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0
.end method

.method private isUpdateViewDisplayOnDrag(FF)Z
    .locals 2

    .line 181
    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 v0, 0x2

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float p2, p1, p2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    if-ne p2, v0, :cond_1

    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    iget p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setViewBgColor(Landroid/view/View;I)V
    .locals 0

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mItemBg:Landroid/graphics/drawable/GradientDrawable;

    .line 344
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mItemBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private setViewTranslation(Landroid/view/View;FFZ)V
    .locals 4

    if-eqz p4, :cond_1

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 240
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    sub-float p2, p3, p2

    iget p4, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    const/high16 p4, 0x437a0000    # 250.0f

    mul-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-long v0, p2

    const-wide/16 v2, 0x0

    .line 243
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 245
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 250
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private updateAppToWorldCirculateRectF()V
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 334
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 335
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    const/high16 v1, 0x42480000    # 50.0f

    sub-float v3, v0, v1

    sub-float v4, v2, v1

    add-float/2addr v0, v1

    add-float/2addr v2, v1

    invoke-virtual {p0, v3, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public enterDragState(FF)V
    .locals 0

    return-void
.end method

.method public enterHoldState(FF)Z
    .locals 3

    .line 187
    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->isUpdateViewDisplayOnDrag(FF)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 188
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v0, "enterHoldState  start"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->initViewDisplayInDrag()V

    .line 190
    iget p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p2

    const-string p2, "enterHoldState  end"

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-gez p1, :cond_1

    .line 191
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    if-eqz p1, :cond_2

    .line 192
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 193
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    .line 194
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->WORLD_BG_IS_CHOSEN_COLOR:I

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    const/4 p1, 0x2

    .line 195
    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    .line 196
    sget p1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    .line 197
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 200
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 202
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    .line 203
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->SMALL_BG_IS_CHOSEN_COLOR:I

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewBgColor(Landroid/view/View;I)V

    .line 204
    iput v2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    .line 205
    sget p1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_HOLD:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    .line 206
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public enterShowState()V
    .locals 5

    .line 162
    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_SHOW:I

    if-eq v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "enterShowState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 166
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    .line 168
    :cond_0
    invoke-virtual {p0, p0, v2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 169
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->initViewDisplayInDrag()V

    .line 170
    sget v0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_SHOW:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    .line 171
    iput v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    .line 172
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->updateAppToWorldCirculateRectF()V

    :cond_1
    return-void
.end method

.method public exitTopWindowCrop(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsInit:Z

    .line 257
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop$1;-><init>(Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 269
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setAlpha(F)V

    if-eqz p1, :cond_1

    .line 271
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppToWorldCirculateRectF()Landroid/graphics/RectF;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 86
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWidth:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mHeight:I

    const/16 v3, 0x7f6

    const v4, 0x4000238

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/high16 p0, 0x10000000

    .line 95
    invoke-static {v6, p0}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->addExtraFlag(Landroid/view/WindowManager$LayoutParams;I)V

    const/16 p0, 0x31

    .line 96
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x1

    .line 97
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string p0, "home_worldCirculate_and_smallWindow_crop"

    .line 98
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public initTopWindowCrop(ZIIZZ)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "initSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsInit:Z

    .line 117
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    .line 118
    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    iput v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    .line 120
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsLandscape:Z

    .line 121
    iput p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenWidth:I

    .line 122
    iput p3, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mScreenHeight:I

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->isSupportSmallWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportMiniSmallWindow:Z

    .line 124
    iput-boolean p5, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsSupportWorldcirculate:Z

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setAlpha(F)V

    .line 126
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 127
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/miui/home/recents/views/RecentsTopWindowCrop;->onFinishInflate()V

    const v0, 0x7f0a0327

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    const v0, 0x7f0a02a9

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a0326

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a02ac

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    const v0, 0x7f0a02ab

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a03ff

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a032f

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSpace:Landroid/widget/Space;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mAppToWorldCirculateRectF:Landroid/graphics/RectF;

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->updateConfiguration()V

    return-void
.end method

.method public resetTopWindowCrop()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TAG:Ljava/lang/String;

    const-string v1, "resetSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsInit:Z

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mIsFirstAnim:Z

    .line 107
    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    .line 108
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 109
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public startTopWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 279
    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/shared/recents/utilities/WorldCirculate;->startWorldCirculate(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    .line 281
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mOpenContent:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->startSmallWindow(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateConfiguration()V
    .locals 6

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070728

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0806cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0605b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1103fb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080709

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110404

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWorldcirculateHoldText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 297
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07072f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mWidth:I

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07072a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mHeight:I

    .line 299
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07072c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 300
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07072b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 301
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->setPadding(IIII)V

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070729

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mSmallwindowContentTransY:I

    .line 303
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->configContentParams()V

    return-void
.end method

.method public updateState(FFF)Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->TOP_WINDOW_CROP_STATUS_UNDEFINED:I

    if-ne v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterShowState()V

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->isToHoldState(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterHoldState(FF)Z

    move-result p0

    return p0

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->isToDragState(FFF)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterDragState(FF)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsWorldCirculateAndSmallWindowCrop;->enterShowState()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
