.class public Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;
.super Lcom/miui/home/launcher/allapps/LauncherMode;
.source "ElderlyManLauncherMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;-><init>()V

    return-void
.end method

.method private isQuickCallCellLayoutExist()Z
    .locals 3

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isQuickCallCellLayoutExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentDefaultScreenId()J
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;->isQuickCallCellLayoutExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public getIconSizeScale()F
    .locals 1

    const v0, 0x3f8ccccd    # 1.1f

    return v0
.end method

.method public getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;
    .locals 1

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;->getInstance()Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;

    move-result-object v0

    return-object v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    const-string v0, "elderlyMan"

    return-object v0
.end method

.method public getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "notification_bar"

    return-object p1
.end method

.method public getShortcutTitleScale()F
    .locals 1

    const v0, 0x3f99999a    # 1.2f

    return v0
.end method

.method public getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "no_action"

    return-object p1
.end method

.method public getTransformationType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x1

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAutoFillEmptyEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isIconPositionFixed(Landroid/view/View;)Z
    .locals 1

    .line 44
    instance-of v0, p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-nez v0, :cond_2

    :cond_0
    instance-of p1, p1, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isPersonalAssistantOn(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isScreenCellsLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportAssistant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportFeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
