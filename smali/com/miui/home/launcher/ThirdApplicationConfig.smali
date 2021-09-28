.class public Lcom/miui/home/launcher/ThirdApplicationConfig;
.super Ljava/lang/Object;
.source "ThirdApplicationConfig.java"


# instance fields
.field protected mDeleteTip:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaDate:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    .line 29
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ThirdApplicationConfig;->setDeleteTip(Ljava/lang/String;)V

    return-void
.end method

.method private setDeleteTip(Ljava/lang/String;)V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "app_description_title"

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v2, "app_description_content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 96
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v1, "app_uninstall_description_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v2, "app_uninstall_description_content"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v1, "app_remove_icon_description_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v2, "app_remove_icon_description_content"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 76
    :cond_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    return-object p1

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 83
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    return-object p1
.end method

.method public getGlobalHideAppItem()Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "global_app_hide_enable"

    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getHiddenAppNotificationsItem()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "disable_notifications_when_app_hide"

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getHideAppItem()Z
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "app_hide_enable"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getProhibitHiddenActivities()[Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "prohibit_hide_activities"

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ";"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method
