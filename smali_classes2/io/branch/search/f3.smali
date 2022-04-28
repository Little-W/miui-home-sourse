.class public Lio/branch/search/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/u1$e;
.implements Lio/branch/search/u1$f;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lio/branch/search/b4;

.field public c:Lio/branch/search/e3;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/d3;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/g3;",
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
            "Lio/branch/search/d3;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/v2;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/y2;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Lio/branch/search/a5;

.field public final i:Lio/branch/search/l;


# direct methods
.method public constructor <init>(Lio/branch/search/l;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/b4;

    const-string v1, "BranchSQLiteManager"

    invoke-direct {v0, v1}, Lio/branch/search/b4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/f3;->e:Ljava/util/Map;

    new-instance v0, Lio/branch/search/a5;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/branch/search/a5$c;

    new-instance v2, Lio/branch/search/a5$b;

    invoke-direct {v2}, Lio/branch/search/a5$b;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lio/branch/search/a5$a;

    invoke-direct {v2}, Lio/branch/search/a5$a;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lio/branch/search/a5;-><init>([Lio/branch/search/a5$c;)V

    iput-object v0, p0, Lio/branch/search/f3;->h:Lio/branch/search/a5;

    iput-object p1, p0, Lio/branch/search/f3;->i:Lio/branch/search/l;

    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lio/branch/search/o4$a;->d:Lio/branch/search/o4$a;

    invoke-static {p1, v0}, Lio/branch/search/o4;->a(Landroid/content/Context;Lio/branch/search/o4$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/f3;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/f3;Lio/branch/search/d3;Ljava/util/List;Lio/branch/search/s1;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/f3;->a(Lio/branch/search/d3;Ljava/util/List;Lio/branch/search/s1;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    invoke-virtual {v0}, Lio/branch/search/b4;->b()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-static {p3}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :try_start_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p3, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/c0;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchLocalSearchRequest;",
            "Lio/branch/search/c0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->e()Lio/branch/search/w2;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/w2;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/v2;

    iget-object v4, p0, Lio/branch/search/f3;->i:Lio/branch/search/l;

    iget-object v5, v3, Lio/branch/search/v2;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lio/branch/search/Util;->a(Lio/branch/search/l;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lio/branch/search/v2;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lio/branch/search/v2;->c:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lio/branch/search/f3;->h:Lio/branch/search/a5;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lio/branch/search/a5;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lio/branch/search/v2;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {p1}, Lio/branch/search/e3;->f()Lio/branch/search/z2;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/branch/search/z2;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/f3;->i:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, p2}, Lio/branch/search/z3;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lio/branch/search/c0;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lio/branch/search/d3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f3;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/f3;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/branch/search/f3;->a:Landroid/content/SharedPreferences;

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

    invoke-static {v2}, Lio/branch/search/d3;->valueOf(Ljava/lang/String;)Lio/branch/search/d3;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/branch/search/f3;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public a(Landroid/content/Context;Lio/branch/search/r1;)V
    .locals 3

    new-instance v0, Lio/branch/search/e3;

    invoke-direct {v0, p1}, Lio/branch/search/e3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    iget-object p1, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v0, Lio/branch/search/f3$a;

    invoke-direct {v0, p0}, Lio/branch/search/f3$a;-><init>(Lio/branch/search/f3;)V

    invoke-virtual {p1, v0}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    new-instance p1, Lio/branch/search/h3;

    iget-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    iget-object v0, v0, Lio/branch/search/c3;->a:Landroidx/room/RoomDatabase;

    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/branch/search/h3;-><init>(Landroidx/room/RoomDatabase;Lkotlinx/coroutines/CoroutineScope;)V

    iget-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->e()Lio/branch/search/w2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/search/w2;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/f3;->f:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->f()Lio/branch/search/z2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/search/z2;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/f3;->g:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->c:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->f:Landroidx/lifecycle/LiveData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->d:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->g:Landroidx/lifecycle/LiveData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->h:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->c()Lio/branch/search/x3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/x3;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->l:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->d()Lio/branch/search/k3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/k3;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->g:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->b()Lio/branch/search/u3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/u3;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->f:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->a()Lio/branch/search/m3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/m3;->a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->e:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->a()Lio/branch/search/m3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/m3;->e(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->i:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->a()Lio/branch/search/m3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/m3;->d(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->k:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->a()Lio/branch/search/m3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/m3;->b(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/d3;->j:Lio/branch/search/d3;

    iget-object v2, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v2}, Lio/branch/search/e3;->a()Lio/branch/search/m3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/branch/search/m3;->c(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

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

    new-instance v1, Lio/branch/search/f3$b;

    invoke-direct {v1, p0, v0, p2}, Lio/branch/search/f3$b;-><init>(Lio/branch/search/f3;Ljava/util/Map$Entry;Lio/branch/search/r1;)V

    invoke-static {v1}, Lio/branch/search/p4;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lio/branch/search/d3;Ljava/util/List;Lio/branch/search/s1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/d3;",
            "Ljava/util/List<",
            "Lio/branch/search/g3;",
            ">;",
            "Lio/branch/search/s1;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lio/branch/search/s1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/branch/search/f3;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lio/branch/search/i3;

    invoke-direct {p1, p2}, Lio/branch/search/i3;-><init>(Ljava/util/List;)V

    invoke-virtual {p3, p1}, Lio/branch/search/s1;->a(Lio/branch/search/v1;)Ljava/lang/Exception;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lio/branch/search/f3;->i:Lio/branch/search/l;

    const-string p3, "SQLiteManager.maybeCopyIntoRawDatabase"

    invoke-virtual {p2, p3, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lio/branch/search/j3;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$g;

    invoke-direct {v1, p0, p1}, Lio/branch/search/f3$g;-><init>(Lio/branch/search/f3;Lio/branch/search/j3;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/branch/search/o3;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$d;

    invoke-direct {v1, p0, p1}, Lio/branch/search/f3$d;-><init>(Lio/branch/search/f3;Lio/branch/search/o3;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/branch/search/p3;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$c;

    invoke-direct {v1, p0, p1}, Lio/branch/search/f3$c;-><init>(Lio/branch/search/f3;Lio/branch/search/p3;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/branch/search/s1;)V
    .locals 3

    invoke-virtual {p1}, Lio/branch/search/s1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/s1;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/branch/search/f3;->a(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p0, Lio/branch/search/f3;->d:Ljava/util/Map;

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

    check-cast v1, Lio/branch/search/d3;

    invoke-virtual {p0, v1, v2, p1}, Lio/branch/search/f3;->a(Lio/branch/search/d3;Ljava/util/List;Lio/branch/search/s1;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lio/branch/search/s3;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/s3;",
            "Ljava/util/List<",
            "Lio/branch/search/q3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$e;

    invoke-direct {v1, p0, p1, p2}, Lio/branch/search/f3$e;-><init>(Lio/branch/search/f3;Lio/branch/search/s3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/branch/search/d3;",
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

    check-cast v2, Lio/branch/search/d3;

    invoke-virtual {v2}, Lio/branch/search/d3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/branch/search/f3;->a:Landroid/content/SharedPreferences;

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

    iget-object v0, p0, Lio/branch/search/f3;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$h;

    invoke-direct {v1, p0, p1}, Lio/branch/search/f3$h;-><init>(Lio/branch/search/f3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    invoke-static {p2}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Lio/branch/search/j3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->d()Lio/branch/search/k3;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/k3;->d()Lio/branch/search/j3;

    move-result-object v0

    return-object v0
.end method

.method public b(Lio/branch/search/s1;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/f3;->a(Lio/branch/search/s1;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/f3;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$i;

    invoke-direct {v1, p0, p1}, Lio/branch/search/f3$i;-><init>(Lio/branch/search/f3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lio/branch/search/f3;->d()V

    invoke-virtual {p0}, Lio/branch/search/f3;->e()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/requery/android/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SQLiteManager.syncLocalData"

    const-string v2, "Exception from syncLocalData."

    invoke-static {v1, v2, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/branch/search/f3;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/f3;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_sqlite_local_replica_whitelists_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/r3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$f;

    invoke-direct {v1, p0, p1}, Lio/branch/search/f3$f;-><init>(Lio/branch/search/f3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lio/branch/search/f3;->i:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/LauncherApps;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/UserManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v0, v9, :cond_0

    invoke-virtual {v7}, Landroid/content/pm/LauncherApps;->getProfiles()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    long-to-double v13, v13

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v13, v13, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v16

    double-to-long v13, v13

    iget-object v11, v1, Lio/branch/search/f3;->i:Lio/branch/search/l;

    invoke-virtual {v11}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v11

    invoke-virtual {v11}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v2}, Lio/branch/search/f3;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3, v0, v2}, Lio/branch/search/f3;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    iget-object v11, v1, Lio/branch/search/f3;->i:Lio/branch/search/l;

    invoke-virtual {v11}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lio/branch/search/BranchConfiguration;->b()Lio/branch/search/IBranchAppDataOverrideHandler;

    move-result-object v11

    invoke-interface {v11, v15, v10}, Lio/branch/search/IBranchAppDataOverrideHandler;->fetchOverride(Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/AppDataOverride;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lio/branch/search/AppDataOverride;->getLabel()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    new-instance v11, Lio/branch/search/v2;

    invoke-virtual {v8, v10}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v18, 0x1

    sub-long v19, v5, v13

    const-wide/16 v21, 0x12c

    cmp-long v19, v19, v21

    if-gez v19, :cond_5

    move-wide/from16 v21, v13

    goto :goto_4

    :cond_5
    move-wide/from16 v21, v5

    :goto_4
    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    move-wide/from16 v19, v13

    move-object v13, v11

    move-object v14, v15

    move-object/from16 v27, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    :try_start_1
    invoke-direct/range {v13 .. v26}, Lio/branch/search/v2;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v27, v2

    move-object v2, v15

    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected NameNotFoundException for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "SQLiteManager.syncLocalPackages"

    invoke-static {v11, v2, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-object/from16 v2, v27

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v0, v1, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->e()Lio/branch/search/w2;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Lio/branch/search/w2;->a(Ljava/util/List;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncLocalPackages: SUCCESS - got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SQLiteManager"

    invoke-static {v2, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->e()Lio/branch/search/w2;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/w2;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/f3;->i:Lio/branch/search/l;

    invoke-virtual {v2}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/f3;->i:Lio/branch/search/l;

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

    check-cast v5, Lio/branch/search/v2;

    new-instance v6, Lio/branch/search/BranchShortcutList;

    iget-object v7, v5, Lio/branch/search/v2;->a:Ljava/lang/String;

    iget-object v8, v5, Lio/branch/search/v2;->c:Ljava/lang/String;

    iget-object v9, v5, Lio/branch/search/v2;->b:Ljava/lang/Long;

    invoke-direct {v6, v7, v8, v9}, Lio/branch/search/BranchShortcutList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, v5, Lio/branch/search/v2;->a:Ljava/lang/String;

    iget-object v5, v5, Lio/branch/search/v2;->b:Ljava/lang/Long;

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
    iget-object v0, p0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->f()Lio/branch/search/z2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/branch/search/z2;->c(Ljava/util/List;)V

    return-void
.end method
