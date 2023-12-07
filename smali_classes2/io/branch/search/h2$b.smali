.class public Lio/branch/search/h2$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/c2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/h2;->a(Lio/branch/search/m0;)Lio/branch/search/BranchQueryHintResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/c2<",
        "Lio/branch/search/BranchQueryHint;",
        "Ljava/util/List<",
        "Lio/branch/search/BranchQueryHint;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lio/branch/search/m0;

.field public final synthetic e:Lio/branch/search/t1;


# direct methods
.method public constructor <init>(Lio/branch/search/h2;Lio/branch/search/m0;Lio/branch/search/t1;)V
    .locals 0

    iput-object p2, p0, Lio/branch/search/h2$b;->d:Lio/branch/search/m0;

    iput-object p3, p0, Lio/branch/search/h2$b;->e:Lio/branch/search/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/h2$b;->b(Landroid/database/Cursor;)Lio/branch/search/BranchQueryHint;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/h2$b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/database/Cursor;)Lio/branch/search/BranchQueryHint;
    .locals 7

    const-string v0, "bundle_source_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    new-instance v0, Lio/branch/search/BranchQueryHint;

    iget-object v1, p0, Lio/branch/search/h2$b;->d:Lio/branch/search/m0;

    iget-object v2, v1, Lio/branch/search/m0;->j:Ljava/lang/String;

    const-string v1, "hint"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/branch/search/h2$b;->d:Lio/branch/search/m0;

    iget-object v4, v1, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lio/branch/search/m0;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/branch/search/BranchQueryHint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/h2$b;->d:Lio/branch/search/m0;

    iget-object p0, p0, Lio/branch/search/h2$b;->e:Lio/branch/search/t1;

    invoke-virtual {p0, p1}, Lio/branch/search/t1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lio/branch/search/m0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchQueryHint;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/BranchQueryHint;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
