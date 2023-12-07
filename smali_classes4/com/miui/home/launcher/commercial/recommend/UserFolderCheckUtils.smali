.class public Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;
.super Ljava/lang/Object;
.source "UserFolderCheckUtils.java"


# static fields
.field private static isChecking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static checkForGameFolder(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    if-eqz p1, :cond_1

    .line 54
    sget-boolean v0, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->isChecking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->isChecking:Z

    .line 56
    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->startToCheck(Landroid/content/Context;Ljava/util/HashMap;)V

    const/4 p0, 0x0

    .line 57
    sput-boolean p0, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->isChecking:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static filterOutSystemCreatedFolders(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 72
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-wide v2, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static handleCheckResult(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    const-string v1, "user_game_folder"

    .line 84
    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/FolderInfo;->setLabelAndUpdateDb(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static hasGameFolder(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)Z"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 43
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isGamesFolder()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isUserGameFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x3

    const-string v0, "check_user_folder_count"

    .line 45
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static isCheckCountAndTimeAvailable(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "check_user_folder_count"

    .line 37
    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "last_check_user_folder_time"

    invoke-static {p0, v5, v3, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x240c8400

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static needToCheckIsGameFolder(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)Z"
        }
    .end annotation

    .line 30
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->isCheckCountAndTimeAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->hasGameFolder(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static startToCheck(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "check_user_folder_count"

    .line 61
    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 62
    invoke-static {p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->filterOutSystemCreatedFolders(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    .line 63
    invoke-static {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v2, :cond_0

    move v0, v5

    :cond_0
    invoke-virtual {v4, v3, v0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getGameFolders(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    add-int/2addr v2, v5

    .line 64
    invoke-static {p0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_check_user_folder_time"

    invoke-static {p0, v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 66
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->handleCheckResult(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method
