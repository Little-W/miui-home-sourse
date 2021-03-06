.class public Lcom/miui/home/recents/views/RecentsSmallWindowCrop;
.super Landroid/widget/FrameLayout;
.source "RecentsSmallWindowCrop.java"


# static fields
.field private static SMALL_WINDOW_CROP_STATUS_BIGGER:I = 0x2

.field private static SMALL_WINDOW_CROP_STATUS_HIDE:I = 0x0

.field private static SMALL_WINDOW_CROP_STATUS_LARGE:I = 0x3

.field private static SMALL_WINDOW_CROP_STATUS_SHOW:I = 0x1

.field private static SMALL_WINDOW_CROP_STATUS_UNDEFINED:I = -0x1


# instance fields
.field private mCropLong:I

.field private mCropShort:I

.field private mCropStartLength:I

.field private mIsFirstAnim:Z

.field private mIsInSmallWindow:Z

.field private mIsInit:Z

.field private mLastCropStatus:I

.field private mRecentsSmallwindow:Landroid/widget/FrameLayout;

.field private mRecentsSmallwindowBack:Landroid/view/View;

.field private mRectShowHeight:I

.field private mRectShowWidth:I

.field private mScreenWidth:I

.field private mSmallwindowIcon:Landroid/view/View;

.field private mSmallwindowRectShow:Landroid/graphics/RectF;

.field private mSmallwindowText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    sget p2, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_UNDEFINED:I

    iput p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    .line 50
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInSmallWindow:Z

    const/4 p2, 0x1

    .line 53
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070209

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropShort:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070208

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropLong:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07020a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropStartLength:I

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07020b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRectShowWidth:I

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070207

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRectShowHeight:I

    return-void
.end method

.method private enterShowState()V
    .locals 3

    .line 165
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_SHOW:I

    if-eq v0, v1, :cond_1

    .line 166
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    if-eqz v0, :cond_0

    .line 167
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

    .line 168
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropShort:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateViewSize(Landroid/view/View;I)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindowBack:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 173
    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_SHOW:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    :cond_1
    return-void
.end method

.method private setViewAlpha(Landroid/view/View;F)V
    .locals 2

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private updateViewSize(Landroid/view/View;I)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public exitSmallWindowCrop(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    .line 195
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInSmallWindow:Z

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;-><init>(Lcom/miui/home/recents/views/RecentsSmallWindowCrop;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 87
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f6

    const v4, 0x4000238

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x1

    .line 97
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "home_smallwindow_crop"

    .line 98
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public initSmallWindowCrop(I)V
    .locals 4

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInSmallWindow:Z

    .line 116
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    .line 117
    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_UNDEFINED:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    .line 118
    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRectShowWidth:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float p1, p1

    iget v2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRectShowHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowRectShow:Landroid/graphics/RectF;

    .line 120
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindowBack:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public isInit()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    return v0
.end method

.method public isIsInSmallWindow()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInSmallWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartSmallWindow(Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 212
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropStartLength:I

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isToLargeState()Z
    .locals 2

    .line 208
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_LARGE:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a014b

    .line 80
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    const v0, 0x7f0a014c

    .line 81
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindowBack:Landroid/view/View;

    const v0, 0x7f0a019b

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    const v0, 0x7f0a014e

    .line 83
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowText:Landroid/widget/TextView;

    return-void
.end method

.method public resetSmallWindowCrop()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInit:Z

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInSmallWindow:Z

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsFirstAnim:Z

    .line 107
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 108
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindowBack:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 109
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public startSmallWindow(Landroid/graphics/RectF;)V
    .locals 10

    :try_start_0
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 218
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "startSmallFreeform"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/Rect;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v6

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v8, p1, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, p1, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v5, v6, v8, v9, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v7

    .line 217
    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public toLargeState()V
    .locals 2

    .line 126
    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_LARGE:I

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropLong:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateViewSize(Landroid/view/View;I)V

    .line 128
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 129
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindowBack:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 132
    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_LARGE:I

    iput v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInSmallWindow:Z

    :cond_0
    return-void
.end method

.method public updateConfiguration()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindowBack:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(ZFF)V
    .locals 3

    .line 138
    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_LARGE:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    :cond_0
    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mIsInSmallWindow:Z

    .line 143
    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_UNDEFINED:I

    if-ne p1, v0, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterShowState()V

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowRectShow:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 148
    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropStartLength:I

    int-to-float p1, p1

    sub-float/2addr p3, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowRectShow:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropStartLength:I

    int-to-float v2, v0

    sub-float/2addr p1, v2

    div-float/2addr p3, p1

    .line 149
    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mSmallwindowRectShow:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mScreenWidth:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropStartLength:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    div-float/2addr p2, p1

    .line 151
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 152
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropLong:I

    iget v0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mCropShort:I

    sub-int v0, p3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    sub-int/2addr p3, p1

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateViewSize(Landroid/view/View;I)V

    .line 153
    iget p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    sget p2, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_BIGGER:I

    if-eq p1, p2, :cond_2

    .line 154
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindow:Landroid/widget/FrameLayout;

    const p2, 0x3f19999a    # 0.6f

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mRecentsSmallwindowBack:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->setViewAlpha(Landroid/view/View;F)V

    .line 157
    :cond_2
    sget p1, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->SMALL_WINDOW_CROP_STATUS_BIGGER:I

    iput p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->mLastCropStatus:I

    goto :goto_0

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->enterShowState()V

    :goto_0
    return-void
.end method
