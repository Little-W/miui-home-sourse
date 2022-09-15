.class public Lmiuix/appcompat/internal/app/widget/ActionBarView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;,
        Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
    }
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

.field protected mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

.field protected mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

.field private mCollapseContainer:Landroid/widget/FrameLayout;

.field private mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseCustomContainer:Landroid/widget/FrameLayout;

.field private mCollapseHeight:I

.field private mCollapseSubtitleStyleRes:I

.field private mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

.field private mCollapseTabHeight:I

.field private mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

.field private mCollapseTitleShowable:Z

.field private mCollapseTitleStyleRes:I

.field private mContext:Landroid/content/Context;

.field private mCustomNavView:Landroid/view/View;

.field private final mCustomTitleWatcher:Landroid/text/TextWatcher;

.field private mDisplayOptions:I

.field private mEndView:Landroid/view/View;

.field private mExpandTabTopPadding:I

.field private mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeAsUpIndicatorResId:I

.field private mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLogoInitIndicator:I

.field private mImmersionView:Landroid/view/View;

.field private mInActionMode:Z

.field private mInActionModeAnimating:Z

.field private mInSearchMode:Z

.field private mIncludeTabs:Z

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsed:Z

.field private mIsTitleHidding:Z

.field private mIsTitleShowing:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mMovableContainer:Landroid/widget/FrameLayout;

.field private mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

.field private mMovableTabHeight:I

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mNonTouchScrolling:Z

.field private mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mProgressBarPadding:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mStartView:Landroid/view/View;

.field private mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTempResizable:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private final mTitleClickListener:Landroid/view/View$OnClickListener;

.field private mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mTitleUpView:Landroid/view/View;

.field private mTouchScrolling:Z

.field private mTransitionTarget:I

.field private mUncollapsePaddingH:I

