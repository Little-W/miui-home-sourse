.class public Lmiuix/appcompat/app/FragmentDelegate;
.super Lmiuix/appcompat/app/ActionBarDelegateImpl;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;
    }
.end annotation


# instance fields
.field private mExtraPaddingLevel:I

.field private mExtraThemeRes:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mInvalidateMenuFlags:B

.field private mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mSubDecor:Landroid/view/View;

.field private mThemedContext:Landroid/content/Context;

.field private final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraPaddingLevel:I

    .line 60
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$1;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    .line 91
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/FragmentDelegate;)B
    .locals 0

    .line 39
    iget-byte p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/app/FragmentDelegate;B)B
    .locals 0

    .line 39
    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return p1
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$202(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 39
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method private getInvalidateMenuRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 302
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;-><init>(Lmiuix/appcompat/app/FragmentDelegate;)V

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 305
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public createActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 2

    .line 96
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 3

    .line 335
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 337
    iget v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v0, :cond_0

    .line 338
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 341
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 240
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object v0
.end method

.method final installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecorInstalled:Z

    if-nez v0, :cond_6

    .line 145
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getExtraHorizontalPaddingLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraHorizontalPaddingLevel(I)V

    .line 148
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecorInstalled:Z

    .line 151
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_screen_action_bar:I

    .line 152
    invoke-virtual {p3, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 153
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 154
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 155
    iget-boolean p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mOverlayActionBar:Z

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 157
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getTranslucentStatus()I

    move-result p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 159
    iget p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz p3, :cond_1

    const p3, 0x1010054

    .line 160
    invoke-static {p1, p3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_1
    sget p3, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 164
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p3, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 171
    iget-boolean p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz p3, :cond_2

    .line 172
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initIndeterminateProgress()V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 177
    iget-object p3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {p3, v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initImmersionMore(ILmiuix/appcompat/app/ActionBarDelegateImpl;)V

    :cond_3
    const-string p3, "splitActionBarWhenNarrow"

    .line 181
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    goto :goto_0

    .line 188
    :cond_4
    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 189
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 190
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v1

    :goto_0
    if-eqz p1, :cond_5

    .line 194
    invoke-virtual {p0, p1, p3, p2}, Lmiuix/appcompat/app/FragmentDelegate;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 197
    :cond_5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 198
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 199
    iput-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    goto :goto_1

    .line 200
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    .line 201
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_7

    .line 203
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 3

    .line 294
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-byte v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    .line 296
    iput-byte v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 297
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getInvalidateMenuRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method protected onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .line 346
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 251
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 104
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 110
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 112
    :cond_0
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    .line 113
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 116
    :cond_1
    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowTranslucentStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->setTranslucentStatus(I)V

    .line 118
    sget v1, Lmiuix/appcompat/R$styleable;->Window_immersionMenuEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    .line 119
    sget v1, Lmiuix/appcompat/R$styleable;->Window_immersionMenuLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 123
    iget-boolean v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mHasActionBar:Z

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lmiuix/appcompat/app/FragmentDelegate;->installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 127
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 128
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eq p3, p2, :cond_4

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 140
    :cond_4
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object p1

    .line 106
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const/4 v1, 0x0

    .line 372
    iput-boolean v1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecorInstalled:Z

    .line 373
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 374
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 375
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 263
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    .line 289
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .line 355
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 281
    iget-object p2, p0, Lmiuix/appcompat/app/FragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast p2, Lmiuix/appcompat/app/IFragment;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lmiuix/appcompat/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .locals 1

    .line 209
    invoke-static {p1}, Lmiuix/appcompat/internal/util/LayoutUIUtils;->isLevelValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraPaddingLevel:I

    if-eq v0, p1, :cond_0

    .line 211
    iput p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraPaddingLevel:I

    .line 212
    iget-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mExtraPaddingLevel:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setExtraHorizontalPaddingLevel(I)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 315
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/FragmentDelegate;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateOptionsMenu(I)V
    .locals 1

    .line 309
    iget-byte v0, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return-void
.end method
