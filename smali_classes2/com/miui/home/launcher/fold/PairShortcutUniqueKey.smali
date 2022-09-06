.class public Lcom/miui/home/launcher/fold/PairShortcutUniqueKey;
.super Lcom/miui/home/launcher/fold/ShortcutUniqueKey;
.source "PairShortcutUniqueKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/fold/ShortcutUniqueKey;-><init>()V

    return-void
.end method

.method private obtainPairShortcutKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "app_pair_package_name"

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/fold/PairShortcutUniqueKey;->obtainPairShortcutKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/fold/PairShortcutUniqueKey;->obtainPairShortcutKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/fold/ShortcutUniqueKey;->makeUniqueKey(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
