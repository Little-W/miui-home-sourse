.class public Lio/branch/search/s3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/h2$e;
.implements Lio/branch/search/h2$f;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lio/branch/search/n4;

.field public c:Lio/branch/search/r3;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/q3;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/branch/search/q3;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/i3;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Lio/branch/search/n5;

.field public final i:Lio/branch/search/l;

.field public j:Lio/branch/search/e2;


# direct methods
.method public constructor <init>(Lio/branch/search/l;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/n4;

    const-string v1, "BranchSQLiteManager"

    invoke-direct {v0, v1}, Lio/branch/search/n4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/s3;->e:Ljava/util/Map;

    new-instance v0, Lio/branch/search/n5;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/branch/search/n5$c;

    new-instance v2, Lio/branch/search/n5$b;

    invoke-direct {v2}, Lio/branch/search/n5$b;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lio/branch/search/n5$a;

    invoke-direct {v2}, Lio/branch/search/n5$a;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lio/branch/search/n5;-><init>([Lio/branch/search/n5$c;)V

    iput-object v0, p0, Lio/branch/search/s3;->h:Lio/branch/search/n5;

    iput-object p1, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lio/branch/search/a5$a;->d:Lio/branch/search/a5$a;

    invoke-static {p1, v0}, Lio/branch/search/a5;->a(Landroid/content/Context;Lio/branch/search/a5$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/s3;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/s3;Lio/branch/search/q3;Ljava/util/List;Lio/branch/search/f2;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/s3;->a(Lio/branch/search/q3;Ljava/util/List;Lio/branch/search/f2;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    invoke-virtual {p0}, Lio/branch/search/n4;->b()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Lio/branch/search/z$a;)Lio/branch/search/i3;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-long v14, v6

    iget-object v6, v0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v6}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v6

    invoke-virtual {v6}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lio/branch/search/s3;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v4, v5, v1}, Lio/branch/search/s3;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    iget-object v0, v0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->b()Lio/branch/search/IBranchAppDataOverrideHandler;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/z$a;->a()Landroid/os/UserHandle;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lio/branch/search/IBranchAppDataOverrideHandler;->fetchOverride(Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/AppDataOverride;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/branch/search/AppDataOverride;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object v12, v4

    :goto_1
    new-instance v0, Lio/branch/search/i3;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/z$a;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    sub-long v4, v2, v14

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v2

    :goto_2
    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lio/branch/search/i3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/i3;
    .locals 2

    invoke-static {p1, p3}, Lio/branch/search/z;->a(Landroid/content/Context;Landroid/os/UserHandle;)Lio/branch/search/z$a;

    move-result-object v0

    const-string v1, "launcherapps"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/s3;->a(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Lio/branch/search/z$a;)Lio/branch/search/i3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    invoke-static {p3}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :try_start_0
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p0, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/m0;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchLocalSearchRequest;",
            "Lio/branch/search/m0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v1}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/j3;->c()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/i3;

    iget-object v5, v4, Lio/branch/search/i3;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v6}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v4, Lio/branch/search/i3;->a:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lio/branch/search/Util;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lio/branch/search/i3;->d:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lio/branch/search/i3;->c:Ljava/lang/String;

    :goto_1
    iget-object v6, p0, Lio/branch/search/s3;->h:Lio/branch/search/n5;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lio/branch/search/n5;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lio/branch/search/i3;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p1}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/branch/search/m3;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {p0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v2

    const-string v6, "search"

    const-string v7, "search"

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lio/branch/search/m4;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lio/branch/search/m0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/IBranchShortcutHandler;Landroid/content/Context;Lio/branch/search/i3;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/IBranchShortcutHandler;",
            "Landroid/content/Context;",
            "Lio/branch/search/i3;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/os/UserManager;

    invoke-virtual {p2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    new-instance v0, Lio/branch/search/BranchShortcutList;

    iget-object v1, p3, Lio/branch/search/i3;->a:Ljava/lang/String;

    iget-object v2, p3, Lio/branch/search/i3;->c:Ljava/lang/String;

    iget-object v3, p3, Lio/branch/search/i3;->b:Ljava/lang/Long;

    invoke-direct {v0, v1, v2, v3}, Lio/branch/search/BranchShortcutList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p3, Lio/branch/search/i3;->a:Ljava/lang/String;

    iget-object p3, p3, Lio/branch/search/i3;->b:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, p2, v1, p0, v0}, Lio/branch/search/IBranchShortcutHandler;->loadShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/BranchShortcutList;)V

    invoke-virtual {v0}, Lio/branch/search/BranchShortcutList;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lio/branch/search/q3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s3;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/s3;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/branch/search/s3;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_sqlite_local_replica_whitelists_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/branch/search/q3;->valueOf(Ljava/lang/String;)Lio/branch/search/q3;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/branch/search/s3;->e:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public a(I)V
    .locals 9

    iget-object v0, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/branch/search/z$b;

    invoke-direct {v1, v0}, Lio/branch/search/z$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lio/branch/search/z$b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v1}, Lio/branch/search/z$b;->c()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tasked to clear packages for stale user with id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", however, that user is still valid!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SQLiteManager.removePackagesForStaleUser"

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v0}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/branch/search/j3;->a(J)V

    iget-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v0}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lio/branch/search/m3;->a(J)V

    iget-object v0, p0, Lio/branch/search/s3;->j:Lio/branch/search/e2;

    invoke-interface {v0}, Lio/branch/search/e2;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/f2;

    const/4 v2, 0x2

    const-string v3, "local_packages"

    const-string v4, "local_entities"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Lio/branch/search/f2;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/branch/search/s3;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    aget-object v7, v3, v6

    if-eqz v5, :cond_3

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, p1, v4}, Lio/branch/search/f2;->a(ILjava/util/List;)Ljava/lang/Exception;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    const-string v3, "SQLiteManager.removeDataForStaleUser"

    invoke-virtual {v2, v3, v1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(Landroid/content/Context;Lio/branch/search/e2;)V
    .locals 3

    new-instance v0, Lio/branch/search/r3;

    invoke-direct {v0, p1}, Lio/branch/search/r3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    iput-object p2, p0, Lio/branch/search/s3;->j:Lio/branch/search/e2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->a(Ljava/lang/Runnable;)V

    new-instance p1, Lio/branch/search/u3;

    iget-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    iget-object v0, v0, Lio/branch/search/p3;->a:Landroidx/room/RoomDatabase;

    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    invoke-direct {p1, v0, v1, v2}, Lio/branch/search/u3;-><init>(Landroidx/room/RoomDatabase;Lkotlinx/coroutines/CoroutineScope;Lio/branch/search/n4;)V

    iget-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v0}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/search/j3;->a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/s3;->f:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v0}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/search/m3;->a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/s3;->g:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->c:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->f:Landroidx/lifecycle/LiveData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->d:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->g:Landroidx/lifecycle/LiveData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->h:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->c()Lio/branch/search/k4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/k4;->a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->l:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->d()Lio/branch/search/x3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/x3;->a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->g:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->b()Lio/branch/search/h4;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/h4;->a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->f:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->a()Lio/branch/search/z3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/z3;->a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->e:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->a()Lio/branch/search/z3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/z3;->e(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->i:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->a()Lio/branch/search/z3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/z3;->d(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->k:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->a()Lio/branch/search/z3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/z3;->b(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/q3;->j:Lio/branch/search/q3;

    iget-object v2, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v2}, Lio/branch/search/r3;->a()Lio/branch/search/z3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/z3;->c(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lio/branch/search/s3$a;

    invoke-direct {v1, p0, v0, p2}, Lio/branch/search/s3$a;-><init>(Lio/branch/search/s3;Ljava/util/Map$Entry;Lio/branch/search/e2;)V

    invoke-static {v1}, Lio/branch/search/b5;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/b4;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$d;

    invoke-direct {v1, p0, p1}, Lio/branch/search/s3$d;-><init>(Lio/branch/search/s3;Lio/branch/search/b4;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/branch/search/c4;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$c;

    invoke-direct {v1, p0, p1}, Lio/branch/search/s3$c;-><init>(Lio/branch/search/s3;Lio/branch/search/c4;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/branch/search/f2;)V
    .locals 3

    invoke-virtual {p1}, Lio/branch/search/f2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/f2;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/branch/search/s3;->a(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p0, Lio/branch/search/s3;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/q3;

    invoke-virtual {p0, v1, v2, p1}, Lio/branch/search/s3;->a(Lio/branch/search/q3;Ljava/util/List;Lio/branch/search/f2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lio/branch/search/f4;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f4;",
            "Ljava/util/List<",
            "Lio/branch/search/d4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$e;

    invoke-direct {v1, p0, p1, p2}, Lio/branch/search/s3$e;-><init>(Lio/branch/search/s3;Lio/branch/search/f4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/branch/search/q3;Ljava/util/List;Lio/branch/search/f2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/q3;",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;",
            "Lio/branch/search/f2;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lio/branch/search/f2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/branch/search/s3;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lio/branch/search/v3;

    invoke-direct {p1, p2}, Lio/branch/search/v3;-><init>(Ljava/util/List;)V

    invoke-virtual {p3, p1}, Lio/branch/search/f2;->a(Lio/branch/search/i2;)Ljava/lang/Exception;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    const-string p2, "SQLiteManager.maybeCopyIntoRawDatabase"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lio/branch/search/w3;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$g;

    invoke-direct {v1, p0, p1}, Lio/branch/search/s3$g;-><init>(Lio/branch/search/s3;Lio/branch/search/w3;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$b;

    invoke-direct {v1, p0, p1}, Lio/branch/search/s3$b;-><init>(Lio/branch/search/s3;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/branch/search/q3;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/q3;

    invoke-virtual {v2}, Lio/branch/search/q3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/branch/search/s3;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_sqlite_local_replica_whitelists_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lio/branch/search/s3;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$f;

    invoke-direct {v1, p0, p1}, Lio/branch/search/s3$f;-><init>(Lio/branch/search/s3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lkotlin/sequences/Sequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$h;

    invoke-direct {v1, p0, p1}, Lio/branch/search/s3$h;-><init>(Lio/branch/search/s3;Lkotlin/sequences/Sequence;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    invoke-static {p2}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b()Lio/branch/search/w3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p0}, Lio/branch/search/r3;->d()Lio/branch/search/x3;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/x3;->d()Lio/branch/search/w3;

    move-result-object p0

    return-object p0
.end method

.method public b(Lio/branch/search/f2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->a(Lio/branch/search/f2;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lkotlin/sequences/Sequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Lio/branch/search/j4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s3;->b:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/s3$i;

    invoke-direct {v1, p0, p1}, Lio/branch/search/s3$i;-><init>(Lio/branch/search/s3;Lkotlin/sequences/Sequence;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lio/branch/search/s3;->d()V

    invoke-virtual {p0}, Lio/branch/search/s3;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SQLiteManager.syncLocalData"

    const-string v1, "Exception from syncLocalData."

    invoke-static {v0, v1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/s3;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/branch/search/s3;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_sqlite_local_replica_whitelists_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lio/branch/search/z;->a(Landroid/content/Context;)Lio/branch/search/z$b;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/z$b;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v3}, Lio/branch/search/z$b;->c()Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lio/branch/search/z$b;->a()Landroid/content/pm/LauncherApps;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v5}, Lio/branch/search/z;->a(Landroid/content/Context;Landroid/os/UserHandle;)Lio/branch/search/z$a;

    move-result-object v8

    invoke-virtual {p0, v0, v7, v8}, Lio/branch/search/s3;->a(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Lio/branch/search/z$a;)Lio/branch/search/i3;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v0}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Lio/branch/search/j3;->a(Ljava/util/List;J)V

    iget-object p0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p0}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object p0

    invoke-virtual {p0, v2}, Lio/branch/search/j3;->a(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncLocalPackages: SUCCESS - got "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v0}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/j3;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v2}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/s3;->i:Lio/branch/search/l;

    invoke-virtual {v3}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object v3

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/i3;

    new-instance v6, Lio/branch/search/BranchShortcutList;

    iget-object v7, v5, Lio/branch/search/i3;->a:Ljava/lang/String;

    iget-object v8, v5, Lio/branch/search/i3;->c:Ljava/lang/String;

    iget-object v9, v5, Lio/branch/search/i3;->b:Ljava/lang/Long;

    invoke-direct {v6, v7, v8, v9}, Lio/branch/search/BranchShortcutList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, v5, Lio/branch/search/i3;->a:Ljava/lang/String;

    iget-object v5, v5, Lio/branch/search/i3;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v3, v2, v7, v5, v6}, Lio/branch/search/IBranchShortcutHandler;->loadShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/BranchShortcutList;)V

    invoke-virtual {v6}, Lio/branch/search/BranchShortcutList;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p0}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/branch/search/m3;->c(Ljava/util/List;)V

    return-void
.end method
