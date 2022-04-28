.class public Lio/branch/search/internal/interfaces/LocalInterface$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/a1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/z0;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/z0;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/f3;->b(Ljava/util/List;)V

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/z0;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/search/f3;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
