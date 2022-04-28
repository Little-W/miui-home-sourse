.class public Lmiuix/appcompat/app/ListFragment;
.super Landroidx/fragment/app/ListFragment;
.source "ListFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;


# instance fields
.field private mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 30
    iput-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 128
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 88
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 222
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 67
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 68
    instance-of p2, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz p2, :cond_1

    .line 70
    iget-object p2, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    const-string p3, "splitActionBarWhenNarrow"

    invoke-virtual {p2}, Lmiuix/appcompat/app/FragmentDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 78
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 79
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    move p3, v0

    .line 81
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    move-object v1, p1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p3, p2, v1}, Lmiuix/appcompat/app/FragmentDelegate;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 366
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDestroy()V

    .line 368
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .line 314
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 315
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 318
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ListFragment;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 299
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    if-nez p1, :cond_0

    .line 244
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->onPostResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onStop()V

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->onStop()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->setHasOptionsMenu(Z)V

    .line 134
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 135
    iput-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 136
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->setMenuVisibility(Z)V

    .line 145
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 146
    iput-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 147
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
