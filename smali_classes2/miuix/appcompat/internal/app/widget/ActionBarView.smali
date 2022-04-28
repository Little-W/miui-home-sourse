.class public Lmiuix/appcompat/internal/app/widget/ActionBarView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarView.java"


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

    .line 227
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 171
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 185
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$5;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    const/4 v1, 0x0

    .line 222
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 223
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 224
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 2576
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 2577
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 2579
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 2580
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 2589
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2591
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    const/4 v2, 0x0

    .line 2593
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    .line 2747
    new-instance v2, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    .line 228
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 230
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 232
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 233
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_tab_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 238
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    .line 239
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_collapse_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 240
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 241
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 242
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

    .line 244
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 245
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 246
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 246
    invoke-virtual {v2, v3, v6, v3, v7}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 251
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 252
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 254
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 255
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_collapse_tab_container:I

    invoke-virtual {v2, v3}, Lmiuix/springback/view/SpringBackLayout;->setId(I)V

    .line 256
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 257
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v1}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    .line 259
    new-instance v2, Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {v2, p1}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 260
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar_movable_tab_container:I

    invoke-virtual {v2, v3}, Lmiuix/springback/view/SpringBackLayout;->setId(I)V

    .line 261
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 262
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 271
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBackgroundResource(I)V

    .line 273
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_navigationMode:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 278
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 279
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 280
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    .line 282
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_logo:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 283
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 287
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_homeLayout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_home:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 291
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    .line 292
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_subtitleTextStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    .line 294
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_progressBarPadding:I

    .line 295
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    .line 296
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_itemPadding:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    .line 298
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 300
    sget v3, Lmiuix/appcompat/R$styleable;->ActionBar_android_customNavigationLayout:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 303
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 306
    :cond_2
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    .line 307
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
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

    .line 309
    new-instance v7, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const v3, 0x1020016

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 311
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$GTmFV_iQk-TaevKDyP-9w1PJA3w;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$GTmFV_iQk-TaevKDyP-9w1PJA3w;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method static synthetic access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$2202(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I
    .locals 0

    .line 76
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    return p0
.end method

.method static synthetic access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    return p0
.end method

.method static synthetic access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTempResizable:Z

    return p0
.end method

.method static synthetic access$2602(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTempResizable:Z

    return p1
.end method

.method static synthetic access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    return-object p0
.end method

.method static synthetic access$2800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 76
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    return-object p0
.end method

.method private addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 1

    .line 524
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 525
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 526
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 527
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 528
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, -0x1

    const/4 p4, -0x2

    if-nez p1, :cond_2

    .line 529
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 531
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 533
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 534
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_1

    .line 535
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 536
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 538
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 539
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    goto/16 :goto_1

    .line 540
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 541
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    .line 542
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 543
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result p1

    if-nez p1, :cond_7

    instance-of p1, p2, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 553
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 554
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    .line 555
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 558
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 559
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    .line 560
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 561
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 563
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_6

    .line 564
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_9

    .line 567
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 544
    :cond_7
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 545
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_8

    .line 546
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 548
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 549
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_9

    .line 550
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 572
    :cond_9
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 573
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 575
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 577
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 578
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 580
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 582
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 583
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 585
    :cond_b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 587
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 588
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 590
    :cond_c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 592
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 593
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 596
    :cond_d
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    return-void
.end method

.method private addTitleView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1188
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1189
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 1190
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    .line 1191
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1193
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 1195
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1197
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 1199
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1200
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1203
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1204
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private addedCustomView()V
    .locals 3

    .line 986
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->action_bar_expand_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 987
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 989
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->freeCollapseContainer()Z

    .line 990
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    .line 991
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 993
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitleVisibility(I)V

    .line 995
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 997
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 998
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomTitleWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .locals 12

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1564
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 1565
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/16 v3, 0x14

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_5

    cmpl-float v2, v0, v5

    const/4 v8, 0x3

    const-wide/16 v9, 0x1

    if-lez v2, :cond_0

    .line 1567
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    if-nez v2, :cond_2

    .line 1568
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 1569
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 1570
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v11, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v5, v7, v3, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 1571
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v2, :cond_2

    .line 1572
    new-array v2, v4, [Ljava/lang/Object;

    const-string v11, "target"

    aput-object v11, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v6

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v9, v10}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 1573
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "expand"

    aput-object v10, v9, v7

    iget v10, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 1574
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-interface {v2, v9}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "expand"

    aput-object v9, v8, v7

    .line 1575
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v6

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v3, v8, v4

    invoke-interface {v2, v8}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 1579
    :cond_0
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    if-nez v2, :cond_2

    .line 1580
    iput-boolean v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleHidding:Z

    .line 1581
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsTitleShowing:Z

    .line 1582
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v11, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v3, v7, v7, v11}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 1583
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v2, :cond_2

    .line 1584
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "target"

    aput-object v3, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v9, v10}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 1585
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v9, "collapse"

    aput-object v9, v3, v7

    iget v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    .line 1586
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string v8, "collapse"

    aput-object v8, v3, v7

    .line 1587
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v6, v3, v4

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 1591
    :cond_2
    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v3, :cond_3

    move v0, v5

    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v0, v7, v7, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x4

    .line 1593
    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v7, :cond_9

    .line 1594
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 1596
    :cond_5
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-ne p1, v6, :cond_7

    .line 1597
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v5, v7, v3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 1598
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v0, :cond_6

    move v1, v5

    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 1599
    iput v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    goto :goto_3

    .line 1600
    :cond_7
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-nez p1, :cond_9

    .line 1601
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    if-eqz v0, :cond_8

    move v1, v5

    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v1, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 1602
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, v5, v7, v7, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 1603
    iput v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionTarget:I

    :cond_9
    :goto_3
    return-void