.field private mUncollapseTabPaddingH:I

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 251
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 173
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 184
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    .line 195
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 209
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 219
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    const/4 v1, 0x0

    .line 246
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 247
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 248
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2631
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 2632
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 2634
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 2635
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 2644
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2646
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 2648
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    const/4 v2, 0x0

    .line 2650
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 2804
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 252
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 254
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 256
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 257
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 262
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 263
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    new-array v3, v0, [Lmiuix/animation/listener/TransitionListener;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 264
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    .line 265
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_collapse_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 266
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 267
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 270
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 271
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 272
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 272
    invoke-virtual {v2, v3, v6, v3, v7}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 277
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 280
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 281
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_collapse_tab_container:I

    invoke-virtual {v2, v3}, Lmiuix/springback/view/SpringBackLayout;->setId(I)V

    .line 282
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 283
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v1}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    .line 285
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 286
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_movable_tab_container:I

    invoke-virtual {v2, v3}, Lmiuix/springback/view/SpringBackLayout;->setId(I)V

    .line 287
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 288
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 297
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBackgroundResource(I)V

    .line 299
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 304
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 305
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 306
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    .line 308
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 309
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 311
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 313
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_homeLayout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_home:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 317
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    .line 318
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    .line 320
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_progressBarPadding:I

    .line 321
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 322
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 324
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 326
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 329
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 332
    :cond_2
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    .line 333
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 335
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const v3, 0x1020016

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 337
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$GTmFV_iQk-TaevKDyP-9w1PJA3w;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$GTmFV_iQk-TaevKDyP-9w1PJA3w;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    return-void
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method static synthetic access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$2302(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I
    .locals 0

    .line 78
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    return p0
.end method

.method static synthetic access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    return p0
.end method

.method static synthetic access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTempResizable:Z

    return p0
.end method

.method static synthetic access$2702(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTempResizable:Z

    return p1
.end method

.method static synthetic access$2800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 78
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method private addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 1

    .line 550
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 551
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 552
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 553
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 554
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, -0x1

    const/4 p4, -0x2

    if-eqz p1, :cond_7

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 567
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 568
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 569
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 570
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 580
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 581
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    .line 582
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 583
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 585
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 586
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3

    .line 587
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 588
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 590
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_4

    .line 591
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_a

    .line 594
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 571
    :cond_5
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 572
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    .line 573
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 575
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 576
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_a

    .line 577
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 555
    :cond_7
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 556
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_8

    .line 557
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 558
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 560
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 561
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_9

    .line 562
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 563
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 565
    :cond_9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 566
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 599
    :cond_a
    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 600
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 602
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 604
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 605
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 607
    :cond_b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 609
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 610
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 612
    :cond_c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 614
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 615
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 617
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 619
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 620
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 623
    :cond_e
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    return-void
.end method

.method private addTitleView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1219
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1220
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 1221
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    .line 1222
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1224
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 1226
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 1227
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1228
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 1230
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1231
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1234
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1235
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private addedCustomView()V
    .locals 3

    .line 1017
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1018
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeCollapseContainer()Z

    .line 1021
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    .line 1022
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 1024
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    .line 1026
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 1028
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1029
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .locals 21

    move-object/from16 v0, p0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1601
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v1, v2, v1

    .line 1602
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    .line 1603
    iget v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget-boolean v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    if-eqz v4, :cond_0

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v4

    if-nez v4, :cond_0

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v6

    :cond_0
    const/16 v4, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ne v3, v5, :cond_5

    cmpl-float v3, v1, v7

    const/4 v9, 0x3

    const-wide/16 v10, 0x1

    if-lez v3, :cond_1

    .line 1612
    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    if-nez v2, :cond_3

    .line 1613
    iput-boolean v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 1614
    iput-boolean v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 1615
    iget-object v12, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x14

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    iget-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    move-object/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V

    .line 1616
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v2, :cond_3

    .line 1617
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "target"

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 1618
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v10, "expand"

    aput-object v10, v3, v8

    iget v10, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 1619
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v9, "expand"

    aput-object v9, v3, v8

    .line 1620
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 1624
    :cond_1
    iget-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    if-nez v3, :cond_3

    .line 1625
    iput-boolean v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 1626
    iput-boolean v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 1627
    iget-object v12, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v3, :cond_2

    move v13, v7

    goto :goto_0

    :cond_2
    move v13, v2

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    iget-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    move-object/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V

    .line 1628
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v2, :cond_3

    .line 1629
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "target"

    aput-object v3, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 1630
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "collapse"

    aput-object v4, v3, v8

    iget v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 1631
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "collapse"

    aput-object v4, v3, v8

    .line 1632
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 1636
    :cond_3
    :goto_1
    iget-object v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v2, :cond_4

    move v9, v7

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-boolean v13, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    invoke-virtual/range {v8 .. v13}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V

    goto :goto_5

    .line 1637
    :cond_5
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-ne v1, v6, :cond_7

    .line 1638
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x14

    iget-object v13, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    iget-boolean v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    invoke-virtual/range {v9 .. v14}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V

    .line 1639
    iget-object v15, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v1, :cond_6

    move/from16 v16, v7

    goto :goto_3

    :cond_6
    move/from16 v16, v2

    :goto_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    move-object/from16 v19, v1

    move/from16 v20, v2

    invoke-virtual/range {v15 .. v20}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V

    .line 1640
    iput v4, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    goto :goto_5

    .line 1641
    :cond_7
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-nez v1, :cond_9

    .line 1642
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v1, :cond_8

    move v10, v7

    goto :goto_4

    :cond_8
    move v10, v2

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    iget-boolean v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    invoke-virtual/range {v9 .. v14}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V

    .line 1643
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    iget-boolean v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;Z)V

    .line 1644
    iput v8, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    :cond_9
    :goto_5
    return-void
.end method

.method private canExpandTitleBeShown()Z
    .locals 3

    .line 1653
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1656
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 1657
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->canTitleBeShown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private clipViewBounds(Landroid/view/View;IIII)V
    .locals 1

    .line 1946
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1947
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1948
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .locals 3

    .line 1952
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1953
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 1955
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1956
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1957
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1958
    invoke-virtual {p1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p1

    add-int/2addr v2, p1

    :cond_0
    sub-int/2addr v1, v2

    return v1
.end method

.method private configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 706
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 707
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    goto :goto_0

    .line 709
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 710
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 714
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 715
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method private freeCollapseContainer()Z
    .locals 3

    .line 753
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 754
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 756
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 757
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 758
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 759
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 762
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 763
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 764
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 767
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return v1
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 2534
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2536
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x1020016

    .line 747
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 2542
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2544
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 2550
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 2551
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2553
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    .line 2555
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2558
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 2559
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2561
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 2563
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 2567
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 2568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 2569
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2571
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    .line 2573
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2576
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 2577
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2580
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 2582
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private hasTitle()Z
    .locals 2

    .line 1649
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 2525
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2526
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2528
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 2529
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initExpandedHomeLayout()V
    .locals 3

    .line 2607
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

    .line 2608
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2609
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 2610
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initHomeLayout()V
    .locals 3

    .line 2586
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

    .line 2587
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2588
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2589
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 2590
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 2592
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_0

    .line 2593
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 2594
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 2597
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2598
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2599
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 2602
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 1145
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 1147
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    const/high16 v3, 0x42700000    # 60.0f

    invoke-interface {v0, v3}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 1149
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    sget-object v3, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v0, v3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v0

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 1151
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1153
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_9

    .line 1155
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    invoke-static {v0, v3, v4}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 1157
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 1159
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1160
    :goto_0
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    .line 1161
    :goto_1
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_3

    if-eqz v0, :cond_4

    move v3, v2

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    :cond_4
    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1163
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    invoke-virtual {v3, v5}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 1164
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-virtual {v3, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    .line 1166
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1170
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$nCrtky8L_Si_A8lHLg-yL62ZWSQ;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$nCrtky8L_Si_A8lHLg-yL62ZWSQ;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 1181
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 1182
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 1183
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 1185
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 1188
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTitleView(Landroid/view/View;Landroid/view/View;)V

    .line 1191
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$0_AF5hF4p38fUDroHseYFYaMb4Q;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$0_AF5hF4p38fUDroHseYFYaMb4Q;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 1199
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_a

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1202
    :cond_a
    invoke-direct {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 1205
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1206
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private isShowTitle()Z
    .locals 1

    .line 1276
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSimpleCustomNavView()Z
    .locals 4

    .line 1260
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1261
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1262
    instance-of v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_0

    .line 1263
    check-cast v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 1265
    :cond_1
    iget v0, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v0

    const v3, 0x800005

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method private isTitleCenter()Z
    .locals 2

    .line 1271
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$initTitle$3(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 2

    .line 1171
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    .line 1177
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_1

    .line 1178
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$initTitle$4(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 4

    .line 1192
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1194
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1195
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 5

    .line 338
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 340
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_0

    .line 341
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 342
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v3, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 343
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setSubtitle$2(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 2

    .line 877
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setTitleImpl$1(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 2

    .line 847
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    :cond_0
    return-void
.end method

.method private normalizeHorizontalGravity(IZ)I
    .locals 3

    const v0, 0x800007

    and-int/2addr p1, v0

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const v1, 0x800005

    const v2, 0x800003

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    :cond_3
    :goto_0
    return p1
.end method

.method private onLayoutCollapseViews(ZIIIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 1661
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingStart()I

    move-result v0

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    .line 1663
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    if-gtz v9, :cond_0

    return-void

    .line 1671
    :cond_0
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    :goto_0
    const/16 v10, 0x8

    if-eqz v1, :cond_2

    .line 1672
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_2

    .line 1673
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v2

    add-int v3, v0, v2

    .line 1674
    invoke-virtual {v6, v1, v3, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 1675
    :cond_2
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1676
    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 1679
    :cond_3
    :goto_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v1, :cond_d

    .line 1680
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1683
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1684
    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    move v15, v0

    goto :goto_2

    :cond_4
    move v15, v0

    .line 1687
    :goto_2
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1689
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_5

    .line 1690
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v15

    .line 1692
    :goto_3
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canExpandTitleBeShown()Z

    move-result v0

    iput-boolean v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 1693
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 1694
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    .line 1696
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v1, v9, v0

    .line 1697
    div-int/lit8 v1, v1, 0x2

    add-int v3, v7, v1

    .line 1698
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int v5, v3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    move v0, v15

    goto :goto_4

    .line 1700
    :cond_6
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0, v15, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v15

    .line 1704
    :cond_7
    :goto_4
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    .line 1717
    :pswitch_0
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ne v1, v11, :cond_8

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_8

    .line 1718
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_5

    :cond_8
    move-object v1, v12

    :goto_5
    if-eqz v1, :cond_d

    .line 1722
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v0

    .line 1723
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v1

    .line 1724
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eqz v14, :cond_9

    .line 1727
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    move v0, v3

    goto :goto_6

    :cond_9
    move v0, v3

    :goto_6
    if-eqz v8, :cond_a

    .line 1731
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_7

    :cond_a
    move v3, v2

    :goto_7
    if-eqz v8, :cond_b

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v4

    sub-int v2, v4, v2

    goto :goto_8

    :cond_b
    move v2, v0

    .line 1733
    :goto_8
    iget-object v4, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int/2addr v1, v7

    invoke-virtual {v4, v3, v7, v2, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_9

    .line 1708
    :pswitch_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    if-eqz v14, :cond_c

    .line 1710
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v1

    .line 1712
    :cond_c
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_d
    :goto_9
    :pswitch_2
    sub-int v1, p4, p2

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1742
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_e

    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_e

    .line 1743
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1744
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1747
    :cond_e
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 1748
    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1749
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1752
    :cond_f
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_10

    .line 1753
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_10

    .line 1754
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v3, v1, v3

    invoke-virtual {v6, v2, v3, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1755
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1758
    :cond_10
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 1759
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_11

    .line 1760
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1761
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1765
    :cond_11
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v3, 0x10

    if-eqz v2, :cond_12

    goto :goto_a

    .line 1767
    :cond_12
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move-object v2, v12

    :goto_a
    if-eqz v2, :cond_23

    .line 1771
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_23

    .line 1772
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1773
    instance-of v5, v4, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_14

    .line 1774
    move-object v12, v4

    check-cast v12, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_14
    if-eqz v12, :cond_15

    .line 1776
    iget v4, v12, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_b

    :cond_15
    const v4, 0x800013

    .line 1777
    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz v12, :cond_16

    .line 1782
    invoke-virtual {v12}, Landroidx/appcompat/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v0, v7

    .line 1783
    invoke-virtual {v12}, Landroidx/appcompat/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1784
    iget v7, v12, Landroidx/appcompat/app/ActionBar$LayoutParams;->topMargin:I

    .line 1785
    iget v9, v12, Landroidx/appcompat/app/ActionBar$LayoutParams;->bottomMargin:I

    goto :goto_c

    :cond_16
    move v7, v13

    move v9, v7

    :goto_c
    const v10, 0x800007

    and-int/2addr v10, v4

    const v12, 0x800005

    const/4 v14, -0x1

    const v15, 0x800003

    if-ne v10, v11, :cond_18

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v16

    sub-int v16, v16, v5

    div-int/lit8 v13, v16, 0x2

    if-ge v13, v0, :cond_17

    move v10, v15

    goto :goto_d

    :cond_17
    add-int/2addr v13, v5

    if-le v13, v1, :cond_19

    move v10, v12

    goto :goto_d

    :cond_18
    if-ne v4, v14, :cond_19

    move v10, v15

    .line 1801
    :cond_19
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingStart()I

    move-result v13

    .line 1802
    invoke-direct {v6, v10, v8}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->normalizeHorizontalGravity(IZ)I

    move-result v10

    if-eq v10, v11, :cond_1b

    if-eq v10, v15, :cond_1c

    if-eq v10, v12, :cond_1a

    move v0, v13

    goto :goto_e

    :cond_1a
    sub-int v0, v1, v5

    goto :goto_e

    .line 1804
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    :cond_1c
    :goto_e
    and-int/lit8 v1, v4, 0x70

    if-ne v4, v14, :cond_1d

    move v1, v3

    :cond_1d
    if-eq v1, v3, :cond_20

    const/16 v3, 0x30

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x50

    if-eq v1, v3, :cond_1e

    const/4 v13, 0x0

    goto :goto_f

    .line 1831
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v13, v1, v9

    goto :goto_f

    .line 1828
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    add-int v13, v1, v7

    goto :goto_f

    .line 1823
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    .line 1824
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 1825
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v13, v3, 0x2

    .line 1835
    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v8, :cond_21

    .line 1836
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    goto :goto_10

    :cond_21
    move v3, v0

    :goto_10
    if-eqz v8, :cond_22

    .line 1837
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_11

    :cond_22
    add-int/2addr v1, v0

    .line 1838
    :goto_11
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v2, v3, v13, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 1841
    :cond_23
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_24

    .line 1842
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1843
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1844
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    .line 1845
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 1844
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1848
    :cond_24
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_27

    .line 1849
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    add-int v7, p2, v0

    sub-int v8, p4, v0

    .line 1851
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v9

    .line 1852
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    add-int v5, p5, p6

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p5

    move v4, v8

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    sub-int/2addr v8, v7

    sub-int/2addr v8, v9

    .line 1854
    div-int/lit8 v8, v8, 0x2

    const/4 v0, 0x0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v0, v1

    .line 1855
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_25

    neg-float v0, v0

    .line 1858
    :cond_25
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTranslationX(F)V

    .line 1861
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1862
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p4, v1

    sub-int v13, v1, v9

    mul-int/lit8 v0, v0, 0x2

    sub-int v9, p4, v0

    goto :goto_12

    :cond_26
    const/4 v13, 0x0

    .line 1865
    :goto_12
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v2, v9, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->layout(IIII)V

    :cond_27
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 1210
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1214
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 2

    .line 833
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 834
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 835
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    .line 836
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 842
    :goto_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 844
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 845
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 846
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$A80eFu4dUxLlsCaPJJ0FUyVaxb8;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$A80eFu4dUxLlsCaPJJ0FUyVaxb8;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 853
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v0, :cond_3

    .line 854
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 856
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v0, :cond_4

    .line 857
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method

.method private setTitleVisibility(Z)V
    .locals 5

    .line 2401
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2402
    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisibility(I)V

    .line 2404
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 2405
    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 2408
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_9

    if-eqz p1, :cond_8

    .line 2410
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    .line 2411
    :goto_2
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v2

    .line 2412
    :goto_3
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v3, :cond_6

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :cond_7
    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2414
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2514
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2515
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2518
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v1, 0x2710

    if-ge p2, v1, :cond_1

    .line 2519
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 5

    .line 2474
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 2475
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    if-eqz v1, :cond_2

    .line 2479
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 2480
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_1

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    .line 2482
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_9

    .line 2485
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x2

    if-ne p1, v4, :cond_5

    const/16 p1, 0x8

    if-eqz v1, :cond_4

    .line 2489
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    if-eqz v0, :cond_9

    .line 2492
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v4, -0x3

    if-ne p1, v4, :cond_6

    const/4 p1, 0x1

    .line 2495
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_6
    const/4 v4, -0x4

    if-ne p1, v4, :cond_7

    .line 2497
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_7
    if-ltz p1, :cond_9

    if-gt p1, v2, :cond_9

    add-int/lit8 v3, p1, 0x0

    .line 2502
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v2, :cond_8

    .line 2505
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 2507
    :cond_8
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateTightTitle()V
    .locals 5

    .line 1247
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x8

    if-nez v0, :cond_2

    .line 1248
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    .line 1249
    :goto_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v4, :cond_3

    .line 1250
    invoke-virtual {v4, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    :cond_3
    if-nez v0, :cond_4

    .line 1252
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    .line 1253
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_6

    .line 1254
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateTitleCenter()V
    .locals 2

    .line 1281
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 1282
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->updateTitleCenter(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .locals 1

    .line 724
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 725
    :cond_0
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :goto_0
    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method protected createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 9

    .line 2420
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2422
    :goto_0
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 2431
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object v4, v0

    check-cast v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_item_layout:I

    sget v7, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v8, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 2437
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 2438
    sget p1, Lmiuix/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setId(I)V

    return-object v1

    .line 2424
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2425
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 2427
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ActionBarOverlayLayout not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 2

    .line 2443
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1141
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1965
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 1971
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .line 1126
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1134
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 1114
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 1122
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    .line 802
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getExpandState()I
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 1130
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    .line 785
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 862
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 806
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 719
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideImmersionMore()Z
    .locals 2

    .line 476
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initImmersionMore(ILmiuix/appcompat/app/ActionBarDelegateImpl;)V
    .locals 3

    if-gtz p1, :cond_0

    const-string p2, "ActionBarView"

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 443
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const-string p1, "ActionBarView"

    const-string p2, "Don\'t show immersion menu button for custom action bar"

    .line 444
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "ActionBarView"

    const-string p2, "Don\'t show immersion menu button for null display option"

    .line 447
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 451
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    .line 452
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 454
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    sget v0, Lmiuix/appcompat/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 456
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    .line 462
    new-array v0, p2, [Landroid/view/View;

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 463
    new-array p2, p2, [Landroid/view/View;

    aput-object p1, p2, v1

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p2

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p2, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p2

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_3
    return-void
.end method

.method public initIndeterminateProgress()V
    .locals 4

    .line 430
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->actionBarIndeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 431
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    sget v1, Lmiuix/appcompat/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 432
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 434
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 1243
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isResizable()Z
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .locals 1

    .line 533
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActionModeEnd(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 2857
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2858
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 2859
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 2860
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2861
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    goto :goto_0

    .line 2862
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2863
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2864
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2866
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2867
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2869
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2870
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2872
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2873
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p1, :cond_5

    .line 2876
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 2877
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_5
    return-void
.end method

.method public onActionModeStart(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2837
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2838
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 2839
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2840
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2841
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2842
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2844
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2845
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2847
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 2848
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    if-eqz p2, :cond_3

    .line 2851
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 2852
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_3
    return-void
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .locals 7

    .line 2676
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    .line 2677
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2680
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr p1, v2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 2682
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2684
    :cond_2
    :goto_0
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;

    invoke-direct {v3, p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    if-ne p2, v0, :cond_3

    .line 2688
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-ne p2, v0, :cond_5

    .line 2693
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2694
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, v3}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 2696
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2697
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, v1}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    :cond_6
    :goto_2
    const-string p2, "actionbar_state_change"

    .line 2700
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v1

    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2701
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 2702
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    aput-object p1, v5, v4

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 350
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 353
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 355
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 359
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 360
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 361
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 363
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 360
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 365
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    .line 366
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarPaddingEnd:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 367
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setPaddingRelative(IIII)V

    .line 369
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 372
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 373
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_2

    .line 377
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 379
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 383
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_3

    .line 384
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 386
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 387
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 390
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_4

    .line 391
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 393
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 394
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 410
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 411
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 413
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2655
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2656
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2657
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2662
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2663
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    .line 2667
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2668
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    goto :goto_0

    .line 2670
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    sub-int/2addr p1, p2

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    add-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    move-object v8, p0

    .line 1566
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 1569
    :cond_0
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 1570
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1571
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v0

    .line 1573
    :goto_0
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v0

    move v6, v0

    .line 1574
    :goto_1
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 1575
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v2

    move v7, v2

    .line 1577
    :goto_2
    iget v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1578
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_3

    .line 1579
    :cond_4
    iget v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    add-int v1, v0, v7

    :cond_5
    :goto_3
    sub-int v2, p5, p3

    sub-int v9, v2, v7

    sub-int v10, v9, v1

    add-int v2, v0, v7

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float v11, v1, v0

    .line 1589
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v0, :cond_6

    .line 1590
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastProcess:F

    sub-float/2addr v1, v11

    invoke-interface {v0, v1, v11}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarMove(FF)V

    :cond_6
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v4, p4

    .line 1593
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutCollapseViews(ZIIIII)V

    move v3, v10

    move v5, v9

    move v6, v7

    move v7, v11

    .line 1594
    invoke-virtual/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutExpandViews(ZIIIIIF)V

    .line 1596
    invoke-direct {p0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->animateLayoutWithProcess(F)V

    .line 1597
    iput v11, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastProcess:F

    return-void
.end method

.method protected onLayoutExpandViews(ZIIIIIF)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    .line 1870
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1873
    :cond_0
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v0, v10, :cond_2

    cmpg-float v0, p7, v1

    if-gez v0, :cond_1

    move v0, v11

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 1875
    :goto_0
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 1876
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p7

    .line 1880
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    .line 1883
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    goto :goto_1

    :cond_3
    move v0, v11

    .line 1885
    :goto_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1886
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    move v12, v1

    goto :goto_2

    :cond_4
    move v12, v11

    .line 1889
    :goto_2
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1890
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1891
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v1

    move v13, v1

    goto :goto_3

    :cond_5
    move v13, v11

    :goto_3
    add-int v1, p3, v12

    add-int/2addr v1, v13

    sub-int/2addr v1, v9

    add-int v14, v1, v0

    .line 1893
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v0, :cond_9

    .line 1894
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_9

    .line 1896
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    sub-int v1, v9, v12

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1898
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ne v0, v15, :cond_6

    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_6

    .line 1899
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_4

    :cond_6
    move-object/from16 v0, v16

    :goto_4
    if-eqz v0, :cond_8

    .line 1902
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 1903
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1904
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v1, v8, v1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1906
    :cond_7
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 1908
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 1909
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v4

    iget v5, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    add-int/2addr v4, v5

    .line 1906
    invoke-virtual {v0, v1, v2, v3, v4}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 1911
    :cond_8
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    add-int v5, v12, v13

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    .line 1918
    :cond_9
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_d

    .line 1920
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    add-int v2, v7, v0

    add-int v5, v9, p6

    .line 1922
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v3, v5, v0

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    sub-int v4, v8, v0

    move-object/from16 v0, p0

    .line 1920
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1925
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v0

    if-ne v0, v15, :cond_a

    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v11}, Lmiuix/springback/view/SpringBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_a

    .line 1926
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v11}, Lmiuix/springback/view/SpringBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-object/from16 v0, v16

    goto :goto_5

    :cond_a
    move-object/from16 v0, v16

    :goto_5
    if-eqz v0, :cond_c

    .line 1930
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    .line 1931
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1932
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/2addr v1, v10

    sub-int v1, v8, v1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1933
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/2addr v2, v10

    sub-int v2, v8, v2

    goto :goto_6

    :cond_b
    move v2, v1

    move v1, v11

    .line 1935
    :goto_6
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v11, v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 1937
    :cond_c
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    sub-int v0, v12, v13

    sub-int v3, v14, v0

    add-int v5, v12, v13

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v1, :cond_2

    .line 1291
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1292
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v6, v5, :cond_0

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 1293
    invoke-virtual {v5}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-nez v4, :cond_3

    .line 1300
    invoke-virtual {v0, v2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1301
    iput-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    .line 1305
    :cond_3
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 1307
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1309
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    if-lez v6, :cond_4

    .line 1310
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    goto :goto_1

    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1312
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingStart()I

    move-result v8

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingEnd()I

    move-result v9

    sub-int v10, v6, v7

    const/high16 v11, 0x40000000    # 2.0f

    .line 1316
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, -0x80000000

    .line 1317
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    sub-int v15, v4, v8

    sub-int/2addr v15, v9

    .line 1321
    div-int/lit8 v16, v15, 0x2

    .line 1326
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1327
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1328
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v8, v3

    .line 1330
    :cond_5
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1331
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1332
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v9, v3

    .line 1335
    :cond_6
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 1337
    :goto_2
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 1338
    invoke-virtual {v3, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_8
    if-eqz v3, :cond_a

    .line 1341
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_a

    .line 1342
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1344
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_9

    .line 1345
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_3

    .line 1347
    :cond_9
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1349
    :goto_3
    invoke-virtual {v3, v2, v12}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->measure(II)V

    .line 1350
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v15, v2

    const/4 v3, 0x0

    .line 1351
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v5, v15, v2

    .line 1352
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v8, v2

    goto :goto_4

    :cond_a
    move/from16 v5, v16

    .line 1356
    :goto_4
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_b

    .line 1357
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v15, v14, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1359
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1360
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 1363
    :cond_b
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    if-eqz v2, :cond_c

    .line 1364
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v13, 0x8

    if-eq v2, v13, :cond_c

    .line 1365
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v13, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v13, v3

    invoke-virtual {v0, v2, v15, v14, v13}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1367
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1368
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int v16, v16, v2

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v2, v3

    sub-int v2, v16, v2

    const/4 v13, 0x0

    .line 1367
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1369
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 1372
    :cond_c
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 1373
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v13, 0x8

    if-eq v2, v13, :cond_d

    .line 1374
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v15, v14, v13}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1376
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    .line 1377
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    .line 1376
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1378
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    move/from16 v2, v16

    goto :goto_5

    :cond_d
    move/from16 v2, v16

    .line 1381
    :goto_5
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1384
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTitleCenter()V

    .line 1388
    :cond_e
    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    if-eqz v14, :cond_f

    goto :goto_6

    .line 1390
    :cond_f
    iget v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_10

    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v14, :cond_10

    goto :goto_6

    :cond_10
    move-object/from16 v14, v16

    .line 1395
    :goto_6
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-nez v11, :cond_11

    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v11, :cond_12

    :cond_11
    if-eqz v14, :cond_12

    const/16 v11, 0x8

    .line 1396
    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_12
    const/16 v11, 0x8

    :goto_7
    if-eqz v14, :cond_1c

    .line 1399
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_1c

    .line 1400
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1401
    instance-of v11, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v11, :cond_13

    .line 1402
    move-object/from16 v16, v3

    check-cast v16, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_13
    move-object/from16 v11, v16

    if-eqz v11, :cond_14

    move/from16 v16, v6

    .line 1407
    iget v6, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v17, v7

    iget v7, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 1408
    iget v7, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v18, v6

    iget v6, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    goto :goto_8

    :cond_14
    move/from16 v16, v6

    move/from16 v17, v7

    const/4 v6, 0x0

    const/16 v18, 0x0

    .line 1414
    :goto_8
    iget v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    move/from16 v19, v1

    const/4 v1, -0x2

    if-gtz v7, :cond_15

    const/high16 v7, -0x80000000

    goto :goto_9

    .line 1417
    :cond_15
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v1, :cond_16

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_9

    :cond_16
    const/high16 v7, -0x80000000

    .line 1421
    :goto_9
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_17

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_17
    sub-int/2addr v10, v6

    const/4 v1, 0x0

    .line 1420
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1423
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v1, v10, :cond_18

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_a

    :cond_18
    const/high16 v1, -0x80000000

    .line 1426
    :goto_a
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_19

    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_b

    :cond_19
    move v10, v15

    :goto_b
    sub-int v10, v10, v18

    move/from16 v20, v12

    const/4 v12, 0x0

    .line 1425
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v11, :cond_1a

    .line 1428
    iget v11, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_c

    :cond_1a
    const v11, 0x800013

    :goto_c
    const v12, 0x800007

    and-int/2addr v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1b

    .line 1433
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v3, v11, :cond_1b

    .line 1434
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 v10, v2, 0x2

    .line 1438
    :cond_1b
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1439
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1437
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1440
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v18, v18, v1

    sub-int v15, v15, v18

    goto :goto_d

    :cond_1c
    move/from16 v19, v1

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    .line 1443
    :goto_d
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_1f

    if-eqz v13, :cond_1f

    .line 1444
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1447
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 1448
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1451
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v15, v2, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1453
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v8, v2

    .line 1455
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1456
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1457
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    sub-int v2, v4, v2

    const/4 v5, 0x0

    .line 1459
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v6, -0x80000000

    .line 1458
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1457
    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1464
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v15, v1

    goto :goto_e

    :cond_1e
    const/4 v5, 0x0

    .line 1466
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v15, v1, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    goto :goto_e

    :cond_1f
    const/4 v5, 0x0

    .line 1471
    :goto_e
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_20

    .line 1472
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/high16 v2, -0x80000000

    .line 1473
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1474
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1472
    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1479
    :cond_20
    iput v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    .line 1480
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_21

    .line 1481
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1482
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_21

    .line 1483
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1484
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1485
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1483
    invoke-virtual {v1, v2, v3}, Lmiuix/springback/view/SpringBackLayout;->measure(II)V

    .line 1486
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredWidth()I

    move-result v2

    .line 1487
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v1

    .line 1488
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    const/4 v3, 0x0

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1493
    :goto_f
    iput v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    .line 1494
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v5, :cond_22

    .line 1495
    invoke-virtual {v5}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_22

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1496
    invoke-virtual {v5}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_22

    .line 1497
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1498
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1499
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1497
    invoke-virtual {v5, v6, v7}, Lmiuix/springback/view/SpringBackLayout;->measure(II)V

    .line 1500
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredWidth()I

    .line 1501
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v3

    .line 1502
    iput v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    goto :goto_10

    :cond_22
    const/4 v3, 0x0

    .line 1505
    :goto_10
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v5, :cond_27

    .line 1506
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    packed-switch v5, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_12

    .line 1517
    :pswitch_0
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 1518
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    .line 1519
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    .line 1520
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v7, 0x0

    .line 1521
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1519
    invoke-virtual {v6, v5, v8}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->measure(II)V

    .line 1523
    :cond_23
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 1524
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1525
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    .line 1526
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1527
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1525
    invoke-virtual {v6, v2, v7}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->measure(II)V

    const/4 v2, 0x0

    goto :goto_12

    :cond_24
    const/4 v2, 0x0

    goto :goto_12

    .line 1508
    :pswitch_1
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_26

    if-eqz v13, :cond_25

    .line 1509
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    goto :goto_11

    :cond_25
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    :goto_11
    sub-int/2addr v15, v2

    const/4 v2, 0x0

    .line 1510
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1511
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v7, -0x80000000

    .line 1512
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move/from16 v7, v20

    .line 1511
    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_12

    :cond_26
    const/4 v2, 0x0

    goto :goto_12

    :cond_27
    const/4 v2, 0x0

    .line 1533
    :goto_12
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    if-gtz v5, :cond_2a

    move v3, v2

    move/from16 v1, v19

    :goto_13
    if-ge v2, v1, :cond_29

    .line 1536
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1537
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, v17

    if-le v5, v3, :cond_28

    move v3, v5

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1542
    :cond_29
    invoke-virtual {v0, v4, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_14

    :cond_2a
    add-int v6, v16, v3

    .line 1544
    iput v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    .line 1545
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 1547
    :cond_2b
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2c

    .line 1548
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    add-int v1, v16, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1549
    invoke-virtual {v0, v4, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_14

    .line 1550
    :cond_2c
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2d

    add-int v6, v16, v2

    add-int/2addr v6, v1

    .line 1551
    invoke-virtual {v0, v4, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_14

    .line 1553
    :cond_2d
    invoke-virtual {v0, v4, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1557
    :goto_14
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2e

    .line 1558
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1558
    invoke-virtual {v1, v2, v3}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_2e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 1

    if-lez p3, :cond_1

    .line 2786
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    if-le p1, p2, :cond_1

    .line 2787
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    .line 2788
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2789
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    const/4 v0, 0x1

    if-lt p1, p5, :cond_0

    sub-int p1, p2, p3

    .line 2790
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2791
    aget p1, p4, v0

    add-int/2addr p1, p3

    aput p1, p4, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2793
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2794
    aget p1, p4, v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p3

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    sub-int/2addr p3, p5

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    sub-int/2addr p3, p5

    add-int/2addr p1, p3

    aput p1, p4, v0

    .line 2797
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p2, p1

    .line 2798
    aput p2, p6, v0

    .line 2799
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 1

    .line 2707
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr p1, p2

    .line 2708
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    .line 2709
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p3

    if-gez p5, :cond_1

    if-ge p3, p2, :cond_1

    .line 2711
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    sub-int p6, p3, p5

    const/4 v0, 0x1

    if-gt p6, p2, :cond_0

    sub-int p1, p4, p5

    .line 2714
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2715
    aget p1, p7, v0

    add-int/2addr p1, p5

    aput p1, p7, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p3

    .line 2718
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2719
    aget p1, p7, v0

    neg-int p2, p2

    add-int/2addr p1, p2

    aput p1, p7, v0

    .line 2722
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p1, p4, :cond_1

    sub-int/2addr p4, p1

    .line 2723
    aput p4, p8, v0

    .line 2724
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    if-nez p4, :cond_0

    .line 2741
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    goto :goto_0

    .line 2743
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 2745
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2746
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    const/4 p1, 0x2

    .line 2749
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1998
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 2000
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2002
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 2004
    iget v1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2006
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 2009
    :cond_0
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_1

    .line 2010
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowOverflowMenu()V

    .line 2012
    :cond_1
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1978
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1979
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1981
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    goto :goto_0

    .line 1984
    :cond_0
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1986
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1987
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1988
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    goto :goto_1

    .line 1990
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    :goto_1
    return-object v1
.end method

.method public onStart(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 2883
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2731
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return p2

    .line 2734
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public onStop(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 2896
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionModeAnimating:Z

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    .line 2754
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 2756
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2757
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 2758
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    .line 2761
    :cond_0
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-eqz p2, :cond_1

    .line 2762
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_5

    .line 2767
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-nez p2, :cond_2

    .line 2768
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 2770
    :cond_2
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr v2, p1

    if-ne p2, v2, :cond_3

    .line 2771
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 2775
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    if-le p2, v0, :cond_4

    .line 2776
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result v0

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {p2, v1, v0, v1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1

    .line 2778
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2780
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 2891
    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->animateLayoutWithProcess(F)V

    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public bridge synthetic setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    return-void
.end method

.method public setCallback(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .line 732
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 733
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 734
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 736
    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 737
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 738
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 739
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addedCustomView()V

    goto :goto_1

    .line 741
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 10

    .line 902
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int v1, p1, v0

    .line 903
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1b

    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const/16 v6, 0x8

    if-eqz v0, :cond_7

    .line 909
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initHomeLayout()V

    .line 910
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setVisibility(I)V

    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_4

    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    .line 913
    :goto_3
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v7, :cond_4

    .line 920
    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_4
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_8

    .line 925
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v4

    .line 927
    :goto_4
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_5
    invoke-virtual {v9, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 930
    :cond_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_8

    .line 931
    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_6
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_10

    and-int/lit8 v7, p1, 0x8

    const/4 v8, 0x2

    if-eqz v7, :cond_c

    .line 937
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_b

    .line 938
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 939
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 940
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_9

    .line 941
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8, v7}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 942
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 944
    :cond_9
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_a

    .line 945
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8, v7}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 946
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 948
    :cond_a
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 949
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 951
    :cond_b
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    goto :goto_7

    .line 953
    :cond_c
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_d

    .line 954
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 956
    :cond_d
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v7, :cond_e

    .line 957
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 959
    :cond_e
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 960
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 961
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 962
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 963
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_10

    .line 964
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 965
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 966
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v7}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 967
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v7}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 968
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_f

    .line 969
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 971
    :cond_f
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_10

    .line 972
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 978
    :cond_10
    :goto_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_18

    and-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_18

    .line 980
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_11

    move v7, v5

    goto :goto_8

    :cond_11
    move v7, v4

    .line 981
    :goto_8
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_15

    .line 982
    :cond_12
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_14

    if-eqz v7, :cond_13

    move v6, v4

    goto :goto_9

    :cond_13
    move v6, v3

    :cond_14
    :goto_9
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 984
    :cond_15
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_16

    if-eqz v7, :cond_16

    move v8, v5

    goto :goto_a

    :cond_16
    move v8, v4

    :goto_a
    invoke-virtual {v6, v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 985
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v0, :cond_17

    if-eqz v7, :cond_17

    move v4, v5

    :cond_17
    invoke-virtual {v6, v4}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    :cond_18
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_1a

    .line 988
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_1a

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_19

    .line 990
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 991
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addedCustomView()V

    goto :goto_b

    .line 993
    :cond_19
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 997
    :cond_1a
    :goto_b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    goto :goto_c

    .line 999
    :cond_1b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->invalidate()V

    .line 1003
    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1e

    .line 1004
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1005
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_1c
    and-int/2addr p1, v3

    if-eqz p1, :cond_1d

    .line 1007
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1010
    :cond_1d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1e
    :goto_d
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 1107
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 1108
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    .line 541
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 542
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    :cond_1
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 5

    .line 789
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 792
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 793
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 795
    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    new-array v4, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 796
    new-array p1, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    aput-object v1, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 797
    new-array p1, v0, [Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    aput-object v0, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    return-void
.end method

.method public setExpandState(I)V
    .locals 2

    .line 2826
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    .line 2828
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2829
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    sget v1, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 2831
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExpandState(IZZ)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 2025
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 2026
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2028
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 2029
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2016
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 2017
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2019
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 2020
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 2

    .line 885
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_2

    .line 886
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 887
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setFocusable(Z)V

    if-nez p1, :cond_0

    .line 890
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 891
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 892
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 895
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1048
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1034
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1035
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1

    .line 1036
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1038
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 1039
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1043
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 1062
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1052
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 1053
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_0

    .line 1054
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 5

    .line 631
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 640
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 641
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 644
    :cond_2
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 645
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 646
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_3

    .line 647
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 649
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 652
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_4

    .line 653
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 654
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 658
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 660
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_6

    .line 661
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 662
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 661
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 664
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 665
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 666
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_5

    .line 668
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 670
    :cond_5
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 672
    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 674
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 675
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 674
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 677
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 678
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 679
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto :goto_0

    :cond_7
    const/16 v0, 0x50

    :goto_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 680
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 681
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 682
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    .line 683
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 684
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eq v0, v1, :cond_8

    .line 685
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 687
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, p1, v4, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 691
    sget p2, Lmiuix/appcompat/R$id;->expanded_menu:I

    .line 692
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 694
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 698
    :cond_9
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    :cond_a
    :goto_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1066
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1096
    :pswitch_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_2

    .line 1097
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 1078
    :pswitch_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MIUIX Deleted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1101
    :cond_2
    :goto_1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 1102
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setProgress(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x0

    .line 2470
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x3

    goto :goto_0

    :cond_0
    const/4 p1, -0x4

    .line 2465
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 2460
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 2455
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .line 485
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8

    .line 486
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 489
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 492
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 495
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 500
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->requestLayout()V

    .line 502
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 503
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 506
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    .line 508
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 509
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 508
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    .line 512
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 514
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 515
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 514
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 518
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_8
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 5

    .line 772
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 775
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 776
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 778
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v3, 0x3f19999a    # 0.6f

    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 779
    new-array p1, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    aput-object v1, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 780
    new-array p1, v0, [Landroid/view/View;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 866
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 867
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_4

    .line 868
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 871
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 872
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_3

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 874
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 875
    :cond_3
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 876
    new-instance p1, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$kpUQOS_TDA2XaE-oQd3KZ6VlLUY;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$kpUQOS_TDA2XaE-oQd3KZ6VlLUY;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 816
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    .line 817
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 827
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 828
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showImmersionMore()Z
    .locals 2

    .line 468
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .line 78
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
