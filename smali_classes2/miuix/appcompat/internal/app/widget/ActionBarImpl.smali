.class public Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.super Lmiuix/appcompat/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;
    }
.end annotation


# static fields
.field private static sTabListenerWrapper:Landroidx/appcompat/app/ActionBar$TabListener;


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

.field private mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

.field private mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mCollapseTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mContainerAnim:Lmiuix/animation/IStateStyle;

.field private mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskOnClickListenr:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentAccessibilityImportant:I

.field private mCurrentExpandState:I

.field private mCurrentResizable:Z

.field private mDisplayHomeAsUpSet:Z

.field private mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mExpanedTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

.field private mShowHideAnimationEnabled:Z

.field private mShowingForMode:Z

.field private mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

.field private mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mSpliterAnim:Lmiuix/animation/IStateStyle;

.field private mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;-><init>()V

    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->sTabListenerWrapper:Landroidx/appcompat/app/ActionBar$TabListener;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 199
    invoke-direct {p0}, Lmiuix/appcompat/app/ActionBar;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 176
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 200
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 202
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 203
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/ViewGroup;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Lmiuix/appcompat/app/ActionBar;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSavedTabPosition:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurWindowVisibility:I

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 176
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    .line 193
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 195
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 196
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
    .locals 0

    .line 61
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    return-object p0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1017
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto :goto_0

    .line 1020
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    :goto_0
    return-object v0
.end method

