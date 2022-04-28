.class public Lio/branch/search/internal/interfaces/LocalInterface$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface$e;->a(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface$e;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface$e;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$e$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$e$a;->a:Lio/branch/search/internal/interfaces/LocalInterface$e;

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface$e;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/f3;->c()V

    return-void
.end method
