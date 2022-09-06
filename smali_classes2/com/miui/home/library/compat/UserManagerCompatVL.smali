.class Lcom/miui/home/library/compat/UserManagerCompatVL;
.super Lcom/miui/home/library/compat/UserManagerCompat;
.source "UserManagerCompatVL.java"


# instance fields
.field private mIdToUserMap:Lcom/miui/home/library/utils/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/library/utils/LongArrayMap<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field final mUserManager:Landroid/os/UserManager;

.field private mUserToSerialMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUsers:Lcom/miui/home/library/utils/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/library/utils/LongArrayMap<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/miui/home/library/compat/UserManagerCompat;-><init>()V

    const-string v0, "user"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 6

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Lcom/miui/home/library/utils/LongArrayMap;

    invoke-direct {v0}, Lcom/miui/home/library/utils/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUsers:Lcom/miui/home/library/utils/LongArrayMap;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    .line 98
    new-instance v0, Lcom/miui/home/library/utils/LongArrayMap;

    invoke-direct {v0}, Lcom/miui/home/library/utils/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mIdToUserMap:Lcom/miui/home/library/utils/LongArrayMap;

    .line 99
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 102
    iget-object v2, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 103
    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v4

    .line 104
    iget-object v5, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUsers:Lcom/miui/home/library/utils/LongArrayMap;

    invoke-virtual {v5, v2, v3, v1}, Lcom/miui/home/library/utils/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 105
    iget-object v5, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mIdToUserMap:Lcom/miui/home/library/utils/LongArrayMap;

    int-to-long v3, v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/miui/home/library/utils/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    .line 54
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 1

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUsers:Lcom/miui/home/library/utils/LongArrayMap;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUsers:Lcom/miui/home/library/utils/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/library/utils/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    monitor-exit p0

    return-object p1

    .line 64
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUserForUserId(I)Landroid/os/UserHandle;
    .locals 3

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mIdToUserMap:Lcom/miui/home/library/utils/LongArrayMap;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mIdToUserMap:Lcom/miui/home/library/utils/LongArrayMap;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/library/utils/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    monitor-exit p0

    return-object p1

    .line 74
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUsers:Lcom/miui/home/library/utils/LongArrayMap;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserToSerialMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 118
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/miui/home/library/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public requestQuietModeEnabled(Landroid/content/Context;ZLandroid/os/UserHandle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
