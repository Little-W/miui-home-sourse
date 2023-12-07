.class public Lcom/miui/home/launcher/hybrid/HybridController;
.super Ljava/lang/Object;
.source "HybridController.java"


# static fields
.field private static sViewTrackedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hybrid/HybridController;->sViewTrackedSet:Ljava/util/HashSet;

    return-void
.end method

.method public static clearTrackedSet()V
    .locals 1

    .line 90
    sget-object v0, Lcom/miui/home/launcher/hybrid/HybridController;->sViewTrackedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private static getHybridTrackStr(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;
    .locals 4

    .line 24
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->isValidateShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 27
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hybrid_pref_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static isHybridApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->isQuickApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isShowHybridApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.miui.hybrid"

    .line 98
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 101
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.miui.hybrid.action.APP_DETAIL_MANAGER"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isValidateShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 59
    iget v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 35
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->isValidateShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->getHybridTrackStr(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hybrid_pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static saveHybridTrackStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hybrid_pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trackDelete(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 79
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->isValidateShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->getHybridTrackStr(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->onHybridShortcutRemove(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_1
    return-void
.end method

.method public static trackMoveOutsideFolder(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->isValidateShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->getHybridTrackStr(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->onHybridShortcutMoveOut(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->makeShortcutNotHybrid(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_1
    return-void
.end method

.method public static trackView(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 47
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->isValidateShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {p0}, Lcom/miui/home/launcher/hybrid/HybridController;->getHybridTrackStr(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    .line 52
    sget-object v1, Lcom/miui/home/launcher/hybrid/HybridController;->sViewTrackedSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->onHybridShortcutView(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    sget-object p0, Lcom/miui/home/launcher/hybrid/HybridController;->sViewTrackedSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
