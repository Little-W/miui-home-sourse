.class public Lcom/miui/home/launcher/allapps/TotalGridAdapter;
.super Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.source "TotalGridAdapter.java"


# instance fields
.field private mBindAllAppsRunnable:Ljava/lang/Runnable;

.field private mIconNumber:Ljava/lang/Integer;

.field private notIconNumber:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    const/4 p1, 0x0

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mIconNumber:Ljava/lang/Integer;

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    .line 20
    new-instance p1, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$ldAYuWsLvI-1ijCem9ancTIAIuY;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$ldAYuWsLvI-1ijCem9ancTIAIuY;-><init>(Lcom/miui/home/launcher/allapps/TotalGridAdapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mBindAllAppsRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public afterNotifyData()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->afterNotifyData()V

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->bindAllAppsForColorFilter()V

    :cond_0
    return-void
.end method

.method public beforeNotifyData()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->beforeNotifyData()V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mNeedReverse:Z

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public bindAllAppsForColorFilter()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mBindAllAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mBindAllAppsRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$0$TotalGridAdapter(Lcom/miui/home/launcher/AppInfo;ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mIconNumber:Ljava/lang/Integer;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/AppInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x0

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/AppInfo;->setIconColorType(Ljava/lang/Integer;)V

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mIconNumber:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mIconNumber:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mIconNumber:Ljava/lang/Integer;

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mIconNumber:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    add-int/2addr p1, p0

    if-ne p1, p2, :cond_0

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->updateAppsColorInfo(Z)V

    .line 42
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$new$1$TotalGridAdapter()V
    .locals 8

    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mIconNumber:Ljava/lang/Integer;

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->getItemCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 25
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 26
    iget v3, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 30
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 31
    iget v3, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    goto :goto_1

    .line 34
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v5

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;

    invoke-direct {v7, p0, v3, v1}, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;-><init>(Lcom/miui/home/launcher/allapps/TotalGridAdapter;Lcom/miui/home/launcher/AppInfo;I)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/AppInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_2
    iget p0, p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->notIconNumber:I

    if-ne v1, p0, :cond_3

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->updateAppsColorInfo(Z)V

    :cond_3
    return-void
.end method
