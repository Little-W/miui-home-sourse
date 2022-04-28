.class public Lio/branch/search/f3$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f3;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lio/branch/search/f3;


# direct methods
.method public constructor <init>(Lio/branch/search/f3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/f3$i;->b:Lio/branch/search/f3;

    iput-object p2, p0, Lio/branch/search/f3$i;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/branch/search/f3$i;->b:Lio/branch/search/f3;

    iget-object v0, v0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->c()Lio/branch/search/x3;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/f3$i;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/branch/search/x3;->b(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SQLiteManager"

    const-string v2, "Exception from addAppUsageStats."

    invoke-static {v1, v2, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
