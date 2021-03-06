.class public Lcom/miui/home/launcher/SearchBarSettingsWindow;
.super Landroid/widget/PopupWindow;
.source "SearchBarSettingsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarSettingsWindow$_lancet;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getSettingsWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)Lcom/miui/home/launcher/SearchBarSettingsWindow;
    .locals 4

    .line 25
    new-instance v0, Lcom/miui/home/launcher/SearchBarSettingsWindow;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;-><init>()V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00b0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0175

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setContentView(Landroid/view/View;)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, -0x1

    .line 30
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setWidth(I)V

    const/4 p1, -0x2

    .line 31
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setFocusable(Z)V

    .line 33
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f110114

    .line 34
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setAnimationStyle(I)V

    .line 35
    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->setAnchor(Landroid/view/View;)V

    return-object v0
.end method

.method private getYOffset()I
    .locals 3

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mAnchor:Landroid/view/View;

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private launcherGlobalSearchSetting()V
    .locals 3

    .line 68
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.SEARCH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.quicksearchbox"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Launcher.SearchBar"

    const-string v1, "Global search activity not found"

    .line 73
    invoke-static {v0, v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setAnchor(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mAnchor:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->launcherGlobalSearchSetting()V

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->dismiss()V

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSettingClick(I)V

    return-void
.end method

.method show()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarSettingsWindow;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getYOffset()I

    move-result v1

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
