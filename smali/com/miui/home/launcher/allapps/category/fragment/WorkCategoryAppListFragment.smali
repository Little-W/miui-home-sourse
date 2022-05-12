.class public Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.source "WorkCategoryAppListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;-><init>()V

    return-void
.end method

.method private shouldShowWorkFooter()Z
    .locals 2

    .line 39
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 40
    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->hasShortcutHostPermission()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v1, "android.permission.MODIFY_QUIET_MODE"

    .line 41
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    .line 20
    sget-object p1, Lcom/miui/home/launcher/allapps/AllAppsStore;->WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    return-object p1
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0068

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    const v0, 0x7f0a02f3

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->addSpringView(I)V

    const p2, 0x7f0a02f4

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->shouldShowWorkFooter()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method
