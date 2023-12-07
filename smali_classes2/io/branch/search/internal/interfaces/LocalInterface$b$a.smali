.class public Lio/branch/search/internal/interfaces/LocalInterface$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface$b;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface$b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$b$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$b;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$b;

    iget-object v1, v1, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v1}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$b$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$b;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$b;

    iget-object v1, v1, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v1}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$b$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$b;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;)V

    return-void
.end method
