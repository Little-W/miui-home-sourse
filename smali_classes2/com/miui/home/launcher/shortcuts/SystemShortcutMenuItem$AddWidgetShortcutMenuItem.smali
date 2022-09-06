.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddWidgetShortcutMenuItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 376
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 377
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 378
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 379
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f080687

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$getOnClickListener$0(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;Landroid/view/View;)V
    .locals 3

    .line 391
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 397
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 398
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 399
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->gotoPicker(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v0, v2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$100(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 404
    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickInstallMenuItem(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 390
    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AddWidgetShortcutMenuItem$jI6kvsnKMs6lb6Guv9LG7LSDGrg;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AddWidgetShortcutMenuItem$jI6kvsnKMs6lb6Guv9LG7LSDGrg;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 384
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->hasWidgets(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
