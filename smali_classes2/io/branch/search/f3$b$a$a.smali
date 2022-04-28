.class public Lio/branch/search/f3$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f3$b$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lio/branch/search/f3$b$a;


# direct methods
.method public constructor <init>(Lio/branch/search/f3$b$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/f3$b$a$a;->b:Lio/branch/search/f3$b$a;

    iput-object p2, p0, Lio/branch/search/f3$b$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/branch/search/f3$b$a$a;->b:Lio/branch/search/f3$b$a;

    iget-object v0, v0, Lio/branch/search/f3$b$a;->a:Lio/branch/search/f3$b;

    iget-object v0, v0, Lio/branch/search/f3$b;->b:Lio/branch/search/r1;

    invoke-interface {v0}, Lio/branch/search/r1;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/s1;

    iget-object v2, p0, Lio/branch/search/f3$b$a$a;->b:Lio/branch/search/f3$b$a;

    iget-object v2, v2, Lio/branch/search/f3$b$a;->a:Lio/branch/search/f3$b;

    iget-object v3, v2, Lio/branch/search/f3$b;->c:Lio/branch/search/f3;

    iget-object v2, v2, Lio/branch/search/f3$b;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/d3;

    iget-object v4, p0, Lio/branch/search/f3$b$a$a;->a:Ljava/util/List;

    invoke-static {v3, v2, v4, v1}, Lio/branch/search/f3;->a(Lio/branch/search/f3;Lio/branch/search/d3;Ljava/util/List;Lio/branch/search/s1;)V

    goto :goto_0

    :cond_0
    return-void
.end method
