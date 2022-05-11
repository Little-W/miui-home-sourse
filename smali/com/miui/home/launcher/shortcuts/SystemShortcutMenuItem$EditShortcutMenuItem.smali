.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditShortcutMenuItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 260
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f1003f8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f08057d

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$getOnClickListener$0(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;Landroid/view/View;)V
    .locals 2

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 280
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 281
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->openEditPage(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    const-string v1, "edit"

    .line 282
    invoke-static {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    .line 283
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_2

    .line 284
    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickWidgetMenuItem(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 273
    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$EditShortcutMenuItem$fsXdU2fxPH-qovPJhW55vALxgfA;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$EditShortcutMenuItem$fsXdU2fxPH-qovPJhW55vALxgfA;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 267
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 268
    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->hasEditEntry(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method
