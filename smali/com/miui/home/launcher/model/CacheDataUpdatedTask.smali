.class public Lcom/miui/home/launcher/model/CacheDataUpdatedTask;
.super Lcom/miui/home/launcher/model/BaseModelUpdateTask;
.source "CacheDataUpdatedTask.java"


# instance fields
.field private final mPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 42
    iput-object p2, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    return-void
.end method

.method private updateApps(Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 4

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p2}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 64
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->bindUpdatedApps(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private updateShortcuts(Lcom/miui/home/launcher/IconCache;)V
    .locals 5

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 81
    iget-object v3, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 83
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    .line 85
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;)V
    .locals 3

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->updateApps(Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AllAppsList;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/model/CacheDataUpdatedTask;->updateShortcuts(Lcom/miui/home/launcher/IconCache;)V

    return-void
.end method
