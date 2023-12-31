.class public Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;
.super Ljava/lang/Object;
.source "DefaultLauncherAppsProvider.java"

# interfaces
.implements Lcom/miui/home/launcher/model/LauncherAppsProvider;


# instance fields
.field private final mAllApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private final mQuietMode:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    .line 29
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mQuietMode:Landroid/util/LongSparseArray;

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    return-void
.end method


# virtual methods
.method public getAllAppsMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAllComponentKey()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getAllLauncherActivityInfo()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mQuietMode:Landroid/util/LongSparseArray;

    iget-object p0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public loadApps()V
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mQuietMode:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    invoke-virtual {v1}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 45
    iget-object v3, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    invoke-virtual {v3, v2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    .line 46
    iget-object v5, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mQuietMode:Landroid/util/LongSparseArray;

    iget-object v6, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    invoke-virtual {v6, v2}, Lcom/miui/home/library/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 47
    iget-object v3, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 49
    invoke-static {v4}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;->from(Landroid/content/pm/LauncherActivityInfo;)Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    invoke-static {v4}, Lcom/miui/home/launcher/util/ComponentKey;->from(Landroid/content/pm/LauncherActivityInfo;)Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 51
    iget-object v5, p0, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;->mAllApps:Ljava/util/HashMap;

    new-instance v6, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method
