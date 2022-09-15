.class Lmiuix/appcompat/app/AppDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "AppDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;
    }
.end annotation


# instance fields
.field private mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field private mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

.field private mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

.field private mContentParent:Landroid/view/ViewGroup;

.field private mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

.field private mFloatingRoot:Landroid/view/ViewGroup;

.field private mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloatingTheme:Z

.field private mIsFloatingWindow:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/ActivityCallback;Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 62
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 572
    new-instance p1, Lmiuix/appcompat/app/AppDelegate$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AppDelegate$1;-><init>(Lmiuix/appcompat/app/AppDelegate;)V

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    .line 72
    iput-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/AppDelegate;)Lmiuix/appcompat/app/ActivityCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    return-object p0
.end method

.method private attachToWindow(Landroid/view/Window;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-direct {v1, p0, v0}, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;-><init>(Lmiuix/appcompat/app/AppDelegate;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    .line 141
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 143
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    return-void

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AppCompat has already installed itself into the Window"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AppCompat has already installed itself into the Window"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureWindow()V
    .locals 2

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->attachToWindow(Landroid/view/Window;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_2

    return-void

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDecorViewLayoutRes(Landroid/view/Window;)I
    .locals 5

    .line 538
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 540
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    sget v1, Lmiuix/appcompat/R$attr;->windowActionBarMovable:I

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar_movable:I

    goto :goto_0

    .line 544
    :cond_0
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    goto :goto_0

    .line 547
    :cond_1
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_simple:I

    .line 550
    :goto_0
    sget v3, Lmiuix/appcompat/R$attr;->startingWindowOverlay:I

    invoke-static {v0, v3}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_2

    .line 552
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lmiuix/appcompat/app/AppDelegate;->isWindowActionBarEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 556
    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->isFloating()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 557
    sget v3, Lmiuix/appcompat/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v3, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    .line 559
    invoke-static {p1, v0}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    :cond_3
    return v1
.end method

.method private installSubDecor()V
    .locals 6

    .line 264
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->ensureWindow()V

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecorInstalled:Z

    .line 270
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 273
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget-object v3, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AppCompatActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 275
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowLayoutMode:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 278
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 281
    :cond_1
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 286
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    .line 287
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/AppDelegate;->requestWindowFeature(I)Z

    .line 289
    :cond_2
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    .line 290
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/AppDelegate;->requestWindowFeature(I)Z

    .line 292
    :cond_3
    sget v3, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    .line 293
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowFloating:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 295
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/AppDelegate;->setTranslucentStatus(I)V

    .line 299
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AppDelegate;->installToDecor(Landroid/view/Window;)V

    .line 301
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_4

    .line 302
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 303
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getTranslucentStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 307
    :cond_4
    iget-boolean v1, p0, Lmiuix/appcompat/app/AppDelegate;->mHasActionBar:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_a

    .line 308
    sget v3, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 309
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mOverlayActionBar:Z

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 310
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v3, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 311
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 317
    iget-boolean v1, p0, Lmiuix/appcompat/app/AppDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_5

    .line 318
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 322
    :cond_5
    sget v1, Lmiuix/appcompat/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/AppDelegate;->mImmersionLayoutResourceId:I

    .line 323
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isImmersionMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v3, p0, Lmiuix/appcompat/app/AppDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v1, v3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initImmersionMore(ILmiuix/appcompat/app/ActionBarDelegateImpl;)V

    .line 329
    :cond_6
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 330
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setDisplayOptions(I)V

    :cond_7
    const-string v1, "splitActionBarWhenNarrow"

    .line 335
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 339
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_0

    .line 341
    :cond_8
    sget v3, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_9

    .line 345
    iget-object v5, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v3, v1, v5}, Lmiuix/appcompat/app/AppDelegate;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 348
    :cond_9
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 351
    :cond_a
    sget v1, Lmiuix/appcompat/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 352
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->setImmersionMenuEnabled(Z)V

    .line 355
    :cond_b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 282
    :cond_c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a miui theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private installToDecor(Landroid/view/Window;)V
    .locals 7

    .line 483
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/FloatingHelperFactory;->get(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    .line 484
    iput-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 486
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->getDecorViewLayoutRes(Landroid/view/Window;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 487
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v2, :cond_1

    .line 488
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result v2

    iput-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 489
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 490
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-virtual {v2, v0, v3}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->replaceSubDecor(Landroid/view/View;Z)Landroid/view/ViewGroup;

    move-result-object v0

    .line 491
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    .line 492
    iget-boolean v2, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 495
    :cond_1
    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 496
    instance-of v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const v4, 0x1020002

    if-eqz v3, :cond_3

    .line 497
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 498
    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v2, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 499
    invoke-virtual {p1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 501
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    .line 502
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 503
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 504
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 507
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setId(I)V

    .line 508
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 510
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 511
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 515
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 517
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_4

    .line 518
    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    .line 520
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz p1, :cond_5

    .line 521
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->init(Landroid/view/View;Z)V

    :cond_5
    return-void
.end method

.method private isSystemProcess()Z
    .locals 2

    const-string v0, "android"

    .line 565
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isWindowActionBarEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 569
    sget v0, Lmiuix/appcompat/R$attr;->windowActionBar:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method private notifyFloatWindowModeChanged(Z)V
    .locals 1

    .line 434
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanged(Z)V

    return-void
.end method

.method private setFloatingWindowMode(ZZZ)V
    .locals 1

    .line 400
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingTheme:Z

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    iget-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p3}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    iget-boolean p3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    if-eq p3, p1, :cond_4

    iget-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingModeCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;

    .line 404
    invoke-interface {p3, p1}, Lmiuix/appcompat/app/floatingactivity/OnFloatingModeCallback;->onFloatingWindowModeChanging(Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 405
    iput-boolean p1, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    .line 407
    iget-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p3, p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->setFloatingWindowMode(Z)V

    .line 408
    iget-boolean p3, p0, Lmiuix/appcompat/app/AppDelegate;->mIsFloatingWindow:Z

    invoke-direct {p0, p3}, Lmiuix/appcompat/app/AppDelegate;->updateSystemUiStateInFloatingTheme(Z)V

    .line 410
    iget-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p3, :cond_2

    .line 411
    iget-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    invoke-virtual {p3}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p1, :cond_1

    const/4 v0, -0x2

    .line 413
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 414
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 416
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 417
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 423
    :cond_2
    iget-object p3, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p3, :cond_3

    .line 424
    invoke-virtual {p3, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onFloatingModeChanged(Z)V

    :cond_3
    if-eqz p2, :cond_4

    .line 428
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->notifyFloatWindowModeChanged(Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private shouldShowFloatingActivityTabletMode()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSystemUiStateInFloatingTheme(Z)V
    .locals 3

    .line 378
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 380
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 382
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 384
    invoke-virtual {v0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 386
    invoke-virtual {v0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_1

    .line 389
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-nez p1, :cond_2

    or-int/lit16 p1, v1, 0x400

    goto :goto_0

    :cond_2
    and-int/lit16 p1, v1, -0x401

    .line 395
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 464
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 465
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 467
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 3

    .line 148
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 151
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public executeCloseEnterAnimation()V
    .locals 1

    .line 657
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->executeCloseEnterAnimation()V

    :cond_0
    return-void
.end method

.method public executeOpenEnterAnimation()V
    .locals 1

    .line 645
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->executeOpenEnterAnimation()V

    :cond_0
    return-void
.end method

.method public executeOpenExitAnimation()V
    .locals 1

    .line 651
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->executeOpenExitAnimation()V

    :cond_0
    return-void
.end method

.method public getExtraHorizontalPaddingLevel()I
    .locals 1

    .line 780
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getExtraHorizontalPaddingLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFloatingBrightPanel()Landroid/view/View;
    .locals 1

    .line 371
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 160
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public hideFloatingBrightPanel()V
    .locals 1

    .line 633
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingBrightPanel()V

    :cond_0
    return-void
.end method

.method public hideFloatingDimBackground()V
    .locals 1

    .line 627
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->hideFloatingDimBackground()V

    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 735
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isInFloatingWindowMode()Z
    .locals 1

    .line 367
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->shouldShowFloatingActivityTabletMode()Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    .line 762
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method onBackPressed()V
    .locals 1

    .line 669
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->collapseActionView()V

    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 683
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 704
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 705
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isInFloatingWindowMode()Z

    move-result v0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lmiuix/appcompat/app/AppDelegate;->setFloatingWindowMode(ZZZ)V

    .line 706
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    const/16 p1, 0x80

    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 84
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 90
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "miui.extra.window.padding.level"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_0
    move v1, v2

    .line 95
    :goto_1
    :try_start_1
    iget-object v3, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 96
    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 95
    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 99
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_1

    .line 101
    iget-object p1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "miui.extra.window.padding.level"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v0, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontal:I

    invoke-static {p1, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    .line 107
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v1, Lmiuix/appcompat/R$attr;->windowExtraPaddingHorizontalEnable:I

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    .line 110
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingLevel(I)V

    .line 111
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method protected onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 588
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 4

    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 192
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 195
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 198
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppDelegate;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 202
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 204
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v1, v3, p1}, Lmiuix/appcompat/app/ActivityCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_4

    .line 209
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 211
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v1, v3, v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 219
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_1

    .line 222
    :cond_5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    :cond_6
    :goto_1
    return-object v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ActivityCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    .line 243
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_3

    .line 244
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 245
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 247
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getParent()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    .line 248
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->onNavigateUp()Z

    move-result p1

    goto :goto_0

    .line 250
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_3

    .line 254
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_3
    return v0
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 752
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPostResume()V
    .locals 2

    .line 177
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onPostResume()V

    .line 179
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 181
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 593
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/ActivityCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 726
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    const-string v0, "miuix:ActionBar"

    .line 727
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 729
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 710
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ActivityCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 712
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 714
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onSaveInstanceState(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 717
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 718
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 719
    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarContainer:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v1, "miuix:ActionBar"

    .line 720
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 165
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActivityCallback:Lmiuix/appcompat/app/ActivityCallback;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActivityCallback;->onStop()V

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->dismissImmersionMenu(Z)V

    .line 169
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 770
    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public setContentView(I)V
    .locals 2

    .line 438
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 441
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 443
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 445
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 449
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AppDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 453
    iget-boolean v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    .line 454
    invoke-direct {p0}, Lmiuix/appcompat/app/AppDelegate;->installSubDecor()V

    .line 456
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 458
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/app/AppDelegate;->mAppCompatWindowCallback:Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->getWrapped()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 1

    .line 787
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingEnable(Z)V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .locals 1

    .line 774
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingLevel(I)V

    :cond_0
    return-void
.end method

.method public shouldDelegateActivityFinish()Z
    .locals 1

    .line 696
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->delegateFinishFloatingActivityInternal()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showFloatingBrightPanel()V
    .locals 1

    .line 639
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mFloatingWindowHelper:Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->showFloatingBrightPanel()V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 740
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppDelegate;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 743
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate;->mSubDecor:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
