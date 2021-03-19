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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    .line 18
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ThirdApplicationConfig;->setDeleteTip(Ljava/lang/String;)V

    return-void
.end method

.method private setDeleteTip(Ljava/lang/String;)V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "app_description_title"

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const-string v2, "app_description_content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 54
    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 55
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
.method public getDeleteTip()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mDeleteTip:Landroid/util/Pair;

    return-object v0
.end method

.method public getHiddenAppNotificationsItem()Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "disable_notifications_when_app_hide"

    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getHideAppItem()Z
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "app_hide_enable"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getProhibitHiddenActivities()[Ljava/lang/String;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/ThirdApplicationConfig;->mMetaDate:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "prohibit_hide_activities"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ";"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method
