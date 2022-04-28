.class public Lio/branch/search/u1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/u1;->a(Lio/branch/search/u1$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/branch/search/u1;


# direct methods
.method public constructor <init>(Lio/branch/search/u1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/u1$a;->b:Lio/branch/search/u1;

    iput-object p2, p0, Lio/branch/search/u1$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Lio/branch/search/l1$c;

    iget-object v1, p0, Lio/branch/search/u1$a;->b:Lio/branch/search/u1;

    invoke-static {v1}, Lio/branch/search/u1;->a(Lio/branch/search/u1;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/l1$c;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lio/branch/search/u1$a;->b:Lio/branch/search/u1;

    iget-object v0, v0, Lio/branch/search/l1$c;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Lio/branch/search/u1;->a(Ljava/util/List;)V

    iget-object v0, p0, Lio/branch/search/u1$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/search/k1;->a(Landroid/content/Context;)Lio/branch/search/k1;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/k1;->a()V

    iget-object v0, p0, Lio/branch/search/u1$a;->b:Lio/branch/search/u1;

    invoke-static {v0}, Lio/branch/search/u1;->b(Lio/branch/search/u1;)Lio/branch/search/l;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;JJZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/branch/search/u1$a;->b:Lio/branch/search/u1;

    invoke-static {v1}, Lio/branch/search/u1;->b(Lio/branch/search/u1;)Lio/branch/search/l;

    move-result-object v1

    const-string v2, "BRANCH_RawSQLiteManager.init"

    const-string v3, "error loading/parsing cold start bundle."

    invoke-virtual {v1, v2, v3, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
