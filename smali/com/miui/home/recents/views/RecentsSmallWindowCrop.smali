.class public Lcom/miui/home/recents/views/RecentsSmallWindowCrop;
.super Landroid/widget/FrameLayout;
.source "RecentsSmallWindowCrop.java"


# static fields
.field private static SMALL_WINDOW_CROP_STATUS_DRAG:I = 0x2

.field private static SMALL_WINDOW_CROP_STATUS_HOLD:I = 0x3

.field private static SMALL_WINDOW_CROP_STATUS_SHOW:I = 0x1

.field private static SMALL_WINDOW_CROP_STATUS_UNDEFINED:I = -0x1

.field private static sIsSupportStartSmallWithPosition:Z


# instance fields
.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mHeight:I

.field private mIsFirstAnim:Z

.field private mIsInit:Z

.field private mIsLandscape:Z

.field private mLastCropStatus:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSmallwindowBackground:Landroid/view/View;

.field private mSmallwindowContent:Landroid/view/ViewGroup;

.field private mSmallwindowContentTransX:I

.field private mSmallwindowContentTransY:I

.field private mSmallwindowDragText:Landroid/widget/TextView;

.field private mSmallwindowHoldText:Landroid/widget/TextView;

.field private mSmallwindowIcon:Landroid/view/View;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isSupportStartSmallWithPosition()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->sIsSupportStartSmallWithPosition:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    sget p1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    .line 73
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeForceDarkAllowed(Landroid/view/View;)V

    return-void
.end method

