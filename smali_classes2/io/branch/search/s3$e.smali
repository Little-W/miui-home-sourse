.class public Lio/branch/search/s3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/s3;->a(Lio/branch/search/f4;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/f4;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lio/branch/search/s3;


# direct methods
.method public constructor <init>(Lio/branch/search/s3;Lio/branch/search/f4;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/s3$e;->c:Lio/branch/search/s3;

    iput-object p2, p0, Lio/branch/search/s3$e;->a:Lio/branch/search/f4;

    iput-object p3, p0, Lio/branch/search/s3$e;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/branch/search/s3$e;->c:Lio/branch/search/s3;

    iget-object v0, v0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {v0}, Lio/branch/search/r3;->a()Lio/branch/search/z3;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/s3$e;->a:Lio/branch/search/f4;

    iget-object p0, p0, Lio/branch/search/s3$e;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lio/branch/search/z3;->a(Lio/branch/search/f4;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SQLiteManager"

    const-string v1, "Exception from addVirtualRequest."

    invoke-static {v0, v1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
