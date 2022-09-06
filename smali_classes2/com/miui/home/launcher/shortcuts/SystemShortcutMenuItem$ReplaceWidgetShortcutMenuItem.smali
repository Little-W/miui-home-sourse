.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplaceWidgetShortcutMenuItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 412
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 413
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f1102c8

    .line 414
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f080691

    .line 415
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$getOnClickListener$0(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;Landroid/view/View;)V
    .locals 2

    .line 426
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 432
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    const-string v1, "replace"

    .line 433
    invoke-static {v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$100(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    .line 435
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v1, :cond_2

    return-void

    .line 437
    :cond_2
    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 438
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->openReplacePage(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    .line 439
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickWidgetMenuItem(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 425
    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem$jGHDfJOxVnYaDXdf3pkTsAdtILY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem$jGHDfJOxVnYaDXdf3pkTsAdtILY;-><init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;)V

    return-object v0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 420
    invoke-static {p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->supportReplace(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method
