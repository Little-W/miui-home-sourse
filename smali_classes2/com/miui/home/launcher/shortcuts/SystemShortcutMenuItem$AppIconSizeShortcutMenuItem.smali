.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIconSizeShortcutMenuItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 380
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;-><init>()V

    .line 381
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;->setShortTitle(Ljava/lang/CharSequence;)V

    .line 382
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f0806bc

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppIconSizeShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$getOnClickListener$0(Landroid/content/ComponentName;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 409
    invoke-static {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getToastResIdThatNotEditIcon(Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getOnClickListener$1(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Integer;)V
    .locals 2

    .line 411
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    .line 412
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 413
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string p2, "edit_icon"

    .line 416
    invoke-static {p1, p2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    .line 417
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setAnchorInfoForScroll(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 418
    invoke-static {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->goToThemePick(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic lambda$getOnClickListener$2(Landroid/view/View;)V
    .locals 3

    .line 398
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 402
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v1, :cond_1

    return-void

    .line 404
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 408
    :cond_2
    new-instance v2, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$wO0ljkxM4enDpaDp_5v2XvsqtwY;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$wO0ljkxM4enDpaDp_5v2XvsqtwY;-><init>(Landroid/content/ComponentName;)V

    new-instance v1, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$jQgL0qWzgt-INUuTd5RP_4_DUPY;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$jQgL0qWzgt-INUuTd5RP_4_DUPY;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    const/4 p0, 0x0

    invoke-static {v2, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 397
    sget-object p0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$f8CaSSDW1OD-vDMdHn3gfFq_RJU;->INSTANCE:Lcom/miui/home/launcher/shortcuts/-$$Lambda$SystemShortcutMenuItem$AppIconSizeShortcutMenuItem$f8CaSSDW1OD-vDMdHn3gfFq_RJU;

    return-object p0
.end method

.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 387
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 388
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 389
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-static {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->showBigIconEntrance(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 392
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
