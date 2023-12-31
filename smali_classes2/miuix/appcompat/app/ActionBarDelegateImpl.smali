.class public abstract Lmiuix/appcompat/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source "ActionBarDelegateImpl.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBarDelegate;
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field protected mActionBar:Lmiuix/appcompat/app/ActionBar;

.field protected mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field protected mActionMode:Landroid/view/ActionMode;

.field final mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field protected mFeatureIndeterminateProgress:Z

.field protected mFeatureProgress:Z

.field mHasActionBar:Z

.field private mHasAddSplitActionBar:Z

.field protected mImmersionLayoutResourceId:I

.field private mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mImmersionMenuEnabled:Z

.field protected mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

.field mOverlayActionBar:Z

.field protected mSubDecorInstalled:Z

.field private mTranslucentStatus:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 76
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 79
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 404
    sget p0, Lmiuix/appcompat/R$id;->content_mask_vs:I

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 409
    :cond_0
    sget p0, Lmiuix/appcompat/R$id;->content_mask:I

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 411
    :goto_0
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setContentMask(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 2

    .line 363
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasAddSplitActionBar:Z

    .line 367
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar_vs:I

    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    goto :goto_0

    .line 372
    :cond_1
    sget v0, Lmiuix/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    :goto_0
    if-eqz v0, :cond_2

    .line 375
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 376
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 377
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 378
    invoke-virtual {p3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 379
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addContentMask(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 382
    :cond_2
    sget p0, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 383
    sget v1, Lmiuix/appcompat/R$id;->action_context_bar_vs:I

    invoke-virtual {p3, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 386
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    goto :goto_1

    .line 388
    :cond_3
    sget v1, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p3, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    :goto_1
    if-eqz v1, :cond_4

    .line 392
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 393
    invoke-virtual {p3, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    if-eqz v0, :cond_4

    .line 395
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 396
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 397
    invoke-virtual {v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_4
    return-void
.end method

.method protected createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 2

    .line 256
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .locals 0

    .line 351
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    if-eqz p0, :cond_0

    .line 352
    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public final getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 1

    .line 86
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 95
    :cond_2
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object p0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .line 134
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 138
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    .line 146
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 99
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 107
    :cond_1
    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public getTranslucentStatus()I
    .locals 0

    .line 290
    iget p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    return p0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 121
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 122
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 126
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' not in manifest"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ActionBarDelegate"

    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isImmersionMenuEnabled()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 263
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->closeOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected abstract onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
.end method

.method public onMenuModeChange(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->reopenMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPostResume()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected abstract onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 163
    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    if-nez p2, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected reopenMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_1

    .line 223
    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 224
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showOverflowMenu()Z

    :cond_2
    :goto_1
    return-void

    .line 232
    :cond_3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 195
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->requestWindowFeature(I)Z

    move-result p0

    return p0

    .line 186
    :cond_0
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    return v1

    .line 183
    :cond_1
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    return v1

    .line 192
    :cond_2
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    return v1

    .line 189
    :cond_3
    iput-boolean v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    return v1
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 294
    iput-boolean p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    .line 295
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showImmersionMore()Z

    move-result p1

    if-nez p1, :cond_1

    .line 298
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initImmersionMore(ILmiuix/appcompat/app/ActionBarDelegateImpl;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideImmersionMore()Z

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method protected setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 250
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0, p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    :cond_1
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 2

    .line 277
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    move p1, v0

    .line 282
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    if-eq v0, p1, :cond_1

    .line 283
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iput p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    :cond_1
    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "ActionBarDelegate"

    const-string p1, "Try to show immersion menu when immersion menu disabled"

    .line 326
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 334
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 336
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreateImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 338
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez v0, :cond_2

    .line 340
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;-><init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mImmersionMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    .line 344
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 345
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_3
    return-void

    .line 331
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must specify a valid anchor view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
