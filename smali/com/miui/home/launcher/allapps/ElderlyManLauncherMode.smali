.class public Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;
.super Lcom/miui/home/launcher/allapps/LauncherMode;
.source "ElderlyManLauncherMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;-><init>()V

    return-void
.end method

.method private isQuickCallCellLayoutExist()Z
    .locals 2

    .line 112
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isQuickCallCellLayoutExist()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentDefaultScreenId()J
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;->isQuickCallCellLayoutExist()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public getIconSizeScale()F
    .locals 0

    const p0, 0x3f8ccccd    # 1.1f

    return p0
.end method

.method public getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;
    .locals 0

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;->getInstance()Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;

    move-result-object p0

    return-object p0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 0

    const-string p0, "elderlyMan"

    return-object p0
.end method

.method public getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "notification_bar"

    return-object p0
.end method

.method public getShortcutTitleScale()F
    .locals 0

    const p0, 0x3f99999a    # 1.2f

    return p0
.end method

.method public getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "no_action"

    return-object p0
.end method

.method public getTransformationType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    .line 83
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAutoFillEmptyEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIconPositionFixed(Landroid/view/View;)Z
    .locals 0

    .line 45
    instance-of p0, p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-nez p0, :cond_2

    :cond_0
    instance-of p0, p1, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;

    if-nez p0, :cond_2

    instance-of p0, p1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPersonalAssistantOn(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenCellsLocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportAssistant()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportFeed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