.end method

.method private canTitleBeShown()Z
    .locals 3

    .line 1608
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1611
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

    .line 1612
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

    .line 1891
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1892
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1893
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private computeTitleCenterLayoutStart(Landroid/view/View;)I
    .locals 3

    .line 1897
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1898
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 1900
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1901
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1902
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1903
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

    .line 679
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 680
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    goto :goto_0

    .line 682
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 683
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 687
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->updateMenuView(Z)V

    .line 688
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method private freeCollapseContainer()Z
    .locals 3

    .line 726
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 727
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 729
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 730
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 731
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 732
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 734
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 735
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 736
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, v0}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 737
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 740
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return v1
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 2479
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2481
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private getCustomTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x1020016

    .line 720
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

    .line 2487
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2489
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 2495
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 2496
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2498
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

    .line 2500
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2503
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 2504
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2506
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 2508
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 2512
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 2513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 2514
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2516
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

    .line 2518
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2521
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 2522
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2525
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 2527
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 2470
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2471
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2473
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 2474
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initExpandedHomeLayout()V
    .locals 3

    .line 2552
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

    .line 2553
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2554
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 2555
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initHomeLayout()V
    .locals 3

    .line 2531
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

    .line 2532
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 2533
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2534
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 2535
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 2537
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_0

    .line 2538
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 2539
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 2542
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2543
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2544
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 2547
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 1114
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1115
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateTitleUpView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 1116
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    const/high16 v3, 0x42700000    # 60.0f

    invoke-interface {v0, v3}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 1118
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

    .line 1120
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1122
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_9

    .line 1124
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleStyleRes:I

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSubtitleStyleRes:I

    invoke-static {v0, v3, v4}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateCollapseTitle(Landroid/content/Context;II)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 1126
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->generateExpandTitle(Landroid/content/Context;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 1128
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1129
    :goto_0
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    .line 1130
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

    .line 1131
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1132
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    invoke-virtual {v3, v5}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 1133
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-virtual {v3, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    .line 1135
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 1139
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$nCrtky8L_Si_A8lHLg-yL62ZWSQ;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$nCrtky8L_Si_A8lHLg-yL62ZWSQ;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 1150
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 1151
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 1152
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 1154
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 1157
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTitleView(Landroid/view/View;Landroid/view/View;)V

    .line 1160
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$0_AF5hF4p38fUDroHseYFYaMb4Q;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$0_AF5hF4p38fUDroHseYFYaMb4Q;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 1168
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_a

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 1169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1171
    :cond_a
    invoke-direct {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 1174
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1175
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->safeAddView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private isShowTitle()Z
    .locals 1

    .line 1245
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseCustomContainer:Landroid/widget/FrameLayout;

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

.method private isSimpleCustomNavView()Z
    .locals 4

    .line 1229
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1230
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1231
    instance-of v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_1

    .line 1233
    :cond_1
    iget v0, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    .line 1234
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

    .line 1240
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1241
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

    .line 1140
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    .line 1146
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_1

    .line 1147
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$initTitle$4(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 4

    .line 1161
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1163
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1164
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

    .line 312
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 314
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_0

    .line 315
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 316
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v3, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 317
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v2, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setSubtitle$2(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 2

    .line 849
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleTextSize(F)V

    return-void
.end method

.method public static synthetic lambda$setTitleImpl$1(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 2

    .line 820
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 821
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

    .line 1616
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingStart()I

    move-result v0

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    .line 1618
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 1619
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    if-gtz v9, :cond_0

    return-void

    .line 1626
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

    .line 1627
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_2

    .line 1628
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v2

    add-int v3, v0, v2

    .line 1629
    invoke-virtual {v6, v1, v3, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 1630
    :cond_2
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1631
    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    .line 1634
    :cond_3
    :goto_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v1, :cond_d

    .line 1635
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1638
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1639
    invoke-virtual {v6, v1, v0, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    add-int/2addr v0, v1

    move v15, v0

    goto :goto_2

    :cond_4
    move v15, v0

    .line 1642
    :goto_2
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1644
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_5

    .line 1645
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->computeTitleCenterLayoutStart(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v15

    .line 1647
    :goto_3
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->canTitleBeShown()Z

    move-result v0

    iput-boolean v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 1648
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 1649
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int v4, v2, v0

    .line 1651
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v1, v9, v0

    .line 1652
    div-int/lit8 v1, v1, 0x2

    add-int v3, v7, v1

    .line 1653
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int v5, v3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    move v0, v15

    goto :goto_4

    .line 1655
    :cond_6
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0, v15, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v15

    .line 1659
    :cond_7
    :goto_4
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    .line 1672
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

    .line 1673
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_5

    :cond_8
    move-object v1, v12

    :goto_5
    if-eqz v1, :cond_d

    .line 1677
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v0

    .line 1678
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v1

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eqz v14, :cond_9

    .line 1682
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    move v0, v3

    goto :goto_6

    :cond_9
    move v0, v3

    :goto_6
    if-eqz v8, :cond_a

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    goto :goto_7

    :cond_a
    move v3, v2

    :goto_7
    if-eqz v8, :cond_b

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v4

    sub-int v2, v4, v2

    goto :goto_8

    :cond_b
    move v2, v0

    .line 1688
    :goto_8
    iget-object v4, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    add-int/2addr v1, v7

    invoke-virtual {v4, v3, v7, v2, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_9

    .line 1663
    :pswitch_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    if-eqz v14, :cond_c

    .line 1665
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v1

    .line 1667
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

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1697
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_e

    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v6, :cond_e

    .line 1698
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1699
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1702
    :cond_e
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 1703
    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1704
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1707
    :cond_f
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_10

    .line 1708
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_10

    .line 1709
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v3, v1, v3

    invoke-virtual {v6, v2, v3, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1710
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget v3, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1713
    :cond_10
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 1714
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v10, :cond_11

    .line 1715
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v6, v2, v1, v7, v9}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1716
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1720
    :cond_11
    iget-object v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v3, 0x10

    if-eqz v2, :cond_12

    goto :goto_a

    .line 1722
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

    .line 1726
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_23

    .line 1727
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1728
    instance-of v5, v4, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v5, :cond_14

    move-object v12, v4

    check-cast v12, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_14
    if-eqz v12, :cond_15

    .line 1731
    iget v4, v12, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_b

    :cond_15
    const v4, 0x800013

    .line 1732
    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz v12, :cond_16

    .line 1737
    invoke-virtual {v12}, Landroidx/appcompat/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v0, v7

    .line 1738
    invoke-virtual {v12}, Landroidx/appcompat/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1739
    iget v7, v12, Landroidx/appcompat/app/ActionBar$LayoutParams;->topMargin:I

    .line 1740
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

    .line 1746
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

    .line 1756
    :cond_19
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingStart()I

    move-result v13

    .line 1757
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

    .line 1759
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

    .line 1786
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

    .line 1783
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    add-int v13, v1, v7

    goto :goto_f

    .line 1778
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    .line 1779
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 1780
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v13, v3, 0x2

    .line 1790
    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v8, :cond_21

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    goto :goto_10

    :cond_21
    move v3, v0

    :goto_10
    if-eqz v8, :cond_22

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_11

    :cond_22
    add-int/2addr v1, v0

    .line 1793
    :goto_11
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v2, v3, v13, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 1796
    :cond_23
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_24

    .line 1797
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1798
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1799
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    .line 1800
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 1799
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1803
    :cond_24
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_27

    .line 1804
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    add-int v7, p2, v0

    sub-int v8, p4, v0

    .line 1806
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v9

    .line 1807
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    add-int v5, p5, p6

    move-object/from16 v0, p0

    move v2, v7

    move/from16 v3, p5

    move v4, v8

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    sub-int/2addr v8, v7

    sub-int/2addr v8, v9

    .line 1809
    div-int/lit8 v8, v8, 0x2

    const/4 v0, 0x0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v0, v1

    .line 1810
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_25

    neg-float v0, v0

    .line 1813
    :cond_25
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setTranslationX(F)V

    .line 1816
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1817
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p4, v1

    sub-int v13, v1, v9

    mul-int/lit8 v0, v0, 0x2

    sub-int v9, p4, v0

    goto :goto_12

    :cond_26
    const/4 v13, 0x0

    .line 1820
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

    .line 1179
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1183
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 2

    .line 806
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 807
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 808
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    .line 809
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 814
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

    .line 815
    :goto_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 817
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 818
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    .line 819
    new-instance v0, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$A80eFu4dUxLlsCaPJJ0FUyVaxb8;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$A80eFu4dUxLlsCaPJJ0FUyVaxb8;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 826
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v0, :cond_3

    .line 827
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 829
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    if-eqz v0, :cond_4

    .line 830
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method

.method private setTitleVisibility(Z)V
    .locals 5

    .line 2346
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2347
    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setVisibility(I)V

    .line 2349
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 2350
    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setVisibility(I)V

    .line 2353
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    .line 2355
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    .line 2356
    :goto_2
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v2

    .line 2357
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

    .line 2359
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_5
    return-void
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2459
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2460
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2463
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    const/16 v1, 0x2710

    if-ge p2, v1, :cond_1

    .line 2464
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 5

    .line 2419
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 2420
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    if-eqz v1, :cond_2

    .line 2424
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    .line 2425
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

    .line 2427
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_9

    .line 2430
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x2

    if-ne p1, v4, :cond_5

    const/16 p1, 0x8

    if-eqz v1, :cond_4

    .line 2434
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    if-eqz v0, :cond_9

    .line 2437
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v4, -0x3

    if-ne p1, v4, :cond_6

    const/4 p1, 0x1

    .line 2440
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_6
    const/4 v4, -0x4

    if-ne p1, v4, :cond_7

    .line 2442
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    :cond_7
    if-ltz p1, :cond_9

    if-gt p1, v2, :cond_9

    add-int/lit8 v3, p1, 0x0

    .line 2447
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge p1, v2, :cond_8

    .line 2450
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 2452
    :cond_8
    invoke-direct {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateTightTitle()V
    .locals 5

    .line 1216
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

    .line 1217
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    .line 1218
    :goto_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v4, :cond_3

    .line 1219
    invoke-virtual {v4, v3}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setTitleVisibility(I)V

    :cond_3
    if-nez v0, :cond_4

    .line 1221
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    .line 1222
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_6

    .line 1223
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitleVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateTitleCenter()V
    .locals 2

    .line 1250
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_0

    .line 1251
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->updateTitleCenter(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .locals 1

    .line 697
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    :goto_0
    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method protected createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
    .locals 9

    .line 2365
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2367
    :goto_0
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 2376
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

    .line 2382
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 2383
    sget p1, Lmiuix/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setId(I)V

    return-object v1

    .line 2369
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2370
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 2372
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ActionBarOverlayLayout not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 2

    .line 2388
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1110
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1910
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 1916
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .line 1095
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1103
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 1083
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 1091
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1

    .line 775
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic getExpandState()I
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 1099
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1

    .line 758
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 835
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 779
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 692
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

    .line 450
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 451
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initImmersionMore(ILmiuix/appcompat/app/ActionBarDelegateImpl;)V
    .locals 3

    if-gtz p1, :cond_0

    const-string p2, "ActionBarView"

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const-string p1, "ActionBarView"

    const-string p2, "Don\'t show immersion menu button for custom action bar"

    .line 418
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "ActionBarView"

    const-string p2, "Don\'t show immersion menu button for null display option"

    .line 421
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 425
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    .line 426
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 428
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    sget v0, Lmiuix/appcompat/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 430
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;

    invoke-direct {v0, p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    .line 436
    new-array v0, p2, [Landroid/view/View;

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 437
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

    .line 404
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lmiuix/appcompat/R$attr;->actionBarIndeterminateProgressStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 405
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    sget v1, Lmiuix/appcompat/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 406
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 408
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 1212
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isResizable()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTightTitleWithEmbeddedTabs()Z
    .locals 1

    .line 507
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

    .line 2800
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2801
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 2802
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 2803
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2804
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    goto :goto_0

    .line 2805
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2806
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2807
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2809
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2810
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2812
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2813
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2815
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2816
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p1, :cond_5

    .line 2819
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 2820
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_5
    return-void
.end method

.method public onActionModeStart(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2780
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInActionMode:Z

    .line 2781
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInSearchMode:Z

    .line 2782
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2783
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAlpha(F)V

    .line 2784
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2785
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2787
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2788
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2790
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 2791
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    if-eqz p2, :cond_3

    .line 2794
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    .line 2795
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAcceptAlphaChange(Z)V

    :cond_3
    return-void
.end method

.method protected onAnimatedExpandStateChanged(II)V
    .locals 7

    .line 2619
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStateChangeAnimStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    .line 2620
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2623
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr p1, v2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 2625
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2627
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

    .line 2631
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

    .line 2636
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2637
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, v3}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 2639
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2640
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, v1}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    :cond_6
    :goto_2
    const-string p2, "actionbar_state_change"

    .line 2643
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

    .line 2644
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v3, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    .line 2645
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

    .line 324
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitleShowable:Z

    .line 327
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 329
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 334
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 335
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 337
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 334
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 339
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    .line 340
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarPaddingEnd:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setPaddingRelative(IIII)V

    .line 343
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 346
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_2

    .line 351
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 353
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 354
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 357
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_3

    .line 358
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 360
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 361
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_4

    .line 365
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 367
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 368
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 384
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 385
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 387
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

    .line 2598
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2599
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2600
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2605
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2606
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    .line 2610
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2611
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, p2}, Lmiuix/springback/view/SpringBackLayout;->setVisibility(I)V

    goto :goto_0

    .line 2613
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

    .line 1532
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 1533
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1534
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v0

    .line 1536
    :goto_0
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v0

    move v6, v0

    .line 1537
    :goto_1
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 1538
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    iget-object v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v2

    move v7, v2

    .line 1540
    :goto_2
    iget v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1541
    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    goto :goto_3

    .line 1542
    :cond_3
    iget v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    add-int v1, v0, v7

    :cond_4
    :goto_3
    sub-int v2, p5, p3

    sub-int v9, v2, v7

    sub-int v10, v9, v1

    add-int v2, v0, v7

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float v11, v1, v0

    .line 1552
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    if-eqz v0, :cond_5

    .line 1553
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTransitionListener:Lmiuix/appcompat/app/ActionBarTransitionListener;

    iget v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastProcess:F

    sub-float/2addr v1, v11

    invoke-interface {v0, v1, v11}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onActionBarMove(FF)V

    :cond_5
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v4, p4

    .line 1556
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutCollapseViews(ZIIIII)V

    move v3, v10

    move v5, v9

    move v6, v7

    move v7, v11

    .line 1557
    invoke-virtual/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onLayoutExpandViews(ZIIIIIF)V

    .line 1559
    invoke-direct {p0, v11}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->animateLayoutWithProcess(F)V

    .line 1560
    iput v11, v8, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLastProcess:F

    return-void
.end method

.method protected onLayoutExpandViews(ZIIIIIF)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p7

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1825
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    const/4 v10, 0x0

    if-gtz v0, :cond_0

    .line 1828
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    goto :goto_0

    :cond_0
    move v0, v10

    .line 1830
    :goto_0
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    .line 1831
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    move v11, v1

    goto :goto_1

    :cond_1
    move v11, v10

    .line 1832
    :goto_1
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_2

    .line 1834
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1835
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1836
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v1

    move v12, v1

    goto :goto_2

    :cond_2
    move v12, v10

    :goto_2
    add-int v1, p3, v11

    add-int/2addr v1, v12

    sub-int/2addr v1, v9

    add-int v13, v1, v0

    .line 1838
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_6

    .line 1839
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_6

    .line 1841
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    sub-int v1, v9, v11

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1843
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ne v0, v14, :cond_3

    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    .line 1844
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_3

    :cond_3
    move-object v0, v15

    :goto_3
    if-eqz v0, :cond_5

    .line 1847
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    .line 1848
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1849
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    sub-int v1, v8, v1

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1851
    :cond_4
    iget v2, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    .line 1853
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 1854
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v4

    iget v5, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabTopPadding:I

    add-int/2addr v4, v5

    .line 1851
    invoke-virtual {v0, v1, v2, v3, v4}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 1856
    :cond_5
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    add-int v5, v11, v12

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    .line 1863
    :cond_6
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    if-eqz v0, :cond_a

    .line 1865
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    add-int v2, v7, v0

    add-int v5, v9, p6

    .line 1867
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v3, v5, v0

    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    sub-int v4, v8, v0

    move-object/from16 v0, p0

    .line 1865
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 1870
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v0

    if-ne v0, v14, :cond_7

    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v10}, Lmiuix/springback/view/SpringBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_7

    .line 1871
    iget-object v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v10}, Lmiuix/springback/view/SpringBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    :cond_7
    if-eqz v15, :cond_9

    .line 1875
    invoke-virtual {v15}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v0

    .line 1876
    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1877
    iget v0, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    invoke-virtual {v15}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1878
    iget v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    goto :goto_4

    :cond_8
    move v1, v0

    move v0, v10

    .line 1880
    :goto_4
    invoke-virtual {v15}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v15, v0, v10, v1, v2}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 1882
    :cond_9
    iget-object v1, v6, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    sub-int v0, v11, v12

    sub-int v3, v13, v0

    add-int v5, v11, v12

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->clipViewBounds(Landroid/view/View;IIII)V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v1, :cond_2

    .line 1260
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1261
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-ne v6, v5, :cond_0

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 1262
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

    .line 1269
    invoke-virtual {v0, v2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1270
    iput-boolean v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    return-void

    .line 1274
    :cond_3
    iput-boolean v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIsCollapsed:Z

    .line 1276
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1278
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    if-lez v6, :cond_4

    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    goto :goto_1

    .line 1279
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1281
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingStart()I

    move-result v8

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getPaddingEnd()I

    move-result v9

    sub-int v10, v6, v7

    const/high16 v11, 0x40000000    # 2.0f

    .line 1285
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, -0x80000000

    .line 1286
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    sub-int v15, v4, v8

    sub-int/2addr v15, v9

    .line 1290
    div-int/lit8 v16, v15, 0x2

    .line 1295
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1296
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1297
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v8, v3

    .line 1299
    :cond_5
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1300
    invoke-virtual {v0, v3, v15, v14, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1301
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v9, v3

    .line 1304
    :cond_6
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 1306
    :goto_2
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 1307
    invoke-virtual {v3, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_8
    if-eqz v3, :cond_a

    .line 1310
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_a

    .line 1311
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1313
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_9

    .line 1314
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_3

    .line 1316
    :cond_9
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1318
    :goto_3
    invoke-virtual {v3, v2, v12}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->measure(II)V

    .line 1319
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v15, v2

    const/4 v3, 0x0

    .line 1320
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v5, v15, v2

    .line 1321
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v8, v2

    goto :goto_4

    :cond_a
    move/from16 v5, v16

    .line 1325
    :goto_4
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_b

    .line 1326
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v15, v14, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1328
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1329
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 1332
    :cond_b
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    if-eqz v2, :cond_c

    .line 1333
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v13, 0x8

    if-eq v2, v13, :cond_c

    .line 1334
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget v13, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v13, v3

    invoke-virtual {v0, v2, v15, v14, v13}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1336
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1337
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int v16, v16, v2

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/2addr v2, v3

    sub-int v2, v16, v2

    const/4 v13, 0x0

    .line 1336
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1338
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    .line 1341
    :cond_c
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 1342
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v13, 0x8

    if-eq v2, v13, :cond_d

    .line 1343
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v15, v14, v13}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1345
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    .line 1346
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v16, v2

    .line 1345
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1347
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v9, v2

    move/from16 v2, v16

    goto :goto_5

    :cond_d
    move/from16 v2, v16

    .line 1350
    :goto_5
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isShowTitle()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1353
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTitleCenter()V

    .line 1357
    :cond_e
    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    if-eqz v14, :cond_f

    goto :goto_6

    .line 1359
    :cond_f
    iget v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_10

    iget-object v14, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v14, :cond_10

    goto :goto_6

    :cond_10
    move-object/from16 v14, v16

    .line 1364
    :goto_6
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-nez v11, :cond_11

    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v11, :cond_12

    :cond_11
    if-eqz v14, :cond_12

    const/16 v11, 0x8

    .line 1365
    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_12
    const/16 v11, 0x8

    :goto_7
    if-eqz v14, :cond_1c

    .line 1368
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v11, :cond_1c

    .line 1369
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1370
    instance-of v11, v3, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v11, :cond_13

    move-object/from16 v16, v3

    check-cast v16, Landroidx/appcompat/app/ActionBar$LayoutParams;

    :cond_13
    move-object/from16 v11, v16

    if-eqz v11, :cond_14

    move/from16 v16, v6

    .line 1376
    iget v6, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v17, v7

    iget v7, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 1377
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

    .line 1383
    :goto_8
    iget v7, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    move/from16 v19, v1

    const/4 v1, -0x2

    if-gtz v7, :cond_15

    const/high16 v7, -0x80000000

    goto :goto_9

    .line 1386
    :cond_15
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v1, :cond_16

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_9

    :cond_16
    const/high16 v7, -0x80000000

    .line 1389
    :goto_9
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_17

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1390
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_17
    sub-int/2addr v10, v6

    const/4 v1, 0x0

    .line 1389
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1392
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v1, v10, :cond_18

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_a

    :cond_18
    const/high16 v1, -0x80000000

    .line 1394
    :goto_a
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_19

    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1395
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_b

    :cond_19
    move v10, v15

    :goto_b
    sub-int v10, v10, v18

    move/from16 v20, v12

    const/4 v12, 0x0

    .line 1394
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v11, :cond_1a

    .line 1397
    iget v11, v11, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_c

    :cond_1a
    const v11, 0x800013

    :goto_c
    const v12, 0x800007

    and-int/2addr v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1b

    .line 1402
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v3, v11, :cond_1b

    .line 1403
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 v10, v2, 0x2

    .line 1407
    :cond_1b
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1408
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1406
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1409
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

    .line 1412
    :goto_d
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_1f

    if-eqz v13, :cond_1f

    .line 1413
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1416
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 1417
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1420
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v15, v2, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    .line 1422
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v8, v2

    .line 1424
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTitleCenter()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1425
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1426
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    sub-int v2, v4, v2

    const/4 v5, 0x0

    .line 1428
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v6, -0x80000000

    .line 1427
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1426
    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1433
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v15, v1

    goto :goto_e

    :cond_1e
    const/4 v5, 0x0

    .line 1435
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v15, v1, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v15

    goto :goto_e

    :cond_1f
    const/4 v5, 0x0

    .line 1440
    :goto_e
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/high16 v2, -0x80000000

    .line 1441
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1442
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1440
    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1446
    iput v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    .line 1447
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v1, :cond_20

    .line 1448
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1449
    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_20

    .line 1450
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1451
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1452
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1450
    invoke-virtual {v1, v2, v3}, Lmiuix/springback/view/SpringBackLayout;->measure(II)V

    .line 1453
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredWidth()I

    move-result v2

    .line 1454
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v1}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v1

    .line 1455
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    const/4 v3, 0x0

    goto :goto_f

    :cond_20
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1460
    :goto_f
    iput v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    .line 1461
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v5, :cond_21

    .line 1462
    invoke-virtual {v5}, Lmiuix/springback/view/SpringBackLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_21

    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1463
    invoke-virtual {v5}, Lmiuix/springback/view/SpringBackLayout;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_21

    .line 1464
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    .line 1465
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1466
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1464
    invoke-virtual {v5, v6, v7}, Lmiuix/springback/view/SpringBackLayout;->measure(II)V

    .line 1467
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredWidth()I

    .line 1468
    iget-object v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Lmiuix/springback/view/SpringBackLayout;->getMeasuredHeight()I

    move-result v3

    .line 1469
    iput v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    goto :goto_10

    :cond_21
    const/4 v3, 0x0

    .line 1472
    :goto_10
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v5, :cond_26

    .line 1473
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    packed-switch v5, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_12

    .line 1484
    :pswitch_0
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 1485
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapsePaddingH:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    .line 1486
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    .line 1487
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v7, 0x0

    .line 1488
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1486
    invoke-virtual {v6, v5, v8}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->measure(II)V

    .line 1490
    :cond_22
    iget-object v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 1491
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUncollapseTabPaddingH:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int v5, v4, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1492
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    .line 1493
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1494
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1492
    invoke-virtual {v6, v2, v7}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->measure(II)V

    const/4 v2, 0x0

    goto :goto_12

    :cond_23
    const/4 v2, 0x0

    goto :goto_12

    .line 1475
    :pswitch_1
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_25

    if-eqz v13, :cond_24

    .line 1476
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    goto :goto_11

    :cond_24
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mItemPadding:I

    :goto_11
    sub-int/2addr v15, v2

    const/4 v2, 0x0

    .line 1477
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1478
    iget-object v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v7, -0x80000000

    .line 1479
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move/from16 v7, v20

    .line 1478
    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_12

    :cond_25
    const/4 v2, 0x0

    goto :goto_12

    :cond_26
    const/4 v2, 0x0

    .line 1500
    :goto_12
    iget v5, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContentHeight:I

    if-gtz v5, :cond_29

    move v3, v2

    move/from16 v1, v19

    :goto_13
    if-ge v2, v1, :cond_28

    .line 1503
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1504
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, v17

    if-le v5, v3, :cond_27

    move v3, v5

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1509
    :cond_28
    invoke-virtual {v0, v4, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_14

    :cond_29
    add-int v6, v16, v3

    .line 1511
    iput v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    .line 1513
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 1514
    iget v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    add-int v1, v16, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1515
    invoke-virtual {v0, v4, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_14

    .line 1516
    :cond_2a
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 1517
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int v6, v16, v2

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_14

    .line 1519
    :cond_2b
    invoke-virtual {v0, v4, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1523
    :goto_14
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2c

    .line 1524
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mProgressBarPadding:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1524
    invoke-virtual {v1, v2, v3}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_2c
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

    .line 2729
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    if-le p1, p2, :cond_1

    .line 2730
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    .line 2731
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2732
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    const/4 v0, 0x1

    if-lt p1, p5, :cond_0

    sub-int p1, p2, p3

    .line 2733
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2734
    aget p1, p4, v0

    add-int/2addr p1, p3

    aput p1, p4, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2736
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2737
    aget p1, p4, v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p3

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    sub-int/2addr p3, p5

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    sub-int/2addr p3, p5

    add-int/2addr p1, p3

    aput p1, p4, v0

    .line 2740
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p2, p1

    .line 2741
    aput p2, p6, v0

    .line 2742
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 1

    .line 2650
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr p1, p2

    .line 2651
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabHeight:I

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    .line 2652
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p3

    if-gez p5, :cond_1

    if-ge p3, p2, :cond_1

    .line 2654
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    sub-int p6, p3, p5

    const/4 v0, 0x1

    if-gt p6, p2, :cond_0

    sub-int p1, p4, p5

    .line 2657
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2658
    aget p1, p7, v0

    add-int/2addr p1, p5

    aput p1, p7, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p3

    .line 2661
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 2662
    aget p1, p7, v0

    neg-int p2, p2

    add-int/2addr p1, p2

    aput p1, p7, v0

    .line 2665
    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-eq p1, p4, :cond_1

    sub-int/2addr p4, p1

    .line 2666
    aput p4, p8, v0

    .line 2667
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    if-nez p4, :cond_0

    .line 2684
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    goto :goto_0

    .line 2686
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    .line 2688
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2689
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    const/4 p1, 0x2

    .line 2692
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1943
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    .line 1945
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1947
    iget v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1949
    iget v1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1951
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1954
    :cond_0
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v0, :cond_1

    .line 1955
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1957
    :cond_1
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1923
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1924
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1926
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    goto :goto_0

    .line 1929
    :cond_0
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1931
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1932
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1933
    iput v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    goto :goto_1

    .line 1935
    :cond_1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInnerExpandState:I

    iput v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    :goto_1
    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2674
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

    .line 2677
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

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    .line 2697
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 2699
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2700
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTouchScrolling:Z

    .line 2701
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    .line 2704
    :cond_0
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    if-eqz p2, :cond_1

    .line 2705
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNonTouchScrolling:Z

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_5

    .line 2710
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    if-nez p2, :cond_2

    .line 2711
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 2713
    :cond_2
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr v2, p1

    if-ne p2, v2, :cond_3

    .line 2714
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void

    .line 2718
    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabHeight:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    if-le p2, v0, :cond_4

    .line 2719
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

    .line 2721
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result p2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseHeight:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2723
    :goto_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public bridge synthetic setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    return-void
.end method

.method public setCallback(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCallback:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .line 705
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 706
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 709
    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 710
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 711
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 712
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addedCustomView()V

    goto :goto_1

    .line 714
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 10

    .line 871
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int v1, p1, v0

    .line 872
    :goto_0
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1a

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

    .line 878
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initHomeLayout()V

    .line 879
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

    .line 882
    :goto_3
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUp(Z)V

    if-eqz v7, :cond_4

    .line 889
    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_4
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_8

    .line 894
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v4

    .line 896
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

    .line 899
    :cond_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v7, :cond_8

    .line 900
    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_6
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_10

    and-int/lit8 v7, p1, 0x8

    const/4 v8, 0x2

    if-eqz v7, :cond_c

    .line 906
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_b

    .line 907
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 908
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 909
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_9

    .line 910
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8, v7}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 911
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 913
    :cond_9
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_a

    .line 914
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v8, v7}, Lmiuix/springback/view/SpringBackLayout;->addView(Landroid/view/View;)V

    .line 915
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v7, v8}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 917
    :cond_a
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 918
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 920
    :cond_b
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    goto :goto_7

    .line 922
    :cond_c
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_d

    .line 923
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 925
    :cond_d
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz v7, :cond_e

    .line 926
    iget-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->getLayout()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 928
    :cond_e
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 929
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 930
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 931
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 932
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v7

    if-ne v7, v8, :cond_10

    .line 933
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 934
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p0, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 935
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v7}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 936
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableTabContainer:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v7}, Lmiuix/springback/view/SpringBackLayout;->removeAllViews()V

    .line 937
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_f

    .line 938
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 940
    :cond_f
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v7, :cond_10

    .line 941
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 947
    :cond_10
    :goto_7
    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v7, :cond_17

    and-int/lit8 v7, v1, 0x6

    if-eqz v7, :cond_17

    .line 949
    iget v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_11

    move v7, v5

    goto :goto_8

    :cond_11
    move v7, v4

    .line 950
    :goto_8
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-virtual {v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getVisibility()I

    move-result v8

    if-nez v8, :cond_14

    .line 951
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v0, :cond_13

    if-eqz v7, :cond_12

    move v6, v4

    goto :goto_9

    :cond_12
    move v6, v3

    :cond_13
    :goto_9
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 953
    :cond_14
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-nez v0, :cond_15

    if-eqz v7, :cond_15

    move v8, v5

    goto :goto_a

    :cond_15
    move v8, v4

    :goto_a
    invoke-virtual {v6, v8}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setEnabled(Z)V

    .line 954
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-nez v0, :cond_16

    if-eqz v7, :cond_16

    move v4, v5

    :cond_16
    invoke-virtual {v6, v4}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setEnabled(Z)V

    :cond_17
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_19

    .line 957
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_19

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_18

    .line 959
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 960
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addedCustomView()V

    goto :goto_b

    .line 962
    :cond_18
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 966
    :cond_19
    :goto_b
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->requestLayout()V

    goto :goto_c

    .line 968
    :cond_1a
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->invalidate()V

    .line 972
    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1d

    .line 973
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 974
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_1b
    and-int/2addr p1, v3

    if-eqz p1, :cond_1c

    .line 976
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 979
    :cond_1c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_d
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 1076
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 1077
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 1087
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

    .line 514
    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    .line 515
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 516
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    :cond_1
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 5

    .line 762
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 765
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    .line 766
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 768
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

    .line 769
    new-array p1, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndView:Landroid/view/View;

    aput-object v1, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 770
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

    .line 2769
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    .line 2771
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2772
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    sget v1, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 2774
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .line 1970
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1973
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1974
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1961
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1962
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1964
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 1965
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    :goto_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 2

    .line 854
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_2

    .line 855
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 856
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setFocusable(Z)V

    if-nez p1, :cond_0

    .line 859
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 860
    :cond_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 861
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 864
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

    .line 1017
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

    .line 1003
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1004
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_1

    .line 1005
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1006
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 1008
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1012
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

    .line 1031
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

    .line 1021
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 1022
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIconLogoInitIndicator:I

    if-eqz p1, :cond_0

    .line 1023
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 5

    .line 604
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 608
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 613
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 614
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 617
    :cond_2
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 618
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mOptionsMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 619
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 622
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 625
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-nez v0, :cond_4

    .line 626
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createActionMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 627
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 631
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 633
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_6

    .line 634
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 635
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 634
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 637
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 638
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 639
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_5

    .line 641
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 643
    :cond_5
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 645
    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 647
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 648
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 647
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 650
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 651
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 652
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

    .line 653
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->configPresenters(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 654
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 655
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    .line 656
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 657
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eq v0, v1, :cond_8

    .line 658
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 660
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, p1, v4, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 664
    sget p2, Lmiuix/appcompat/R$id;->expanded_menu:I

    .line 665
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 667
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 671
    :cond_9
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    :cond_a
    :goto_1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1035
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1065
    :pswitch_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_2

    .line 1066
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addTabsContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 1047
    :pswitch_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MIUIX Deleted"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1070
    :cond_2
    :goto_1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 1071
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

    .line 2415
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

    .line 2410
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

    .line 2405
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

    .line 2400
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateProgressBars(I)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .line 459
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8

    .line 460
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 466
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 474
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->requestLayout()V

    .line 476
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 480
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    .line 482
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 483
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 482
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    .line 486
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 488
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 489
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 488
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 492
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_8
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 5

    .line 745
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 748
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    .line 749
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 751
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

    .line 752
    new-array p1, v0, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mStartView:Landroid/view/View;

    aput-object v1, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    const/high16 v1, 0x42700000    # 60.0f

    invoke-interface {p1, v1}, Lmiuix/animation/IHoverStyle;->setFeedbackRadius(F)V

    .line 753
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

    .line 839
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 840
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    if-eqz v0, :cond_4

    .line 841
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 843
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

    .line 844
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setSubTitleVisibility(I)V

    .line 845
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez p1, :cond_3

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 847
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 848
    :cond_3
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 849
    new-instance p1, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$kpUQOS_TDA2XaE-oQd3KZ6VlLUY;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/-$$Lambda$ActionBarView$kpUQOS_TDA2XaE-oQd3KZ6VlLUY;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    .line 790
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 800
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 801
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

    .line 442
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
