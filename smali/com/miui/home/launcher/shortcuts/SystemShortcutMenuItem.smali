.class public abstract Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;
    }
.end annotation


# static fields
.field private static sAllSystemShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllWidgetShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->analyticalData(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static analyticalData(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 2

    const-string v0, "unknown"

    .line 327
    instance-of v1, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 328
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_0
    invoke-static {v0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createAllSystemShortcutMenuItems()V
    .locals 5

    const/4 v0, 0x5

    .line 59
    new-array v0, v0, [Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;-><init>()V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;-><init>()V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    .line 67
    new-array v0, v3, [Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;-><init>()V

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllWidgetShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public static getAllSystemShortcutMenuItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public static getAllWidgetShortcutMenuItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllWidgetShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public static resetAllSystemShortcutMenuItems()V
    .locals 2

    .line 52
    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 54
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetData()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 39
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setUserHandle(Landroid/os/UserHandle;)V

    .line 41
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setComponentName(Landroid/content/ComponentName;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid()Z

    move-result p1

    return p1
.end method

.method protected resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setUserHandle(Landroid/os/UserHandle;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setComponentName(Landroid/content/ComponentName;)V

    return-void
.end method