.method private doHide(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1572
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(ZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private doHide(ZLmiuix/animation/controller/AnimState;)V
    .locals 6

    .line 1577
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1578
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 1579
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {v2}, Lmiuix/animation/IStateStyle;->cancel()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1582
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    const/16 v2, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const-string v5, "HideActionBar"

    .line 1585
    invoke-direct {p0, v3, v5, v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 1587
    :cond_3
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1588
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 1589
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 1592
    :goto_3
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p2, :cond_6

    .line 1594
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSpliterAnim:Lmiuix/animation/IStateStyle;

    if-eqz p2, :cond_4

    .line 1595
    invoke-interface {p2}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 1596
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSpliterAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {p2}, Lmiuix/animation/IStateStyle;->cancel()V

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, "SpliterHide"

    .line 1599
    invoke-direct {p0, v3, p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startSplitViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSpliterAnim:Lmiuix/animation/IStateStyle;

    goto :goto_4

    .line 1601
    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getSplitHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1602
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 1603
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 1605
    :goto_4
    invoke-direct {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateContentMaskVisibility(Z)V

    :cond_6
    return-void
.end method

.method private doShow(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1526
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(ZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private doShow(ZLmiuix/animation/controller/AnimState;)V
    .locals 7

    .line 1531
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1532
    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 1533
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {v2}, Lmiuix/animation/IStateStyle;->cancel()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1535
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v4

    .line 1537
    :goto_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    instance-of v5, v5, Lmiuix/view/SearchActionMode;

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v2, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    const-string v6, "ShowActionBar"

    .line 1539
    invoke-direct {p0, v4, v6, v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerAnim:Lmiuix/animation/IStateStyle;

    goto :goto_4

    .line 1541
    :cond_4
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1542
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 1545
    :goto_4
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p2, :cond_8

    .line 1547
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSpliterAnim:Lmiuix/animation/IStateStyle;

    if-eqz p2, :cond_5

    .line 1548
    invoke-interface {p2}, Lmiuix/animation/IStateStyle;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 1549
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSpliterAnim:Lmiuix/animation/IStateStyle;

    invoke-interface {p2}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 1551
    :cond_5
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    if-eqz p1, :cond_6

    const-string p1, "SpliterShow"

    .line 1553
    invoke-direct {p0, v4, p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startSplitViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSpliterAnim:Lmiuix/animation/IStateStyle;

    .line 1554
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 1555
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1556
    instance-of p2, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz p2, :cond_7

    .line 1557
    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result p2

    xor-int/2addr p2, v4

    if-eqz p2, :cond_7

    .line 1559
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->startLayoutAnimation()V

    goto :goto_5

    .line 1564
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTranslationY(F)V

    .line 1565
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAlpha(F)V

    .line 1567
    :cond_7
    :goto_5
    invoke-direct {p0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateContentMaskVisibility(Z)V

    :cond_8
    return-void
.end method

.method private getBlurOptioons()I
    .locals 6

    .line 528
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 529
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v4

    const/16 v5, 0x4000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v2, :cond_3

    move v3, v5

    :cond_3
    or-int v0, v1, v3

    return v0
.end method

.method private getSplitHeight()I
    .locals 3

    .line 1445
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 1446
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1447
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1448
    instance-of v2, v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz v2, :cond_0

    .line 1449
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 1450
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1451
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getCollapsedHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 4

    .line 305
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 306
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpanedTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCollapseTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0, v1, v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setEmbeddedTabView(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V

    .line 307
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 308
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_1

    .line 312
    :cond_1
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 314
    :goto_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 316
    :cond_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpanedTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    .line 318
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    .line 320
    :cond_3
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 322
    :goto_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpanedTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 324
    :cond_4
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCollapseTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    .line 326
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_3

    .line 328
    :cond_5
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 330
    :goto_3
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCollapseTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 332
    :cond_6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_8

    if-eqz p1, :cond_7

    .line 334
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_4

    .line 336
    :cond_7
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 338
    :goto_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpandTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    .line 340
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method private startContainerViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;
    .locals 9

    .line 1408
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getHeight()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    .line 1410
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 1411
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v4, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    if-nez p4, :cond_0

    .line 1414
    new-instance p4, Lmiuix/animation/controller/AnimState;

    invoke-direct {p4, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 1415
    invoke-virtual {p4, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p4

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1416
    invoke-virtual {p4, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p4

    .line 1418
    :cond_0
    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 1420
    invoke-virtual {p3, p2}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 1421
    invoke-interface {v0, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 1423
    :cond_1
    new-array p2, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, p2, v5

    invoke-interface {v0, p4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    goto :goto_0

    .line 1425
    :cond_2
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 1426
    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v4, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 1427
    new-array v3, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;

    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {v4, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;-><init>(Landroid/view/View;)V

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    if-nez p4, :cond_3

    .line 1430
    new-instance p4, Lmiuix/animation/controller/AnimState;

    invoke-direct {p4, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x64

    int-to-double v7, v0

    .line 1431
    invoke-virtual {p4, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p4

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 1432
    invoke-virtual {p4, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p4

    .line 1434
    :cond_3
    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    if-eqz p3, :cond_4

    .line 1436
    invoke-virtual {p3, p2}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 1437
    invoke-interface {v0, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 1439
    :cond_4
    new-array p2, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, p2, v5

    invoke-interface {v0, p4, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    :goto_0
    return-object p1

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private startSplitViewAnimation(ZLjava/lang/String;Lmiuix/animation/controller/AnimState;)Lmiuix/animation/IStateStyle;
    .locals 9

    .line 1495
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getSplitHeight()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    .line 1497
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 1498
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v4, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 1499
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 1500
    invoke-virtual {v0, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1501
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 1502
    new-array v1, v6, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    aput-object v2, v1, v5

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 1504
    invoke-virtual {p3, p2}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 1505
    invoke-interface {v1, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    .line 1507
    :cond_0
    new-array p2, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, p2, v5

    invoke-interface {v1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    goto :goto_0

    .line 1509
    :cond_1
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 1510
    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v4, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 1511
    new-array v3, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;

    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {v4, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;-><init>(Landroid/view/View;)V

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1512
    new-instance v3, Lmiuix/animation/controller/AnimState;

    invoke-direct {v3, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    add-int/lit8 v0, v0, 0x64

    int-to-double v7, v0

    .line 1513
    invoke-virtual {v3, v4, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 1514
    invoke-virtual {v0, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 1515
    new-array v1, v6, [Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    aput-object v2, v1, v5

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 1517
    invoke-virtual {p3, p2}, Lmiuix/animation/controller/AnimState;->setTag(Ljava/lang/Object;)V

    .line 1518
    invoke-interface {v1, p3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    .line 1520
    :cond_2
    new-array p2, v6, [Lmiuix/animation/base/AnimConfig;

    aput-object p1, p2, v5

    invoke-interface {v1, v0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method private updateContentMaskVisibility(Z)V
    .locals 2

    .line 1626
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz v0, :cond_1

    .line 1628
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1629
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 1631
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitMenuView:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMask:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1633
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMaskOnClickListenr:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object p1

    .line 1634
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 1636
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1385
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(ZLmiuix/animation/controller/AnimState;)V

    return-void
.end method

.method private updateVisibility(ZLmiuix/animation/controller/AnimState;)V
    .locals 3

    .line 1390
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1395
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 1396
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(ZLmiuix/animation/controller/AnimState;)V

    goto :goto_0

    .line 1399
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1400
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    .line 1401
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(ZLmiuix/animation/controller/AnimState;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method animateToMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1001
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->showForActionMode()V

    goto :goto_0

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->hideForActionMode()V

    .line 1006
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->animateToVisibility(Z)V

    .line 1007
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEnabled(Z)V

    .line 1009
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mExpanedTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEnabled(Z)V

    .line 1010
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCollapseTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEnabled(Z)V

    .line 1011
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCollapseTabScrollView:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionModeView;
    .locals 1

    .line 1027
    instance-of p1, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz p1, :cond_3

    .line 1028
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-nez p1, :cond_0

    .line 1029
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1031
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isMiuixFloating()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1032
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getPendingInsets()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1034
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setStatusBarPaddingTop(I)V

    .line 1037
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 1038
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->addView(Landroid/view/View;)V

    .line 1040
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSearchActionModeView:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    goto :goto_0

    .line 1045
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_4

    :goto_0
    return-object p1

    .line 1046
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not set windowSplitActionBar true in activity style!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
    .locals 4

    .line 1055
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1056
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_search_action_mode_view:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1058
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 627
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getExpandState()I
    .locals 1

    .line 1247
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 592
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    .line 854
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 855
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 856
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010397

    const/4 v3, 0x1

    .line 857
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 858
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 861
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0

    .line 863
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 866
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method hideForActionMode()V
    .locals 4

    .line 921
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 922
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    .line 923
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v2

    const v3, 0x8000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onActionModeEnd(Z)V

    .line 924
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(Z)V

    .line 925
    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 926
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz v1, :cond_1

    .line 927
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {p0, v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExpandState(IZ)V

    .line 928
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    goto :goto_1

    .line 930
    :cond_1
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 931
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 932
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExpandState(I)V

    .line 933
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 935
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentAccessibilityImportant:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 248
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBar(Lmiuix/appcompat/app/ActionBar;)V

    .line 249
    sget v0, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 250
    sget v0, Lmiuix/appcompat/R$id;->action_context_bar:I

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 252
    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 253
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 254
    sget v0, Lmiuix/appcompat/R$id;->content_mask:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMask:Landroid/view/View;

    .line 256
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMask:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 257
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContentMaskOnClickListenr:Landroid/view/View$OnClickListener;

    .line 267
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 269
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextDisplayMode:I

    .line 278
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 281
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 284
    :cond_5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 286
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public isFragmentViewPagerMode()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mViewPagerController:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResizable()Z
    .locals 1

    .line 1242
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    return v0
.end method

.method isShowHideAnimationEnabled()Z
    .locals 1

    .line 1610
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowHideAnimationEnabled:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 300
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 511
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptioons()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 512
    :goto_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getBlurOptioons()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 511
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4

    .line 483
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 485
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 487
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    and-int v3, p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p2, v3

    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    .line 488
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result p2

    .line 489
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContainerView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const v3, 0x8000

    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 490
    :goto_0
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setBlurBackground(Z)Z

    :cond_2
    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_3

    .line 492
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_3

    .line 493
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setBlurBackground(Z)Z

    goto :goto_1

    .line 494
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    .line 495
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setBlurBackground(Z)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setExpandState(I)V
    .locals 1

    .line 1252
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public setExpandState(IZ)V
    .locals 1

    .line 1257
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    .line 536
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setResizable(Z)V
    .locals 1

    .line 1237
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1

    .line 1614
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_1

    .line 1617
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1618
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doShow(Z)V

    goto :goto_0

    .line 1620
    :cond_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->doHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 473
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method showForActionMode()V
    .locals 6

    .line 888
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mShowingForMode:Z

    const/4 v1, 0x0

    .line 890
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateVisibility(Z)V

    .line 891
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getExpandState()I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    .line 892
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->isResizable()Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    .line 893
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz v3, :cond_0

    .line 894
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExpandState(IZ)V

    .line 895
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    goto :goto_0

    .line 897
    :cond_0
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentExpandState:I

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 898
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentResizable:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 900
    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mCurrentAccessibilityImportant:I

    .line 901
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 902
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v3, v3, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 903
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getDisplayOptions()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 902
    :goto_1
    invoke-virtual {v2, v3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onActionModeStart(ZZ)V

    :cond_2
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    .line 956
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 960
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v1, v1, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v1, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lmiuix/appcompat/internal/view/EditActionModeImpl;

    if-eqz v1, :cond_3

    .line 963
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->closeMode()V

    .line 964
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {v1}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->killMode()V

    .line 967
    :cond_3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionModeView;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 969
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    if-eqz p1, :cond_7

    .line 973
    instance-of v1, v0, Lmiuix/appcompat/internal/view/ActionModeImpl;

    if-eqz v1, :cond_6

    .line 974
    move-object v1, v0

    check-cast v1, Lmiuix/appcompat/internal/view/ActionModeImpl;

    .line 975
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->setActionModeView(Lmiuix/appcompat/internal/app/widget/ActionModeView;)V

    .line 976
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeCallback:Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->setActionModeCallback(Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;)V

    .line 977
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 978
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 979
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    invoke-interface {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    const/4 p1, 0x1

    .line 980
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->animateToMode(Z)V

    .line 981
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextDisplayMode:I

    if-ne v2, p1, :cond_4

    .line 983
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 984
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    .line 987
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionModeView:Lmiuix/appcompat/internal/app/widget/ActionModeView;

    instance-of v1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_5

    .line 988
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/16 v1, 0x20

    .line 989
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 992
    :cond_5
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    return-object v0

    :cond_6
    const/4 p1, 0x0

    return-object p1

    .line 970
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not set windowSplitActionBar true in activity style!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
