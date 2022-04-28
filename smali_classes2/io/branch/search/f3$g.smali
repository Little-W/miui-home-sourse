.class public Lio/branch/search/f3$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f3;->a(Lio/branch/search/j3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/j3;

.field public final synthetic b:Lio/branch/search/f3;


# direct methods
.method public constructor <init>(Lio/branch/search/f3;Lio/branch/search/j3;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/f3$g;->b:Lio/branch/search/f3;

    iput-object p2, p0, Lio/branch/search/f3$g;->a:Lio/branch/search/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lio/branch/search/f3$g;->b:Lio/branch/search/f3;

    iget-object v0, v0, Lio/branch/search/f3;->c:Lio/branch/search/e3;

    invoke-virtual {v0}, Lio/branch/search/e3;->d()Lio/branch/search/k3;

    move-result-object v0

    new-instance v1, Lio/branch/search/j3;

    iget-object v2, p0, Lio/branch/search/f3$g;->a:Lio/branch/search/j3;

    iget v3, v2, Lio/branch/search/j3;->a:I

    iget-wide v4, v2, Lio/branch/search/j3;->b:J

    invoke-direct {v1, v3, v4, v5}, Lio/branch/search/j3;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lio/branch/search/k3;->b(Lio/branch/search/j3;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SQLiteManager"

    const-string v2, "Exception from setLatestTrackingStatus."

    invoke-static {v1, v2, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
