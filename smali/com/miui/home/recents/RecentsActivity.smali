.class public Lcom/miui/home/recents/RecentsActivity;
.super Lcom/miui/home/launcher/BaseActivity;
.source "RecentsActivity.java"


# instance fields
.field recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

.field recentsView:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    return-void
.end method

.method private setSystemUiVisibility()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/16 v1, 0x304

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

    .line 51
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    return-object v0
.end method

.method protected initViews()V
    .locals 1

    const v0, 0x7f0d00a5

    .line 33
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->setContentView(I)V

    const v0, 0x7f0a0149

    .line 34
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const v0, 0x7f0a014f

    .line 35
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivity;->initViews()V

    .line 22
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityCreate(Lcom/miui/home/recents/RecentsActivity;)V

    .line 23
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsActivity;->setSystemUiVisibility()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDestroy()V

    .line 47
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityDestroy(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 41
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityNewIntent(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method
