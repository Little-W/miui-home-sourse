.class public Lmiuix/popupwidget/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrow:Landroidx/appcompat/widget/AppCompatImageView;

.field private mArrowBottom:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomRight:Landroid/graphics/drawable/Drawable;

.field private mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowMode:I

.field private mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

.field private mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mArrowSpaceLeft:I

.field private mArrowSpaceTop:I

.field private mArrowTop:Landroid/graphics/drawable/Drawable;

.field private mArrowTopLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowTopRight:Landroid/graphics/drawable/Drawable;

.field private mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

.field private mAutoDismiss:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLeft:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRight:Landroid/graphics/drawable/Drawable;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentFrameWrapper:Landroid/widget/LinearLayout;

.field private mElevation:I

.field private mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsDismissing:Z

.field private mMinBorder:I

.field private mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShowingAnimation:Z

.field private mSpaceLeft:I

.field private mSpaceTop:I

.field private mTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTranslationValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 218
    sget v0, Lmiuix/popupwidget/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 222
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/4 v1, 0x0

    .line 161
    iput-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    .line 174
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 193
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    .line 211
    iput v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 223
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 225
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 227
    sget-object v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView:[I

    sget v1, Lmiuix/popupwidget/R$style;->Widget_ArrowPopupView_DayNight:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 231
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 232
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 233
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 234
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 235
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 236
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    .line 237
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 238
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 239
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 240
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 241
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 242
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 243
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 244
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_elevation:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 245
    sget v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_android_elevation:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    .line 247
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_min_border:I

    .line 250
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static synthetic access$002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 57
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return p0
.end method

.method static synthetic access$1000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .locals 0

    .line 57
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p0
.end method

.method static synthetic access$1002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p1
.end method

.method static synthetic access$1100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateShowing()V

    return-void
.end method

.method static synthetic access$302(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .locals 0

    .line 57
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    return p0
.end method

.method static synthetic access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;[F)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method private addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V
    .locals 2

    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 387
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    .line 388
    iget p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    :cond_1
    return-void
.end method

.method private adjustArrowMode()V
    .locals 11

    const/4 v0, 0x2

    .line 1027
    new-array v0, v0, [I

    .line 1028
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1030
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getWidth()I

    move-result v1

    .line 1031
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getHeight()I

    move-result v2

    .line 1032
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 1033
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 1034
    iget-object v5, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1035
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1037
    new-instance v7, Landroid/util/SparseIntArray;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v8, 0x1

    .line 1038
    aget v9, v0, v8

    sub-int/2addr v9, v4

    const/16 v10, 0x10

    invoke-virtual {v7, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1039
    aget v8, v0, v8

    sub-int/2addr v2, v8

    sub-int/2addr v2, v5

    sub-int/2addr v2, v4

    const/16 v4, 0x8

    invoke-virtual {v7, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x0

    .line 1040
    aget v4, v0, v2

    sub-int/2addr v4, v3

    const/16 v5, 0x40

    invoke-virtual {v7, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1041
    aget v0, v0, v2

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    sub-int/2addr v1, v3

    const/16 v0, 0x20

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, -0x80000000

    .line 1047
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1048
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1049
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 1052
    :cond_0
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-le v3, v0, :cond_1

    .line 1054
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v10, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v10

    .line 1057
    :goto_1
    invoke-virtual {p0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method private animateShowing()V
    .locals 13

    .line 955
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 956
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 959
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 960
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 962
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 963
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 970
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    .line 971
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 972
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 985
    :cond_2
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    neg-float v0, v1

    move v1, v0

    .line 988
    :cond_3
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    .line 978
    :cond_4
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v1, v1

    .line 981
    :cond_5
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    :cond_6
    neg-float v1, v1

    .line 992
    :goto_0
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v1, v4, v7

    const/4 v8, 0x2

    aput v6, v4, v8

    invoke-static {v2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 993
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x4b0

    .line 994
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 995
    iget-boolean v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/16 v11, 0x8

    const/4 v12, -0x1

    if-eqz v4, :cond_7

    .line 996
    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_1

    .line 998
    :cond_7
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1000
    :goto_1
    new-instance v4, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;

    invoke-direct {v4, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1010
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    new-array v3, v3, [F

    aput v6, v3, v5

    aput v1, v3, v7

    aput v6, v3, v8

    invoke-static {v4, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1011
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1012
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1013
    iget-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    if-eqz v1, :cond_8

    .line 1014
    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_2

    .line 1016
    :cond_8
    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1018
    :goto_2
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v2, v3, v5

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1019
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_9
    return-void
.end method

.method private arrowHorizontalLayout()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 619
    new-array v2, v1, [I

    .line 620
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 621
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 622
    aget v6, v2, v5

    .line 623
    invoke-virtual {v0, v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getLocationOnScreen([I)V

    .line 624
    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 625
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 626
    invoke-virtual/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getWidth()I

    move-result v9

    .line 627
    invoke-virtual/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getHeight()I

    move-result v10

    .line 628
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 630
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v11

    .line 632
    :goto_0
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    if-le v12, v13, :cond_1

    .line 633
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    goto :goto_1

    :cond_1
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v12

    .line 634
    :goto_1
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth()I

    move-result v13

    .line 635
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight()I

    move-result v14

    .line 636
    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v6

    aget v16, v2, v5

    sub-int v15, v15, v16

    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 637
    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v15, v10, v15

    sub-int/2addr v8, v14

    .line 638
    div-int/2addr v8, v1

    add-int/2addr v6, v8

    aget v8, v2, v5

    sub-int/2addr v6, v8

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 639
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v8, v5

    div-int/2addr v8, v1

    add-int/2addr v6, v8

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 641
    div-int/lit8 v1, v12, 0x2

    sub-int v5, v12, v1

    .line 644
    invoke-virtual/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getLeft()I

    move-result v6

    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v6, v8

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 646
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isRightMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 647
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 648
    iget v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v7

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 649
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    add-int/2addr v4, v13

    aget v2, v2, v3

    sub-int/2addr v4, v2

    add-int/2addr v6, v4

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 650
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v4, v13

    add-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_2

    .line 652
    :cond_2
    iget v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v7, v4, v11

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 653
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v13

    aget v8, v2, v3

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v4, v13

    .line 654
    aget v2, v2, v3

    sub-int/2addr v4, v2

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v4, v2

    const/4 v2, 0x1

    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    .line 656
    :cond_3
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 657
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 658
    iget v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v7, v4, v11

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 659
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v13

    aget v8, v2, v3

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v4, v13

    .line 660
    aget v2, v2, v3

    sub-int/2addr v4, v2

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    .line 662
    :cond_4
    iget v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v7

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 663
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    add-int/2addr v4, v13

    aget v2, v2, v3

    sub-int/2addr v4, v2

    add-int/2addr v6, v4

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 664
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v4, v13

    add-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_2

    :cond_5
    move v2, v3

    .line 668
    :goto_2
    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-lt v4, v1, :cond_6

    if-lt v15, v5, :cond_6

    sub-int/2addr v4, v1

    .line 670
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v4, v1

    iput v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_3

    :cond_6
    if-ge v15, v5, :cond_7

    sub-int v1, v10, v12

    .line 673
    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_3

    .line 674
    :cond_7
    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-ge v4, v1, :cond_8

    .line 676
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 678
    :cond_8
    :goto_3
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 680
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    if-gez v1, :cond_9

    .line 681
    iput v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    goto :goto_4

    :cond_9
    add-int v4, v1, v14

    if-le v4, v10, :cond_a

    add-int v4, v1, v14

    sub-int/2addr v4, v10

    sub-int/2addr v1, v4

    .line 683
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 685
    :cond_a
    :goto_4
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 686
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 687
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v5, v11

    .line 688
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v6, v12

    .line 689
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 685
    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 691
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    add-int/2addr v13, v2

    add-int/2addr v14, v3

    invoke-virtual {v1, v2, v3, v13, v14}, Landroidx/appcompat/widget/AppCompatImageView;->layout(IIII)V

    return-void
.end method

.method private arrowLayout()V
    .locals 5

    .line 468
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    :goto_0
    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    .line 469
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isVerticalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowVerticalLayout()V

    goto :goto_1

    .line 472
    :cond_1
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowHorizontalLayout()V

    .line 476
    :goto_1
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 478
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 479
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    .line 480
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 481
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 482
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 483
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 484
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    :cond_3
    :goto_2
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_4

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v0, :cond_5

    :cond_4
    const-string v0, "ArrowPopupView"

    const-string v1, "Invalid LayoutPrams of content view, please check the anchor view"

    .line 487
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private arrowVerticalLayout()V
    .locals 17

    move-object/from16 v0, p0

    .line 493
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 494
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 495
    invoke-virtual/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getWidth()I

    move-result v3

    .line 496
    invoke-virtual/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getHeight()I

    move-result v4

    .line 497
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 498
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v5

    .line 500
    :goto_0
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 501
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v6

    .line 502
    :goto_1
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth()I

    move-result v7

    .line 503
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight()I

    move-result v8

    const/4 v9, 0x2

    .line 505
    new-array v10, v9, [I

    .line 506
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    .line 507
    aget v12, v10, v11

    const/4 v13, 0x1

    .line 508
    aget v14, v10, v13

    .line 509
    invoke-virtual {v0, v10}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getLocationOnScreen([I)V

    .line 510
    div-int/lit8 v15, v1, 0x2

    add-int/2addr v15, v12

    aget v16, v10, v11

    sub-int v15, v15, v16

    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 511
    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v15, v3, v15

    sub-int/2addr v1, v7

    .line 512
    div-int/2addr v1, v9

    add-int/2addr v12, v1

    aget v1, v10, v11

    sub-int/2addr v12, v1

    iput v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 514
    invoke-virtual/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getTop()I

    move-result v1

    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v9

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 516
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    aget v2, v10, v13

    sub-int v2, v14, v2

    sub-int/2addr v2, v6

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 518
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v9, v8

    add-int/2addr v2, v9

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 519
    aget v1, v10, v13

    sub-int/2addr v14, v1

    sub-int/2addr v14, v8

    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v14, v1

    add-int/lit8 v1, v14, -0x1

    goto :goto_2

    .line 520
    :cond_2
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 521
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v14, v2

    aget v2, v10, v13

    sub-int/2addr v14, v2

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 522
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v14, v2

    add-int/2addr v14, v8

    add-int/2addr v1, v14

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 523
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/2addr v1, v2

    add-int/2addr v1, v13

    goto :goto_2

    :cond_3
    move v1, v11

    .line 526
    :goto_2
    div-int/lit8 v2, v5, 0x2

    sub-int v9, v5, v2

    .line 528
    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    if-lt v10, v2, :cond_4

    if-lt v15, v9, :cond_4

    sub-int/2addr v10, v2

    .line 530
    iput v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_3

    :cond_4
    if-ge v15, v9, :cond_5

    sub-int v2, v3, v5

    .line 533
    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_3

    .line 534
    :cond_5
    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    if-ge v9, v2, :cond_6

    .line 536
    iput v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 538
    :cond_6
    :goto_3
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    add-int/2addr v2, v9

    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 539
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    add-int/2addr v2, v9

    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 541
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    if-gez v2, :cond_7

    .line 542
    iput v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    goto :goto_4

    :cond_7
    add-int v9, v2, v7

    if-le v9, v3, :cond_8

    add-int v9, v2, v7

    sub-int/2addr v9, v3

    sub-int/2addr v2, v9

    .line 544
    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 546
    :cond_8
    :goto_4
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 547
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 548
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v11, v5

    .line 549
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v5, v6

    .line 550
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 546
    invoke-virtual {v2, v9, v10, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 552
    invoke-direct {v0, v7, v8, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->executeLayoutArrow(III)V

    return-void
.end method

.method private executeLayoutArrow(III)V
    .locals 4

    .line 559
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    sparse-switch v0, :sswitch_data_0

    .line 610
    iget p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    move v3, p3

    move p3, p2

    move p2, v3

    goto/16 :goto_4

    .line 584
    :sswitch_0
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 585
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p3, p1

    .line 586
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 587
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 589
    :cond_0
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p3

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    add-int/2addr p3, v0

    .line 590
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 591
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v0, v1

    .line 593
    :goto_0
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    add-int v1, p3, p1

    .line 594
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 593
    invoke-virtual {p2, p3, v0, v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->layout(IIII)V

    add-int/lit8 p2, v0, -0x5

    goto/16 :goto_4

    .line 598
    :sswitch_1
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 599
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p3

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    add-int/2addr p3, v0

    .line 600
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 601
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 603
    :cond_1
    iget-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getRight()I

    move-result p3

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p3, p1

    .line 604
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    .line 605
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v0, v1

    :goto_1
    add-int/lit8 p2, v0, -0x5

    goto/16 :goto_4

    .line 572
    :sswitch_2
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 576
    :cond_2
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 579
    :goto_2
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr p3, v1

    sub-int/2addr p3, p2

    .line 580
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    add-int v1, v0, p1

    .line 581
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 580
    invoke-virtual {p2, v0, p3, v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->layout(IIII)V

    move p2, p3

    move p3, v0

    goto :goto_4

    .line 561
    :sswitch_3
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    goto :goto_3

    .line 564
    :cond_3
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 567
    :goto_3
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr p3, v1

    sub-int/2addr p3, p2

    .line 568
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    add-int v1, v0, p1

    .line 569
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    .line 568
    invoke-virtual {p2, v0, p3, v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->layout(IIII)V

    move p2, p3

    move p3, v0

    .line 614
    :goto_4
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    add-int/2addr p1, p3

    .line 615
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 614
    invoke-virtual {v0, p3, p2, p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->layout(IIII)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private getAnimationPivot([F)V
    .locals 6

    .line 822
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getTop()I

    move-result v0

    .line 823
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getBottom()I

    move-result v1

    .line 824
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageView;->getLeft()I

    move-result v2

    .line 825
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatImageView;->getRight()I

    move-result v3

    .line 827
    iget v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v5, 0x20

    if-eq v4, v5, :cond_6

    const/16 v5, 0x40

    if-eq v4, v5, :cond_4

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    add-int/2addr v3, v2

    .line 861
    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    add-int/2addr v1, v0

    .line 862
    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    goto/16 :goto_6

    .line 853
    :pswitch_0
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v0, v3

    goto :goto_0

    :cond_0
    int-to-float v0, v2

    :goto_0
    move v2, v0

    int-to-float v0, v1

    goto :goto_6

    .line 857
    :pswitch_1
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-float v0, v2

    goto :goto_1

    :cond_1
    int-to-float v0, v3

    :goto_1
    move v2, v0

    int-to-float v0, v1

    goto :goto_6

    :pswitch_2
    add-int/2addr v3, v2

    .line 849
    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    int-to-float v0, v1

    goto :goto_6

    .line 845
    :pswitch_3
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    int-to-float v1, v2

    goto :goto_2

    :cond_2
    int-to-float v1, v3

    :goto_2
    move v2, v1

    int-to-float v0, v0

    goto :goto_6

    .line 841
    :pswitch_4
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    int-to-float v1, v3

    goto :goto_3

    :cond_3
    int-to-float v1, v2

    :goto_3
    move v2, v1

    int-to-float v0, v0

    goto :goto_6

    :pswitch_5
    add-int/2addr v3, v2

    .line 837
    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    int-to-float v0, v0

    goto :goto_6

    .line 833
    :cond_4
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    int-to-float v2, v2

    goto :goto_4

    :cond_5
    int-to-float v2, v3

    :goto_4
    add-int/2addr v1, v0

    .line 834
    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    goto :goto_6

    .line 829
    :cond_6
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    int-to-float v2, v3

    goto :goto_5

    :cond_7
    int-to-float v2, v2

    :goto_5
    add-int/2addr v1, v0

    .line 830
    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    :goto_6
    const/4 v1, 0x0

    .line 866
    aput v2, p1, v1

    const/4 v1, 0x1

    .line 867
    aput v0, p1, v1

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getArrowHeight()I
    .locals 1

    .line 708
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    sparse-switch v0, :sswitch_data_0

    .line 718
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 715
    :sswitch_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 711
    :sswitch_1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private getArrowWidth()I
    .locals 1

    .line 698
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method private isBottomMode()Z
    .locals 1

    const/16 v0, 0x10

    .line 461
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isCertainMode(I)Z
    .locals 1

    .line 445
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLeftMode()Z
    .locals 1

    const/16 v0, 0x20

    .line 449
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isRightMode()Z
    .locals 1

    const/16 v0, 0x40

    .line 453
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isTopMode()Z
    .locals 1

    const/16 v0, 0x8

    .line 457
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isVerticalMode()Z
    .locals 1

    .line 441
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateArrowDrawable(I)V
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_7

    const/16 v0, 0x40

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_7

    .line 1096
    :pswitch_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1100
    :pswitch_1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1076
    :pswitch_2
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1092
    :pswitch_3
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1088
    :pswitch_4
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1072
    :pswitch_5
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1084
    :cond_5
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1080
    :cond_7
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addShadow()V
    .locals 2

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-direct {p0, v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    .line 365
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$4;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-direct {p0, v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method public animateToDismiss()V
    .locals 12

    .line 916
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 921
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 924
    :cond_1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    .line 925
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 928
    :cond_2
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x2

    .line 930
    new-array v0, v0, [F

    .line 931
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getAnimationPivot([F)V

    .line 933
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/4 v2, 0x0

    aget v8, v0, v2

    const/4 v9, 0x0

    aget v10, v0, v1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 938
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 940
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x96

    .line 941
    invoke-virtual {v11, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    .line 944
    :cond_3
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 947
    :goto_0
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 948
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 949
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 950
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 951
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public animateToShow()V
    .locals 2

    .line 871
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->invalidate()V

    .line 872
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public enableShowingAnimation(Z)V
    .locals 0

    .line 1138
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return-void
.end method

.method public getArrowMode()I
    .locals 1

    .line 1061
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 405
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 406
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeButton()Landroidx/appcompat/widget/AppCompatButton;
    .locals 1

    .line 437
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method public getPositiveButton()Landroidx/appcompat/widget/AppCompatButton;
    .locals 1

    .line 433
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method public getRollingPercent()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 745
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 754
    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 756
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v3, 0x40

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    move v2, v7

    move v9, v8

    move v10, v9

    goto :goto_0

    :cond_1
    const/high16 v2, 0x42b40000    # 90.0f

    .line 777
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 778
    iget v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v10, v9, v10

    .line 779
    iget-object v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v11

    sub-int v9, v11, v9

    goto :goto_0

    :cond_2
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 771
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 772
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v10

    sub-int/2addr v10, v9

    .line 773
    iget v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int/2addr v9, v11

    goto :goto_0

    :cond_3
    const/high16 v2, 0x43340000    # 180.0f

    .line 765
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 766
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getRight()I

    move-result v10

    sub-int/2addr v10, v9

    .line 767
    iget v11, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v9, v11

    goto :goto_0

    .line 759
    :cond_4
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 760
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v9, v2, v9

    .line 761
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getRight()I

    move-result v10

    sub-int v2, v10, v2

    move v10, v9

    move v9, v2

    move v2, v7

    .line 782
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    int-to-float v12, v0

    int-to-float v13, v1

    .line 783
    invoke-virtual {p1, v2, v12, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 784
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_5

    goto/16 :goto_3

    .line 797
    :cond_5
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 798
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v8, v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 799
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    :goto_1
    int-to-float v0, v0

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 800
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v10

    .line 801
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 802
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v8, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 803
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 787
    :cond_7
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    int-to-float v0, v0

    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v8, v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 789
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    goto :goto_2

    :cond_8
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    :goto_2
    int-to-float v0, v0

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 790
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v10

    .line 791
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 792
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v8, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 793
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 806
    :goto_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 260
    sget v0, Lmiuix/popupwidget/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x1020002

    .line 261
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 262
    sget v0, Lmiuix/popupwidget/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 263
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 265
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 267
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 269
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 270
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 273
    :cond_0
    sget v0, Lmiuix/popupwidget/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 274
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1020016

    .line 275
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x102001a

    .line 276
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x1020019

    .line 277
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 279
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 280
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 281
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 730
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 731
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 732
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss()V

    :cond_0
    return-void

    .line 736
    :cond_1
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-nez p1, :cond_2

    .line 737
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->adjustArrowMode()V

    .line 739
    :cond_2
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    .line 740
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowLayout()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1128
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 1129
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p1, v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    return v4

    .line 1134
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public setArrowMode(I)V
    .locals 0

    .line 1065
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 1066
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    return-void
.end method

.method public setArrowPopupWindow(Lmiuix/popupwidget/widget/ArrowPopupWindow;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 412
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 393
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0

    .line 1110
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    .line 1111
    iput p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    return-void
.end method

.method public setRollingPercent(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method