.method private enterShowState()V
    .locals 4

    .line 164
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_SHOW:I

    if-eq v0, v1, :cond_1

    const-string v0, "RecentsSmallWindowCrop"

    const-string v1, "enterShowState"

    .line 165
    .line 166
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v2, v2

    iget-boolean v3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    .line 167
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 171
    invoke-direct {p0, p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 174
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 175
    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_SHOW:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    :cond_1
    return-void
.end method

.method private static isSupportStartSmallWithPosition()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.util.MiuiMultiWindowUtils"

    .line 296
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startSmallFreeform"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    .line 298
    invoke-static {v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    .line 296
    invoke-static {v1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "RecentsSmallWindowCrop"

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportStartSmallWithPosition,method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move v0, v6

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "RecentsSmallWindowCrop"

    const-string v3, "isSupportStartSmallWithPosition error"

    .line 303
    return v0
.end method

.method private isToDragState(FFF)Z
    .locals 4

    .line 147
    iget-boolean p3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsLandscape:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 148
    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v2, 0x3fd916872b020c4aL    # 0.392

    cmpg-double p1, p1, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 150
    :cond_1
    iget p3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-wide v2, 0x3fe1cac083126e98L    # 0.556

    cmpg-double p2, p2, v2

    if-gez p2, :cond_2

    iget p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v2, 0x3fe3ae147ae147aeL    # 0.615

    cmpl-double p1, p1, v2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private isToHoldState(FFF)Z
    .locals 8

    .line 155
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsLandscape:Z

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 156
    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v4, 0x3fd051eb851eb852L    # 0.255

    cmpg-double p1, p1, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 158
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v4, p2

    const-wide v6, 0x3fd73b645a1cac08L    # 0.363

    cmpg-double p2, v4, v6

    if-gez p2, :cond_2

    iget p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v4, 0x3fe883126e978d50L    # 0.766

    cmpl-double p1, p1, v4

    if-lez p1, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method private setViewAlpha(Landroid/view/View;F)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;FJ)V

    return-void
.end method

.method private setViewAlpha(Landroid/view/View;FJ)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 237
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private setViewTranslation(Landroid/view/View;FFZ)V
    .locals 6

    if-eqz p4, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p4

    cmpl-float p4, p4, p2

    if-nez p4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p4

    cmpl-float p4, p4, p3

    if-nez p4, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 210
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p4

    sub-float p4, p2, p4

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransX:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-long v1, p4

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p4

    sub-float p4, p3, p4

    iget v3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransY:I

    int-to-float v3, v3

    div-float/2addr p4, v3

    mul-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-long v3, p4

    .line 214
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    .line 215
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 217
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 222
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enterDragState()V
    .locals 4

    .line 180
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_DRAG:I

    if-eq v0, v1, :cond_0

    const-string v0, "RecentsSmallWindowCrop"

    const-string v1, "enterDragState"

    .line 181
    const v0, 0x3f4ccccd    # 0.8f

    .line 182
    invoke-direct {p0, p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    const v1, 0x3f0a3d71    # 0.54f

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x12c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;FJ)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 186
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    .line 187
    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_DRAG:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    :cond_0
    return-void
.end method

.method public enterHoldState()Z
    .locals 3

    .line 192
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_HOLD:I

    if-eq v0, v1, :cond_0

    const-string v0, "RecentsSmallWindowCrop"

    const-string v1, "enterHoldState"

    .line 193
    const/high16 v0, 0x3f800000    # 1.0f

    .line 194
    invoke-direct {p0, p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 195
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 196
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 197
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 198
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewTranslation(Landroid/view/View;FFZ)V

    .line 199
    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_HOLD:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public exitSmallWindowCrop(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;-><init>(Lcom/miui/home/recents/views/RecentsSmallWindowCrop;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 255
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setAlpha(F)V

    if-eqz p1, :cond_1

    .line 257
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 88
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mWidth:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mHeight:I

    const/16 v3, 0x7f6

    const v4, 0x4000238

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x35

    .line 97
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    .line 98
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "home_smallwindow_crop"

    .line 99
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public initSmallWindowCrop(ZII)V
    .locals 2

    const-string v0, "RecentsSmallWindowCrop"

    const-string v1, "initSmallWindowCrop"

    .line 115
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    .line 117
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    .line 118
    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_UNDEFINED:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    .line 119
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsLandscape:Z

    .line 120
    iput p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    .line 121
    iput p3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenHeight:I

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setAlpha(F)V

    .line 124
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 126
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public isInHoldState()Z
    .locals 2

    .line 263
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_HOLD:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInit()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a018d

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    const v0, 0x7f0a01e9

    .line 80
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    const v0, 0x7f0a0190

    .line 81
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    const v0, 0x7f0a018f

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    const v0, 0x7f0a01e8

    .line 83
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateConfiguration()V

    return-void
.end method

.method public resetSmallWindowCrop()V
    .locals 2

    const-string v0, "RecentsSmallWindowCrop"

    const-string v1, "resetSmallWindowCrop"

    .line 104
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    .line 108
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 109
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 110
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public startSmallWindow(Landroid/graphics/RectF;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    sget-boolean v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->sIsSupportStartSmallWithPosition:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsLandscape:Z

    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v4, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    :try_start_0
    const-string v4, "android.util.MiuiMultiWindowUtils"

    .line 274
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "startSmallFreeform"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v1

    const-class v9, Landroid/graphics/Rect;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    new-array v7, v7, [Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v1

    new-instance v1, Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v10, p1, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v11, p1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v1, v9, v10, v11, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    .line 273
    invoke-static {v4, v5, v6, v8, v7}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 284
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "startSmallFreeform"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v6, v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v2, v1

    new-instance v1, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, p1, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v1, v7, v8, v9, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v3

    .line 283
    invoke-static {v0, v4, v5, v6, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public updateConfiguration()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080510

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06035f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowHoldText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1002f8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowDragText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mWidth:I

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mHeight:I

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 323
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setPadding(IIII)V

    .line 324
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 325
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070356

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 326
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070357

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransX:I

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070358

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowContentTransY:I

    return-void
.end method

.method public updateState(FFF)Z
    .locals 2

    .line 130
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_UNDEFINED:I

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterShowState()V

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isToHoldState(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterHoldState()Z

    move-result p1

    return p1

    .line 137
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isToDragState(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterDragState()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterShowState()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
