.class public Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;
    }
.end annotation


# instance fields
.field private mActionMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private mActionModeBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimateStart:Z

.field private mAnimateToVisible:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationMode:I

.field private mAnimationProgress:F

.field private mButton1:Landroid/widget/Button;

.field private mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mButton2:Landroid/widget/Button;

.field private mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mCollapseContainer:Landroid/view/View;

.field private mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseHeight:I

.field private mContentInset:I

.field private mExpandTitleStyleRes:I

.field private mExpandTitleView:Landroid/widget/TextView;

.field private mMovableContainer:Landroid/widget/FrameLayout;

.field private mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mNonTouchScrolling:Z

.field private mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mRequestAnimation:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStartWithAnim:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTouchScrolling:Z

.field private mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010394

    .line 147
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v7, 0x1

    .line 95
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    .line 119
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 135
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x0

    .line 1034
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    .line 1035
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 1158
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    .line 153
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 155
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 156
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v2, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 157
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 157
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 161
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 164
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 165
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    .line 167
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 170
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_expandTitleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    .line 172
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentHeight:I

    .line 174
    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 177
    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/high16 v0, 0x1040000

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x1020019

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 179
    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_action_mode_select_all:I

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x102001a

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 181
    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_actionModeAnim:I

    invoke-virtual {v8, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    .line 183
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$1002(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I
    .locals 0

    .line 61
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I
    .locals 0

    .line 61
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    return p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    return p1
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I
    .locals 0

    .line 61
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    return p0
.end method

.method static synthetic access$702(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I
    .locals 0

    .line 61
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    return p1
.end method

.method static synthetic access$802(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Lmiuix/animation/physics/SpringAnimationSet;)Lmiuix/animation/physics/SpringAnimationSet;
    .locals 0

    .line 61
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    return-object p1
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;
    .locals 0

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method private animateLayoutWithProcess(F)V
    .locals 6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 564
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v0, p1

    .line 565
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    .line 567
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v3, v4, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1, v0, v4, v4, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 571
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    .line 572
    :cond_1
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 573
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v3, v4, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 574
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    .line 575
    :cond_2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    if-nez p1, :cond_3

    .line 576
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v0, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 577
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v3, v4, v4, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private canTitleBeShown()Z
    .locals 3

    .line 355
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 356
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 357
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;
    .locals 2

    .line 799
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-direct {v0, p1, v1, p4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 800
    invoke-virtual {v0, p3}, Lmiuix/animation/physics/SpringAnimation;->setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 801
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 802
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p1

    const p2, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 803
    invoke-virtual {v0, p1}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object v0
.end method

.method private onFinishStartActionMode(Z)V
    .locals 3

    .line 679
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 680
    :goto_0
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    .line 681
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private onLayoutCollapseViews(IIII)V
    .locals 3

    .line 582
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingStart()I

    move-result v0

    .line 583
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v1, v2

    sub-int/2addr p4, p2

    .line 584
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingTop()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    sub-int/2addr p4, p2

    .line 586
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 587
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, v0, v1, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    :cond_0
    sub-int/2addr p3, p1

    .line 590
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p3, p1

    .line 591
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 592
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, p1, p3, v1, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    .line 595
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 596
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    .line 597
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiuix/animation/physics/SpringAnimationSet;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimationSet;->start()V

    const/4 p1, 0x0

    .line 598
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    :cond_2
    return-void
.end method

.method private setSplitAnimating(Z)V
    .locals 1

    .line 647
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 649
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setAnimating(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 932
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 2

    .line 873
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    .line 874
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 877
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 879
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    .line 880
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOut(Z)V

    goto :goto_0

    .line 885
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    if-eqz p1, :cond_2

    .line 886
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiuix/animation/physics/SpringAnimationSet;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimationSet;->start()V

    goto :goto_0

    .line 888
    :cond_2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOut(Z)V

    :goto_0
    return-void
.end method

.method protected cancelAnimation()V
    .locals 1

    .line 631
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimationSet;->cancel()V

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    :cond_0
    const/4 v0, 0x0

    .line 635
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method public closeMode()V
    .locals 1

    .line 415
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->endAnimation()V

    const/4 v0, 0x2

    .line 416
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    return-void
.end method

.method protected endAnimation()V
    .locals 1

    .line 639
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimationSet;->endAnimation()V

    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    :cond_0
    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 451
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 456
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getActionBarStyle()I
    .locals 1

    const v0, 0x1010394

    return v0
.end method

.method public bridge synthetic getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public getAnimationProgress()F
    .locals 1

    .line 654
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getExpandState()I
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 289
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .line 439
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 9

    .line 361
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    .line 363
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->killMode()V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    .line 366
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 368
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 369
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 372
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 374
    :goto_0
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_5

    .line 382
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_menu_item_layout:I

    sget v7, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v8, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 388
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 389
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setActionEditMode(Z)V

    .line 391
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 394
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_2

    .line 395
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 396
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 397
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 401
    :cond_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 402
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 401
    invoke-virtual {v4, v5, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 404
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 405
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 406
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    goto :goto_1

    :cond_4
    const/16 v1, 0x50

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 407
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 408
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 409
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    .line 376
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_6

    .line 377
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto/16 :goto_0

    .line 379
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ActionBarOverlayLayout not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initTitle()V
    .locals 7

    .line 298
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 299
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 300
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_title_item:I

    invoke-virtual {v0, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 303
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x1020019

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 304
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x102001a

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 306
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    const v4, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_0

    .line 307
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    new-array v0, v2, [Landroid/view/View;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    aput-object v5, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    new-array v6, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v5, v6}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 312
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-array v0, v2, [Landroid/view/View;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    aput-object v5, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    new-array v5, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 316
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 317
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 320
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 321
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 326
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseContainer:Landroid/view/View;

    .line 330
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 333
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    if-eqz v0, :cond_4

    move v6, v3

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    move v5, v3

    :cond_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    .line 336
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 338
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 339
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 341
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    .line 342
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 345
    :cond_8
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v4, 0x0

    if-nez v0, :cond_9

    .line 346
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 347
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v4, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_1

    .line 348
    :cond_9
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    if-ne v0, v2, :cond_a

    .line 349
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v2, 0x14

    invoke-virtual {v0, v4, v3, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 350
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_a
    :goto_1
    return-void
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 444
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isResizable()Z
    .locals 1

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public killMode()V
    .locals 3

    .line 420
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->removeAllViews()V

    .line 421
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 425
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 428
    :cond_1
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 429
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected makeInOut(Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 663
    :goto_0
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setAlpha(F)V

    .line 665
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v2, :cond_1

    .line 666
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    return-void

    .line 670
    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 671
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    .line 672
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    int-to-float v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setTranslationY(F)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 673
    :goto_2
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    .line 674
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setAlpha(F)V

    .line 675
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    return-void
.end method

.method protected makeInOutAnimator(Z)Lmiuix/animation/physics/SpringAnimationSet;
    .locals 22

    move-object/from16 v9, p0

    move/from16 v10, p1

    .line 687
    iget-boolean v0, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    if-ne v10, v0, :cond_0

    iget-object v0, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Lmiuix/animation/physics/SpringAnimationSet;

    invoke-direct {v0}, Lmiuix/animation/physics/SpringAnimationSet;-><init>()V

    return-object v0

    .line 690
    :cond_0
    iput-boolean v10, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 697
    iget-object v11, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 698
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v13, 0x0

    if-nez v11, :cond_1

    move v14, v13

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {v11}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    move v14, v0

    :goto_0
    const/4 v0, 0x0

    if-nez v11, :cond_2

    move v15, v0

    goto :goto_1

    .line 700
    :cond_2
    invoke-virtual {v11}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getTranslationY()F

    move-result v1

    move v15, v1

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v10, :cond_3

    move v8, v0

    move v7, v1

    move v5, v13

    move v6, v14

    goto :goto_2

    :cond_3
    move v7, v0

    move v8, v1

    move v6, v13

    move v5, v14

    .line 714
    :goto_2
    new-instance v4, Lmiuix/animation/physics/SpringAnimationSet;

    invoke-direct {v4}, Lmiuix/animation/physics/SpringAnimationSet;-><init>()V

    const v0, 0x4476bd71

    if-eqz v10, :cond_4

    const v1, 0x43a1228f

    goto :goto_3

    :cond_4
    move v1, v0

    .line 717
    :goto_3
    invoke-direct {v9, v9, v1, v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v1

    if-eqz v10, :cond_5

    const-wide/16 v2, 0x32

    goto :goto_4

    :cond_5
    const-wide/16 v2, 0x0

    .line 719
    :goto_4
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/physics/SpringAnimation;->setStartDelay(J)V

    .line 720
    invoke-virtual {v4, v1}, Lmiuix/animation/physics/SpringAnimationSet;->play(Lmiuix/animation/physics/SpringAnimation;)V

    .line 721
    invoke-virtual {v9, v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setAlpha(F)V

    .line 723
    iget-boolean v2, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v2, :cond_6

    .line 725
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;

    invoke-direct {v0, v9, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V

    invoke-virtual {v1, v0}, Lmiuix/animation/physics/SpringAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 726
    iput-object v4, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    return-object v4

    .line 730
    :cond_6
    iput-boolean v13, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    if-eqz v10, :cond_7

    const/16 v1, 0x64

    move v3, v1

    goto :goto_5

    :cond_7
    move v3, v13

    :goto_5
    if-eqz v10, :cond_8

    const v0, 0x43db5333    # 438.65f

    :cond_8
    move v2, v0

    .line 741
    new-instance v1, Lmiuix/animation/physics/SpringAnimation;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;

    const-string v16, ""

    move-object/from16 v17, v0

    move-object v13, v1

    move-object/from16 v1, p0

    move v9, v2

    move-object/from16 v2, v16

    move v10, v3

    move-object v3, v11

    move-object/from16 v18, v4

    move v4, v15

    move/from16 v16, v5

    move v5, v14

    move/from16 v19, v6

    move/from16 v6, p1

    move/from16 v20, v7

    move/from16 v7, v19

    move/from16 v21, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Ljava/lang/String;Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;FIZII)V

    move/from16 v0, v19

    int-to-float v0, v0

    move-object/from16 v1, v17

    invoke-direct {v13, v12, v1, v0}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    move/from16 v0, v16

    int-to-float v1, v0

    .line 771
    invoke-virtual {v13, v1}, Lmiuix/animation/physics/SpringAnimation;->setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 772
    invoke-virtual {v13}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v2

    invoke-virtual {v2, v9}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 773
    invoke-virtual {v13}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v2

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    int-to-long v2, v10

    .line 774
    invoke-virtual {v13, v2, v3}, Lmiuix/animation/physics/SpringAnimation;->setStartDelay(J)V

    .line 775
    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;

    move v7, v9

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V

    invoke-virtual {v13, v4}, Lmiuix/animation/physics/SpringAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    if-eqz v11, :cond_9

    int-to-float v4, v14

    add-float/2addr v15, v4

    sub-float/2addr v15, v1

    .line 778
    invoke-virtual {v11, v15}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setTranslationY(F)V

    .line 780
    :cond_9
    invoke-virtual {v12, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    if-eqz v11, :cond_a

    move/from16 v1, v20

    move/from16 v0, v21

    .line 784
    invoke-direct {v5, v11, v7, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v1

    .line 785
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/physics/SpringAnimation;->setStartDelay(J)V

    .line 786
    invoke-virtual {v11, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setAlpha(F)V

    const/4 v0, 0x2

    .line 788
    new-array v0, v0, [Lmiuix/animation/physics/SpringAnimation;

    const/4 v2, 0x0

    aput-object v13, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lmiuix/animation/physics/SpringAnimationSet;->playTogether([Lmiuix/animation/physics/SpringAnimation;)V

    goto :goto_6

    :cond_a
    move-object/from16 v1, v18

    .line 790
    invoke-virtual {v1, v13}, Lmiuix/animation/physics/SpringAnimationSet;->play(Lmiuix/animation/physics/SpringAnimation;)V

    .line 793
    :goto_6
    iput-object v1, v5, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    return-object v1
.end method

.method public notifyAnimationEnd(Z)V
    .locals 2

    .line 915
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 918
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 919
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .locals 2

    .line 895
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 899
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 2

    .line 905
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 908
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 909
    invoke-interface {v1, p1, p2}, Lmiuix/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 196
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 199
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 200
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 202
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 199
    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 204
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_horizontal_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 205
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_horizontal_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 206
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 211
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 212
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 214
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1045
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 1046
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1047
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1052
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    .line 1056
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1058
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 546
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 547
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    goto :goto_0

    .line 548
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sub-int v6, p5, p3

    sub-int v4, v6, v0

    .line 556
    invoke-direct {p0, p2, p3, p4, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutCollapseViews(IIII)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    .line 557
    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutExpandViews(ZIIII)V

    .line 559
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 560
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->animateLayoutWithProcess(F)V

    return-void
.end method

.method protected onLayoutExpandViews(ZIIII)V
    .locals 1

    .line 603
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 604
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    if-eqz p1, :cond_1

    .line 606
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 609
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 610
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int p2, p4, p1

    .line 612
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 613
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p5, p3

    sub-int/2addr p4, p5

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 614
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    .line 613
    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 615
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 492
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 494
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentHeight:I

    if-lez v0, :cond_0

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 496
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr p2, v0

    const/high16 v2, -0x80000000

    .line 499
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 502
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 503
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v3, v1, p2, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 504
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v4

    .line 507
    :goto_1
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    const/high16 v5, 0x40000000    # 2.0f

    .line 508
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 509
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 510
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v3, p2

    .line 512
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->canTitleBeShown()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    :cond_3
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentHeight:I

    if-gtz p2, :cond_7

    .line 517
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getChildCount()I

    move-result p2

    move v1, v4

    move v2, v1

    :goto_3
    if-ge v1, p2, :cond_5

    .line 519
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 520
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-le v3, v2, :cond_4

    move v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    if-lez v2, :cond_6

    .line 525
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int v4, v2, p2

    :cond_6
    invoke-virtual {p0, p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_5

    :cond_7
    if-lez v3, :cond_8

    .line 527
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentHeight:I

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr p2, v0

    goto :goto_4

    :cond_8
    move p2, v4

    :goto_4
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    .line 529
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 530
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 531
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 529
    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 533
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    .line 534
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_5

    .line 535
    :cond_9
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 536
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_5

    .line 538
    :cond_a
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setMeasuredDimension(II)V

    :goto_5
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 1

    if-lez p3, :cond_1

    .line 1139
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    if-le p1, p2, :cond_1

    .line 1140
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    .line 1141
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 1142
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    const/4 v0, 0x1

    if-lt p1, p5, :cond_0

    sub-int p1, p2, p3

    .line 1143
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 1144
    aget p1, p4, v0

    add-int/2addr p1, p3

    aput p1, p4, v0

    goto :goto_0

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    sub-int/2addr p5, p1

    const/4 p1, 0x0

    .line 1147
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 1148
    aget p1, p4, v0

    neg-int p3, p5

    add-int/2addr p1, p3

    aput p1, p4, v0

    .line 1151
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p2, p1

    .line 1152
    aput p2, p6, v0

    .line 1153
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 0

    if-gez p5, :cond_1

    .line 1064
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    .line 1065
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 1066
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p2

    sub-int/2addr p2, p5

    .line 1067
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    const/4 p4, 0x1

    if-gt p2, p3, :cond_0

    .line 1068
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    sub-int/2addr p2, p5

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 1069
    aget p2, p7, p4

    add-int/2addr p2, p5

    aput p2, p7, p4

    goto :goto_0

    .line 1071
    :cond_0
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1072
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 1073
    aget p3, p7, p4

    neg-int p2, p2

    add-int/2addr p3, p2

    aput p3, p7, p4

    .line 1076
    :goto_0
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p2, p1, :cond_1

    sub-int/2addr p1, p2

    .line 1077
    aput p1, p8, p4

    .line 1078
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    if-nez p4, :cond_0

    .line 1095
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    goto :goto_0

    .line 1097
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 1099
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1100
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    const/4 p1, 0x2

    .line 1103
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 273
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    .line 274
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 275
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    const v1, 0x102001a

    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    .line 277
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->postShowOverflowMenu()V

    .line 280
    :cond_0
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 257
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 258
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    .line 259
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    .line 260
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    .line 263
    :cond_0
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 264
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    goto :goto_0

    .line 266
    :cond_1
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mInnerExpandState:I

    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    :goto_0
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1085
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    .line 1109
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1110
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    .line 1111
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_0

    .line 1114
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-eqz p1, :cond_1

    .line 1115
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 1120
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    if-ne p1, v1, :cond_2

    .line 1121
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    .line 1123
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 1124
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    .line 1128
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    if-le p1, p2, :cond_4

    .line 1129
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p2

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1

    .line 1131
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result p2

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1133
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 461
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public bridge synthetic setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    return-void
.end method

.method public setActionModeAnim(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    .line 658
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    .line 659
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 3

    .line 808
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_2

    .line 810
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 811
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 812
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 814
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    const v2, 0x102001a

    if-ne p1, v2, :cond_5

    .line 816
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_4

    .line 817
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 818
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setContentInset(I)V
    .locals 0

    .line 191
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6

    .line 220
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    .line 221
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_4

    .line 223
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_1

    .line 227
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 228
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 231
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 236
    :cond_1
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 237
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    .line 236
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 239
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 240
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 241
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 243
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 246
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 294
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .line 624
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->requestLayout()V

    .line 627
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
