.class public Lcom/miui/home/launcher/SearchBarSettingsWindow;
.super Landroid/widget/PopupWindow;
.source "SearchBarSettingsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    return-void
.end method

.method static getSettingsWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)Lcom/miui/home/launcher/SearchBarSettingsWindow;
    .locals 4

    .line 28
    new-instance v0, Lcom/miui/home/launcher/SearchBarSettingsWindow;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;-><init>()V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00ff

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01c5

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, -0x1

    .line 33
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setWidth(I)V

    const/4 p1, -0x2

    .line 34
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setFocusable(Z)V

    .line 36
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f110166

    .line 37
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setAnimationStyle(I)V

    .line 38
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setAnchor(Landroid/view/View;)V

    return-object v0
.end method

.method private getYOffset()I
    .locals 3

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mAnchor:Landroid/view/View;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070381

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private launcherGlobalBrowserSetting()V
    .locals 3

    .line 98
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.OPEN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.browser"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Launcher.SearchBar"

    const-string v1, "Global search activity not found"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private launcherGlobalSearchSetting()V
    .locals 3

    .line 87
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.quicksearchbox"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Launcher.SearchBar"

    const-string v1, "Global search activity not found"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setAnchor(Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mAnchor:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->getClickTargetUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "mibrowser"

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->isSupportBrowser()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    const-string v1, "mibrowser"

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSettingClick(IILjava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->launcherGlobalBrowserSetting()V

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->dismiss()V

    return-void

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    const-string v1, "qsb"

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSettingClick(IILjava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->launcherGlobalSearchSetting()V

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->dismiss()V

    return-void
.end method

.method show()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getYOffset()I

    move-result v1

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->showAtLocation(Landroid/view/View;III)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 72
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 73
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 74
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
