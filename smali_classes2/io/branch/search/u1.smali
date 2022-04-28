.class public Lio/branch/search/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/u1$f;,
        Lio/branch/search/u1$e;,
        Lio/branch/search/u1$d;
    }
.end annotation


# instance fields
.field public final a:Lio/branch/search/b4;

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/u1$e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/branch/search/l;

.field public e:Lio/branch/search/w1;

.field public f:Lio/branch/search/d2;


# direct methods
.method public constructor <init>(Lio/branch/search/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/b4;

    const-string v1, "RawSQLiteManager"

    invoke-direct {v0, v1}, Lio/branch/search/b4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/u1;->a:Lio/branch/search/b4;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/branch/search/u1;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/u1;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    iput-object p1, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/u1;)Lorg/json/JSONObject;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/u1;->d()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/u1;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/u1;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lio/branch/search/u1;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method


# virtual methods
.method public a(Lio/branch/search/c0;)Lio/branch/search/BranchQueryHintResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lio/branch/search/h1;

    const-string v1, "ANH_"

    invoke-direct {v0, v1}, Lio/branch/search/h1;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    sget-object v2, Lio/branch/search/u1$d;->c:Lio/branch/search/u1$d;

    new-instance v3, Lio/branch/search/i1$e;

    invoke-direct {v3, p1}, Lio/branch/search/i1$e;-><init>(Lio/branch/search/c0;)V

    new-instance v4, Lio/branch/search/u1$b;

    invoke-direct {v4, p0, p1, v0}, Lio/branch/search/u1$b;-><init>(Lio/branch/search/u1;Lio/branch/search/c0;Lio/branch/search/h1;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/branch/search/w1;->a(Lio/branch/search/u1$d;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lio/branch/search/BranchQueryHintResult;

    iget-object p1, p1, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lio/branch/search/BranchQueryHintResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/s1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    invoke-virtual {v0}, Lio/branch/search/w1;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/c0;)Ljava/util/List;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    sget-object v1, Lio/branch/search/u1$d;->a:Lio/branch/search/u1$d;

    new-instance v2, Lio/branch/search/i1$c;

    invoke-direct {v2, p1, p2}, Lio/branch/search/i1$c;-><init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/c0;)V

    new-instance p1, Lio/branch/search/p1$e;

    iget-object v3, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    sget-object v4, Lio/branch/search/k;->c:Lio/branch/search/k;

    invoke-direct {p1, v3, p2, v4}, Lio/branch/search/p1$e;-><init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, p1}, Lio/branch/search/w1;->a(Lio/branch/search/u1$d;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a(Lio/branch/search/c0;Lio/branch/search/c;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/c0;",
            "Lio/branch/search/c;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppStoreLinkResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    sget-object v1, Lio/branch/search/u1$d;->f:Lio/branch/search/u1$d;

    new-instance v2, Lio/branch/search/i1$a;

    invoke-direct {v2, p2, p1}, Lio/branch/search/i1$a;-><init>(Lio/branch/search/c;Lio/branch/search/c0;)V

    invoke-static {p3}, Lio/branch/search/f1;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    invoke-static {v2, p2}, Lio/branch/search/z1;->a(Lio/branch/search/i1;Ljava/util/List;)Lio/branch/search/i1;

    move-result-object p2

    new-instance p3, Lio/branch/search/g2;

    invoke-direct {p3, p1}, Lio/branch/search/g2;-><init>(Lio/branch/search/c0;)V

    invoke-virtual {v0, v1, p2, p3}, Lio/branch/search/w1;->a(Lio/branch/search/u1$d;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a(Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/branch/search/u1;->a(Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V

    return-void
.end method

.method public final a(Lio/branch/search/l1$e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lio/branch/search/j1;->a:Lio/branch/search/j1;

    iget-object v1, p1, Lio/branch/search/l1$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/branch/search/j1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Lio/branch/search/s1;

    iget-object v3, p1, Lio/branch/search/l1$l;->a:Ljava/lang/String;

    iget-object v4, p1, Lio/branch/search/l1$e;->g:Ljava/util/Set;

    invoke-direct {v2, v0, v3, v1, v4}, Lio/branch/search/s1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V

    new-instance v0, Lio/branch/search/y1;

    invoke-direct {v0, p1}, Lio/branch/search/y1;-><init>(Lio/branch/search/l1$l;)V

    invoke-virtual {v2, v0}, Lio/branch/search/s1;->a(Lio/branch/search/v1;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lio/branch/search/u1;->a(Lio/branch/search/s1;)V

    iget-object v0, p1, Lio/branch/search/l1$e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lio/branch/search/l1$e;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/branch/search/u1;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database file already exists!!!!! Panic!!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lio/branch/search/l1$g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p1, Lio/branch/search/l1$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/l1$h;

    iget-object v2, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    iget-object v3, p1, Lio/branch/search/l1$g;->a:Ljava/lang/String;

    iget-object v4, v1, Lio/branch/search/l1$h;->b:Ljava/lang/String;

    iget-object v5, v1, Lio/branch/search/l1$h;->c:Ljava/lang/String;

    new-instance v6, Lio/branch/search/i1$d;

    invoke-direct {v6}, Lio/branch/search/i1$d;-><init>()V

    sget-object v7, Lio/branch/search/p1;->a:Lio/branch/search/p1;

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/w1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v1, v1, Lio/branch/search/l1$h;->a:Ljava/lang/String;

    invoke-static {v1}, Lio/branch/search/k;->valueOf(Ljava/lang/String;)Lio/branch/search/k;

    move-result-object v1

    iget-object v3, p1, Lio/branch/search/l1$g;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lio/branch/search/j0;->a(Lio/branch/search/k;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lio/branch/search/l1$l;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    invoke-virtual {v0, p1}, Lio/branch/search/w1;->a(Lio/branch/search/l1$l;)Lio/branch/search/s1;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/u1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/u1$e;

    invoke-interface {v1, p1}, Lio/branch/search/u1$e;->a(Lio/branch/search/s1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/s1;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    invoke-virtual {v0, p1}, Lio/branch/search/w1;->a(Lio/branch/search/s1;)V

    iget-object v0, p0, Lio/branch/search/u1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/u1$e;

    invoke-interface {v1, p1}, Lio/branch/search/u1$e;->b(Lio/branch/search/s1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/u1$e;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/u1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/branch/search/u1$f;)V
    .locals 8

    iget-object v0, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/branch/search/w1;

    invoke-direct {v1, p1, v0}, Lio/branch/search/w1;-><init>(Lio/branch/search/u1$f;Landroid/content/Context;)V

    iput-object v1, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    new-instance p1, Lio/branch/search/d2;

    iget-object v1, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    iget-object v2, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    invoke-direct {p1, v1, v2}, Lio/branch/search/d2;-><init>(Lio/branch/search/l;Lio/branch/search/w1;)V

    iput-object p1, p0, Lio/branch/search/u1;->f:Lio/branch/search/d2;

    iget-object p1, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    invoke-static {p1}, Lio/branch/search/q2;->a(Lio/branch/search/l;)Z

    invoke-static {v0}, Lio/branch/search/k1;->a(Landroid/content/Context;)Lio/branch/search/k1;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/k1;->c()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Lio/branch/search/k1;->a(Landroid/content/Context;)Lio/branch/search/k1;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/k1;->d()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Lio/branch/search/k1;->a(Landroid/content/Context;)Lio/branch/search/k1;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/k1;->f()V

    iget-object p1, p0, Lio/branch/search/u1;->a:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/u1$a;

    invoke-direct {v1, p0, v0}, Lio/branch/search/u1$a;-><init>(Lio/branch/search/u1;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;JJZ)V

    :goto_0
    iget-object p1, p0, Lio/branch/search/u1;->f:Lio/branch/search/d2;

    invoke-virtual {p1}, Lio/branch/search/d2;->c()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    invoke-virtual {v0, p1}, Lio/branch/search/w1;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lio/branch/search/u1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/u1$e;

    invoke-interface {v1, p1}, Lio/branch/search/u1$e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/l1$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/l1$b;

    :try_start_0
    instance-of v1, v0, Lio/branch/search/l1$e;

    if-eqz v1, :cond_0

    check-cast v0, Lio/branch/search/l1$e;

    invoke-virtual {p0, v0}, Lio/branch/search/u1;->a(Lio/branch/search/l1$e;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lio/branch/search/l1$l;

    if-eqz v1, :cond_1

    check-cast v0, Lio/branch/search/l1$l;

    invoke-virtual {p0, v0}, Lio/branch/search/u1;->a(Lio/branch/search/l1$l;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lio/branch/search/l1$g;

    if-eqz v1, :cond_2

    check-cast v0, Lio/branch/search/l1$g;

    invoke-virtual {p0, v0}, Lio/branch/search/u1;->a(Lio/branch/search/l1$g;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lio/branch/search/l1$f;

    if-eqz v1, :cond_3

    check-cast v0, Lio/branch/search/l1$f;

    iget-object v0, v0, Lio/branch/search/l1$f;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/branch/search/u1;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lio/branch/search/l1$d;

    if-eqz v1, :cond_4

    invoke-static {}, Lio/branch/search/k0;->b()Lio/branch/search/k0;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/k0;->a()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "BRANCH_RawSQLiteManager.processUpdates"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unkwown type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    const-string v2, "BRANCH_RawSQLiteManager.processUpdates"

    invoke-virtual {v1, v2, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
    .locals 2

    const-string v0, "BRANCH_RawSQLiteManager"

    const-string v1, "startBundleUpdate"

    invoke-static {v0, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/u1;->a:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/u1$c;

    invoke-direct {v1, p0, p1, p2}, Lio/branch/search/u1$c;-><init>(Lio/branch/search/u1;Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/c0;)Lio/branch/search/t0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    sget-object v1, Lio/branch/search/u1$d;->d:Lio/branch/search/u1$d;

    new-instance v2, Lio/branch/search/i1$c;

    invoke-direct {v2, p1, p2}, Lio/branch/search/i1$c;-><init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/c0;)V

    new-instance p1, Lio/branch/search/p1$d;

    iget-object v3, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    sget-object v4, Lio/branch/search/k;->d:Lio/branch/search/k;

    invoke-direct {p1, v3, p2, v4}, Lio/branch/search/p1$d;-><init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, p1}, Lio/branch/search/w1;->a(Lio/branch/search/u1$d;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/t0;

    return-object p1
.end method

.method public b(Lio/branch/search/c0;)Lio/branch/search/t0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/BranchLocalError$InvalidDB;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    sget-object v1, Lio/branch/search/u1$d;->e:Lio/branch/search/u1$d;

    new-instance v2, Lio/branch/search/i1$e;

    invoke-direct {v2, p1}, Lio/branch/search/i1$e;-><init>(Lio/branch/search/c0;)V

    new-instance v3, Lio/branch/search/p1$d;

    iget-object v4, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    sget-object v5, Lio/branch/search/k;->b:Lio/branch/search/k;

    invoke-direct {v3, v4, p1, v5}, Lio/branch/search/p1$d;-><init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/search/w1;->a(Lio/branch/search/u1$d;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/t0;

    return-object p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    invoke-virtual {v0}, Lio/branch/search/w1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    invoke-static {v0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;)V

    :cond_0
    return-void
.end method

.method public c(Lio/branch/search/c0;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/c0;",
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

    iget-object v0, p0, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    sget-object v1, Lio/branch/search/u1$d;->b:Lio/branch/search/u1$d;

    new-instance v2, Lio/branch/search/i1$e;

    invoke-direct {v2, p1}, Lio/branch/search/i1$e;-><init>(Lio/branch/search/c0;)V

    new-instance v3, Lio/branch/search/p1$e;

    iget-object v4, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    sget-object v5, Lio/branch/search/k;->a:Lio/branch/search/k;

    invoke-direct {v3, v4, p1, v5}, Lio/branch/search/p1$e;-><init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/branch/search/w1;->a(Lio/branch/search/u1$d;Lio/branch/search/i1;Lio/branch/search/p1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/u1;->f:Lio/branch/search/d2;

    invoke-virtual {v0}, Lio/branch/search/d2;->a()V

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "cold_start_bundle"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "NiB3PkAmWzJm9L3X"

    const-string v3, "u7vWpGFuV40KFXOPAS0FEOQpHVN8nYBx"

    invoke-static {v2, v1, v3}, Lio/branch/search/c5;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lio/branch/search/d5;->a([B)[B

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/branch/search/u1;->d:Lio/branch/search/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error retrieving cold start bundle, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BRANCH_RawSQLiteManager.loadColdStartBundle"

    invoke-virtual {v2, v3, v1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
