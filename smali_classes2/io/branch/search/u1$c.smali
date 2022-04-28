.class public Lio/branch/search/u1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/u1;->a(Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;

.field public final synthetic c:Lio/branch/search/u1;


# direct methods
.method public constructor <init>(Lio/branch/search/u1;Lorg/json/JSONObject;Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    iput-object p2, p0, Lio/branch/search/u1$c;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/branch/search/u1$c;->b:Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    invoke-static {v0}, Lio/branch/search/u1;->c(Lio/branch/search/u1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v0, "BRANCH_RawSQLiteManager"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/branch/search/u1$c;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-string v2, "forced"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bundle update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    invoke-static {v0}, Lio/branch/search/u1;->b(Lio/branch/search/u1;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;

    invoke-interface {v1}, Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;->onBundleUpdateInit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lio/branch/search/u1$c;->a:Lorg/json/JSONObject;

    if-nez v2, :cond_2

    new-instance v2, Lio/branch/search/l1;

    invoke-direct {v2}, Lio/branch/search/l1;-><init>()V

    iget-object v3, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    invoke-static {v3}, Lio/branch/search/u1;->b(Lio/branch/search/u1;)Lio/branch/search/l;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    iget-object v4, v4, Lio/branch/search/u1;->e:Lio/branch/search/w1;

    invoke-virtual {v4}, Lio/branch/search/w1;->c()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/branch/search/l1;->a(Lio/branch/search/l;Lorg/json/JSONObject;)Lio/branch/search/l1$c;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v2, Lio/branch/search/l1;

    invoke-direct {v2}, Lio/branch/search/l1;-><init>()V

    iget-object v3, p0, Lio/branch/search/u1$c;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lio/branch/search/l1;->c(Lorg/json/JSONObject;)Lio/branch/search/l1$c;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    iget-object v3, v0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Lio/branch/search/u1;->a(Ljava/util/List;)V

    sget-object v2, Lio/branch/search/l1;->a:Lio/branch/search/l1$c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "BRANCH_RawSQLiteManager.bundleInner"

    invoke-static {v3, v2}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    iget-object v2, p0, Lio/branch/search/u1$c;->b:Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;

    invoke-interface {v2, v1}, Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;->onBundleUpdateComplete(Z)V

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    invoke-static {v2}, Lio/branch/search/u1;->b(Lio/branch/search/u1;)Lio/branch/search/l;

    move-result-object v3

    iget v2, v0, Lio/branch/search/l1$c;->b:I

    int-to-long v4, v2

    iget v0, v0, Lio/branch/search/l1$c;->c:I

    int-to-long v6, v0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;JJZ)V

    :cond_4
    iget-object v0, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    invoke-static {v0}, Lio/branch/search/u1;->b(Lio/branch/search/u1;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;

    invoke-interface {v2, v1}, Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;->onBundleUpdateComplete(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "BRANCH_RawSQLiteManager.bundle"

    invoke-static {v1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    iget-object v0, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    invoke-static {v0}, Lio/branch/search/u1;->c(Lio/branch/search/u1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_5
    iget-object v1, p0, Lio/branch/search/u1$c;->c:Lio/branch/search/u1;

    invoke-static {v1}, Lio/branch/search/u1;->c(Lio/branch/search/u1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
