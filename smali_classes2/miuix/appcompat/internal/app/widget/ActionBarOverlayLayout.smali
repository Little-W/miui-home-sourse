.class public Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field protected mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field protected mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimating:Z

.field private mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/graphics/Rect;

.field private mCallback:Landroid/view/Window$Callback;

.field private mContentAutoFitSystemWindow:Z

.field private mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskInsets:Landroid/graphics/Rect;

.field protected mContentView:Landroid/view/View;

.field private mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

.field private mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field private mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field private mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingHorizontal:I

.field private mExtraPaddingLevel:I

.field private mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

.field private mInnerInsets:Landroid/graphics/Rect;

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mLastBaseContentInsets:Landroid/graphics/Rect;

.field private mLastInnerInsets:Landroid/graphics/Rect;

.field private mOffsetInWindow:[I

.field private mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

.field private mOverlayMode:Z

.field private mRequestFitSystemWindow:Z

.field private mRootSubDecor:Z

.field private mTranslucentStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    .line 109
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 118
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    const/4 v2, 0x2

    .line 978
    new-array v3, v2, [I

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 134
    new-instance v3, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-direct {v3, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    .line 136
    sget-object v3, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 137
    sget p3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    .line 138
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 139
    sget p1, Lmiuix/appcompat/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    .line 140
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz p1, :cond_0

    .line 141
    sget p1, Lmiuix/appcompat/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 144
    :cond_0
    sget p1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontal:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 145
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingLevel(I)V

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 147
    :cond_2
    :goto_0
    sget p1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalEnable:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 148
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    .line 149
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$202(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 54
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;
    .locals 0

    .line 54
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 2

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 368
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v1, :cond_0

    .line 370
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 372
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v1, :cond_1

    .line 374
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move p3, v0

    :cond_1
    if-eqz p6, :cond_2

    .line 376
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2

    .line 378
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move p3, v0

    :cond_2
    if-eqz p5, :cond_3

    .line 380
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p5, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p5, :cond_3

    .line 382
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move p3, v0

    :cond_3
    return p3
.end method

.method private computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 351
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    .line 352
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    .line 355
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 356
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-nez v0, :cond_1

    .line 358
    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 360
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v0, :cond_2

    .line 361
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .locals 1

    .line 799
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 800
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0

    .line 802
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method private dismissContextMenu()V
    .locals 1

    .line 964
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x0

    .line 966
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    :cond_0
    return-void
.end method

.method private getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 335
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 336
    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private internalShowContextMenu(Landroid/view/View;FF)Z
    .locals 2

    .line 211
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 213
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->clear()V

    .line 217
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;FF)Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 218
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz p2, :cond_1

    .line 219
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    .line 222
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 751
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isBottomAnimating()Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return v0
.end method

.method private isLayoutHideNavigation()Z
    .locals 1

    .line 710
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pullChildren()V
    .locals 3

    .line 652
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    const v0, 0x1020002

    .line 653
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 654
    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 655
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lmiuix/appcompat/R$attr;->windowActionBar:I

    invoke-static {v0, v2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 660
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 661
    sget v2, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 662
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setIsMiuixFloating(Z)V

    :cond_2
    return-void
.end method

.method private setFloatingMode(Z)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eq v0, p1, :cond_2

    .line 157
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    .line 158
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onFloatingModeChanged(Z)V

    .line 159
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setIsMiuixFloating(Z)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 163
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_2
    return-void
.end method


# virtual methods
.method public animateContentMarginBottom(I)V
    .locals 7

    .line 388
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 389
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 390
    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 391
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 392
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 393
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 394
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 592
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 595
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 597
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 730
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 735
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 736
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_2

    .line 737
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result p1

    if-nez p1, :cond_5

    .line 738
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 739
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 743
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v0

    :cond_5
    :goto_0
    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 11

    .line 247
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    if-eqz v0, :cond_0

    .line 248
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1}, Lmiuix/appcompat/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 253
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_floating_window_top_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 255
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 256
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 259
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_6

    .line 261
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 266
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 271
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1010586

    invoke-static {v0, v2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 277
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 278
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 283
    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-nez v0, :cond_8

    .line 284
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 285
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v1

    .line 289
    :goto_2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v0, :cond_9

    .line 292
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 295
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 298
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_c

    .line 299
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 300
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 301
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    instance-of v2, v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    if-eqz v2, :cond_a

    .line 302
    check-cast v0, Lmiuix/appcompat/internal/view/SearchActionModeImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/SearchActionModeImpl;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 306
    :cond_a
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    const/4 v7, 0x1

    .line 307
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result p1

    if-nez p1, :cond_b

    move v8, v3

    goto :goto_3

    :cond_b
    move v8, v1

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    .line 306
    invoke-direct/range {v4 .. v10}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p1

    goto :goto_4

    :cond_c
    move p1, v1

    .line 310
    :goto_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_e

    .line 312
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 313
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 314
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 315
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingWindow:Z

    if-eqz v0, :cond_d

    .line 316
    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 318
    :cond_d
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr p1, v0

    .line 321
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 322
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move p1, v3

    :cond_f
    if-eqz p1, :cond_10

    .line 327
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 329
    :cond_10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p1

    return p1
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 1

    .line 609
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .locals 1

    .line 629
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object v0
.end method

.method protected getBottomInset()I
    .locals 1

    .line 601
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getInsetHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .locals 1

    .line 633
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentMask()Landroid/view/View;
    .locals 1

    .line 686
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .locals 2

    .line 625
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 621
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .locals 1

    .line 188
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingLevel:I

    return v0
.end method

.method public isRootSubDecor()Z
    .locals 1

    .line 694
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .locals 5

    .line 698
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 702
    :goto_1
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 343
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 344
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 399
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 400
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 401
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateAllClipView()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingLevel:I

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/util/LayoutUIUtils;->getExtraPaddingByLevel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    .line 175
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->onConfigurationChanged()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 414
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 415
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->pullChildren()V

    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setFloatingMode(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 574
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 576
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    if-lez p1, :cond_1

    .line 577
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    add-int/2addr p2, p3

    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p4

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    add-int/2addr p4, p5

    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p5

    .line 582
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    sub-int/2addr p2, p4

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p4

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    sub-int/2addr p4, v0

    .line 586
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v7, p0

    .line 420
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getWidthMeasureSpec(I)I

    move-result v8

    .line 421
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFloatingWindowSize:Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getHeightMeasureSpec(I)I

    move-result v9

    .line 431
    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 432
    iget-object v11, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    const/4 v12, 0x0

    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    .line 436
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v0

    const/16 v1, 0x8

    if-ge v6, v0, :cond_2

    .line 437
    invoke-virtual {v7, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, v10, :cond_1

    if-eq v5, v11, :cond_1

    .line 439
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    move v4, v9

    move-object/from16 v17, v5

    move/from16 v5, v16

    .line 443
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 444
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 445
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 446
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 447
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v15, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v2

    move v14, v0

    move v13, v1

    move v15, v2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 452
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    .line 453
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    if-gtz v0, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_4
    move v6, v12

    goto :goto_3

    :cond_5
    move v0, v12

    move v6, v0

    .line 458
    :goto_3
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v1

    move/from16 v16, v1

    goto :goto_4

    :cond_6
    move/from16 v16, v12

    .line 464
    :goto_4
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 465
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    if-lez v0, :cond_7

    .line 468
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    .line 471
    :cond_7
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 473
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_8

    .line 474
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 475
    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 477
    :cond_8
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 478
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    .line 479
    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 482
    :cond_9
    iget-boolean v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_a

    .line 483
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 484
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v16

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 486
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_b

    if-lez v0, :cond_c

    .line 488
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_5

    .line 491
    :cond_b
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 493
    :cond_c
    :goto_5
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v16

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 498
    :goto_6
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    const/4 v5, 0x1

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 499
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_d

    .line 500
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 502
    :cond_d
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 503
    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 504
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 505
    :cond_e
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 510
    :cond_f
    :goto_7
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    move-result v0

    if-nez v0, :cond_10

    .line 511
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v5, v17

    move v12, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    goto :goto_8

    :cond_10
    move v12, v6

    .line 514
    :goto_8
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_12

    .line 515
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-nez v16, :cond_11

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    :cond_11
    move/from16 v2, v16

    invoke-virtual {v10, v0, v12, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 516
    :cond_12
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_13

    .line 517
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 520
    :cond_13
    :goto_9
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    if-eqz v0, :cond_15

    .line 521
    :cond_14
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 522
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-super {v7, v0}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 526
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_17

    .line 527
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 529
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    const v0, 0x1020002

    .line 531
    invoke-virtual {v7, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 532
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 533
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 540
    :cond_17
    :goto_a
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    if-eqz v0, :cond_18

    iget v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    if-lez v0, :cond_18

    .line 541
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 542
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 543
    iget v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 544
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v0

    goto :goto_b

    :cond_18
    move v2, v8

    :goto_b
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v4, v9

    .line 547
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 548
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 549
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 550
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 551
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v10

    if-eqz v11, :cond_19

    .line 554
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 555
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v4, v9

    .line 556
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 560
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 561
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 564
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 565
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 568
    invoke-static {v1, v8, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    .line 569
    invoke-static {v0, v9, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 568
    invoke-virtual {v7, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 8

    .line 1015
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v7, 0x1

    const/4 v0, 0x0

    aput v0, v6, v7

    .line 1016
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1017
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 1019
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget p2, p2, v7

    neg-int p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 11

    move-object v0, p0

    .line 982
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v10, 0x1

    const/4 v1, 0x0

    aput v1, v9, v10

    .line 983
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 984
    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 986
    :cond_0
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget v2, v2, v10

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 997
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 991
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    .line 1004
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 722
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 725
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mIsFloatingTheme:Z

    return p1
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .line 408
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    return-void
.end method

.method public setActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 975
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setContentMask(Landroid/view/View;)V
    .locals 3

    .line 672
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 674
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isOled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 675
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 676
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$drawable;->miuix_appcompat_window_content_mask_oled:I

    .line 677
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 676
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$drawable;->miuix_appcompat_window_content_mask_oled:I

    .line 680
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 679
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    if-eq v0, p1, :cond_0

    .line 193
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingEnable:Z

    .line 194
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .locals 1

    .line 179
    invoke-static {p1}, Lmiuix/appcompat/internal/util/LayoutUIUtils;->isLevelValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingLevel:I

    if-eq v0, p1, :cond_0

    .line 181
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingLevel:I

    .line 182
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/util/LayoutUIUtils;->getExtraPaddingByLevel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mExtraPaddingHorizontal:I

    .line 183
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0

    .line 617
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return-void
.end method

.method public setRootSubDecor(Z)V
    .locals 0

    .line 717
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return-void
.end method

.method public setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    .line 641
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eq v0, p1, :cond_0

    .line 642
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    .line 643
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .line 228
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 230
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->clear()V

    .line 235
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 236
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_1

    .line 237
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    .line 240
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 2

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->internalShowContextMenu(Landroid/view/View;FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 761
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 767
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 768
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p1

    .line 769
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 773
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 776
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 777
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 780
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 784
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 790
    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p2

    .line 791
    invoke-virtual {p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 792
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1

    .line 794
    :cond_1
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 756
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
