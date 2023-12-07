.class public Lio/branch/search/h2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/e2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/h2$f;,
        Lio/branch/search/h2$e;,
        Lio/branch/search/h2$d;
    }
.end annotation


# instance fields
.field public final a:Lio/branch/search/n4;

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/h2$e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/branch/search/l;

.field public e:Lio/branch/search/j2;

.field public f:Lio/branch/search/q2;


# direct methods
.method public constructor <init>(Lio/branch/search/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/n4;

    const-string v1, "RawSQLiteManager"

    invoke-direct {v0, v1}, Lio/branch/search/n4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/h2;->a:Lio/branch/search/n4;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/branch/search/h2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/h2;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    iput-object p1, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/h2;)Lorg/json/JSONObject;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/h2;->e()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/h2;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/h2;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lio/branch/search/h2;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method


# virtual methods
.method public a(Lio/branch/search/m0;)Lio/branch/search/BranchQueryHintResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lio/branch/search/t1;

    const-string v1, "ANH_"

    invoke-direct {v0, v1}, Lio/branch/search/t1;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    sget-object v2, Lio/branch/search/h2$d;->c:Lio/branch/search/h2$d;

    new-instance v3, Lio/branch/search/u1$e;

    invoke-direct {v3, p1}, Lio/branch/search/u1$e;-><init>(Lio/branch/search/m0;)V

    new-instance v4, Lio/branch/search/h2$b;

    invoke-direct {v4, p0, p1, v0}, Lio/branch/search/h2$b;-><init>(Lio/branch/search/h2;Lio/branch/search/m0;Lio/branch/search/t1;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/branch/search/j2;->a(Lio/branch/search/h2$d;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Lio/branch/search/BranchQueryHintResult;

    iget-object p1, p1, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lio/branch/search/BranchQueryHintResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/f2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-virtual {p0}, Lio/branch/search/j2;->b()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/m0;)Ljava/util/List;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    sget-object v1, Lio/branch/search/h2$d;->a:Lio/branch/search/h2$d;

    new-instance v2, Lio/branch/search/u1$c;

    invoke-direct {v2, p1, p2}, Lio/branch/search/u1$c;-><init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/m0;)V

    new-instance p1, Lio/branch/search/c2$e;

    iget-object p0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    sget-object v3, Lio/branch/search/k;->c:Lio/branch/search/k;

    invoke-direct {p1, p0, p2, v3}, Lio/branch/search/c2$e;-><init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, p1}, Lio/branch/search/j2;->a(Lio/branch/search/h2$d;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public a(Lio/branch/search/m0;Lio/branch/search/BranchAppStoreRequest;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m0;",
            "Lio/branch/search/BranchAppStoreRequest;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppStoreLinkResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    sget-object v0, Lio/branch/search/h2$d;->f:Lio/branch/search/h2$d;

    new-instance v1, Lio/branch/search/u1$a;

    invoke-direct {v1, p2, p1}, Lio/branch/search/u1$a;-><init>(Lio/branch/search/BranchAppStoreRequest;Lio/branch/search/m0;)V

    invoke-static {p3}, Lio/branch/search/r1;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    invoke-static {v1, p2}, Lio/branch/search/m2;->a(Lio/branch/search/u1;Ljava/util/List;)Lio/branch/search/u1;

    move-result-object p2

    new-instance p3, Lio/branch/search/t2;

    invoke-direct {p3, p1}, Lio/branch/search/t2;-><init>(Lio/branch/search/m0;)V

    invoke-virtual {p0, v0, p2, p3}, Lio/branch/search/j2;->a(Lio/branch/search/h2$d;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public a(Lio/branch/search/f2;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-virtual {v0, p1}, Lio/branch/search/j2;->a(Lio/branch/search/f2;)V

    iget-object p0, p0, Lio/branch/search/h2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/h2$e;

    invoke-interface {v0, p1}, Lio/branch/search/h2$e;->b(Lio/branch/search/f2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/h2$e;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/h2;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/branch/search/h2$f;)V
    .locals 3

    iget-object v0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->t()I

    move-result v1

    new-instance v2, Lio/branch/search/j2;

    invoke-direct {v2, p1, v0, v1}, Lio/branch/search/j2;-><init>(Lio/branch/search/h2$f;Landroid/content/Context;I)V

    iput-object v2, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    new-instance p1, Lio/branch/search/q2;

    iget-object v0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    iget-object v1, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-direct {p1, v0, v1}, Lio/branch/search/q2;-><init>(Lio/branch/search/l;Lio/branch/search/j2;)V

    iput-object p1, p0, Lio/branch/search/h2;->f:Lio/branch/search/q2;

    return-void
.end method

.method public a(Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/branch/search/h2;->a(Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V

    return-void
.end method

.method public a(Lio/branch/search/x1$c;)V
    .locals 8

    const-string v0, "BRANCH_RawSQLiteManager.processUpdates"

    const-string v1, "request_id"

    iget-object v2, p1, Lio/branch/search/x1$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/x1$b;

    :try_start_0
    instance-of v4, v3, Lio/branch/search/x1$e;

    if-eqz v4, :cond_0

    check-cast v3, Lio/branch/search/x1$e;

    invoke-virtual {p0, v3}, Lio/branch/search/h2;->a(Lio/branch/search/x1$e;)V

    goto :goto_0

    :cond_0
    instance-of v4, v3, Lio/branch/search/x1$l;

    if-eqz v4, :cond_1

    check-cast v3, Lio/branch/search/x1$l;

    invoke-virtual {p0, v3}, Lio/branch/search/h2;->a(Lio/branch/search/x1$l;)V

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lio/branch/search/x1$g;

    if-eqz v4, :cond_2

    check-cast v3, Lio/branch/search/x1$g;

    invoke-virtual {p0, v3}, Lio/branch/search/h2;->a(Lio/branch/search/x1$g;)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, Lio/branch/search/x1$f;

    if-eqz v4, :cond_3

    check-cast v3, Lio/branch/search/x1$f;

    iget-object v3, v3, Lio/branch/search/x1$f;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/branch/search/h2;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v4, v3, Lio/branch/search/x1$d;

    if-eqz v4, :cond_4

    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/v0;->a()V

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p1, Lio/branch/search/x1$c;->d:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bundle ACTION processing failed (request_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lio/branch/search/x1$c;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "), Unkwown type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3, v4}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p1, Lio/branch/search/x1$c;->d:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bundle processing failed (request_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lio/branch/search/x1$c;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3, v4}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lio/branch/search/x1$e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lio/branch/search/v1;->a:Lio/branch/search/v1;

    iget-object v1, p1, Lio/branch/search/x1$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/branch/search/v1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->t()I

    move-result v5

    invoke-virtual {v6, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lio/branch/search/f2;

    iget-object v4, p1, Lio/branch/search/x1$l;->a:Ljava/lang/String;

    iget-object v7, p1, Lio/branch/search/x1$e;->g:Ljava/util/Set;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/branch/search/f2;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/util/Set;)V

    new-instance v1, Lio/branch/search/l2;

    invoke-direct {v1, p1}, Lio/branch/search/l2;-><init>(Lio/branch/search/x1$l;)V

    invoke-virtual {v0, v1}, Lio/branch/search/f2;->a(Lio/branch/search/i2;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lio/branch/search/h2;->a(Lio/branch/search/f2;)V

    iget-object v0, p1, Lio/branch/search/x1$e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lio/branch/search/x1$e;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/branch/search/h2;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    throw v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database file already exists!!!!! Panic!!! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lio/branch/search/x1$g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p1, Lio/branch/search/x1$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/x1$h;

    iget-object v2, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    iget-object v3, p1, Lio/branch/search/x1$g;->a:Ljava/lang/String;

    iget-object v4, v1, Lio/branch/search/x1$h;->b:Ljava/lang/String;

    iget-object v5, v1, Lio/branch/search/x1$h;->c:Ljava/lang/String;

    new-instance v6, Lio/branch/search/u1$d;

    invoke-direct {v6}, Lio/branch/search/u1$d;-><init>()V

    sget-object v7, Lio/branch/search/c2;->a:Lio/branch/search/c2;

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/j2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v1, v1, Lio/branch/search/x1$h;->a:Ljava/lang/String;

    invoke-static {v1}, Lio/branch/search/k;->valueOf(Ljava/lang/String;)Lio/branch/search/k;

    move-result-object v1

    iget-object v3, p1, Lio/branch/search/x1$g;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lio/branch/search/u0;->a(Lio/branch/search/k;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lio/branch/search/x1$l;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-virtual {v0, p1}, Lio/branch/search/j2;->a(Lio/branch/search/x1$l;)Lio/branch/search/f2;

    move-result-object p1

    iget-object p0, p0, Lio/branch/search/h2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/h2$e;

    invoke-interface {v0, p1}, Lio/branch/search/h2$e;->a(Lio/branch/search/f2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-virtual {v0, p1}, Lio/branch/search/j2;->a(Ljava/lang/String;)Z

    iget-object p0, p0, Lio/branch/search/h2;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/h2$e;

    invoke-interface {v0, p1}, Lio/branch/search/h2$e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-virtual {p0, p1}, Lio/branch/search/j2;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/h2;->a:Lio/branch/search/n4;

    new-instance v1, Lio/branch/search/h2$c;

    invoke-direct {v1, p0, p1, p2}, Lio/branch/search/h2$c;-><init>(Lio/branch/search/h2;Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V

    invoke-virtual {v0, v1}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/m0;)Lio/branch/search/g1;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    sget-object v1, Lio/branch/search/h2$d;->d:Lio/branch/search/h2$d;

    new-instance v2, Lio/branch/search/u1$c;

    invoke-direct {v2, p1, p2}, Lio/branch/search/u1$c;-><init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/m0;)V

    new-instance p1, Lio/branch/search/c2$d;

    iget-object p0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    sget-object v3, Lio/branch/search/k;->d:Lio/branch/search/k;

    invoke-direct {p1, p0, p2, v3}, Lio/branch/search/c2$d;-><init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, p1}, Lio/branch/search/j2;->a(Lio/branch/search/h2$d;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/g1;

    return-object p0
.end method

.method public b(Lio/branch/search/m0;)Lio/branch/search/g1;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    sget-object v1, Lio/branch/search/h2$d;->e:Lio/branch/search/h2$d;

    new-instance v2, Lio/branch/search/u1$e;

    invoke-direct {v2, p1}, Lio/branch/search/u1$e;-><init>(Lio/branch/search/m0;)V

    new-instance v3, Lio/branch/search/c2$d;

    iget-object p0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    sget-object v4, Lio/branch/search/k;->b:Lio/branch/search/k;

    invoke-direct {v3, p0, p1, v4}, Lio/branch/search/c2$d;-><init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/search/j2;->a(Lio/branch/search/h2$d;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/g1;

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-virtual {v0}, Lio/branch/search/j2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-static {p0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;)V

    :cond_0
    return-void
.end method

.method public c(Lio/branch/search/m0;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    sget-object v1, Lio/branch/search/h2$d;->b:Lio/branch/search/h2$d;

    new-instance v2, Lio/branch/search/u1$e;

    invoke-direct {v2, p1}, Lio/branch/search/u1$e;-><init>(Lio/branch/search/m0;)V

    new-instance v3, Lio/branch/search/c2$e;

    iget-object p0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    sget-object v4, Lio/branch/search/k;->a:Lio/branch/search/k;

    invoke-direct {v3, p0, p1, v4}, Lio/branch/search/c2$e;-><init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/search/j2;->a(Lio/branch/search/h2$d;Lio/branch/search/u1;Lio/branch/search/c2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lio/branch/search/h2;->f:Lio/branch/search/q2;

    invoke-virtual {p0}, Lio/branch/search/q2;->a()V

    return-void
.end method

.method public d()V
    .locals 9

    iget-object v0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-static {v1}, Lio/branch/search/d3;->a(Lio/branch/search/l;)Z

    invoke-static {v0}, Lio/branch/search/w1;->a(Landroid/content/Context;)Lio/branch/search/w1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/w1;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/branch/search/w1;->a(Landroid/content/Context;)Lio/branch/search/w1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/w1;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/branch/search/w1;->a(Landroid/content/Context;)Lio/branch/search/w1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/w1;->f()V

    iget-object v1, p0, Lio/branch/search/h2;->a:Lio/branch/search/n4;

    new-instance v2, Lio/branch/search/h2$a;

    invoke-direct {v2, p0, v0}, Lio/branch/search/h2$a;-><init>(Lio/branch/search/h2;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;JJZ)V

    :goto_0
    iget-object p0, p0, Lio/branch/search/h2;->f:Lio/branch/search/q2;

    invoke-virtual {p0}, Lio/branch/search/q2;->c()V

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/branch/search/y1;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object p0, p0, Lio/branch/search/h2;->d:Lio/branch/search/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error retrieving cold start bundle, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BRANCH_RawSQLiteManager.loadColdStartBundle"

    invoke-virtual {p0, v2, v1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
