.class public Lcom/miui/home/recents/RecentsActivity;
.super Lcom/miui/home/launcher/BaseActivity;
.source "RecentsActivity.java"


# instance fields
.field recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

.field recentsView:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    return-void
.end method

.method private setSystemUiVisibility()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public getOverviewPanel()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    const v0, 0x7f0d00af

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->setContentView(I)V

    const v0, 0x7f0a014e

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    .line 48
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    const v0, 0x7f0a0154

    .line 49
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivity;->initViews()V

    .line 29
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityCreate(Lcom/miui/home/recents/RecentsActivity;)V

    .line 30
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsActivity;->setSystemUiVisibility()V

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x100

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, -0x80000000

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x1

    .line 35
    invoke-static {p1, v0, v0}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->setExtraFlag(Landroid/view/Window;II)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDestroy()V

    .line 74
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityDestroy(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityNewIntent(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    .line 62
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStop()V

    .line 68
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onExitState()V

    return-void
.end method
