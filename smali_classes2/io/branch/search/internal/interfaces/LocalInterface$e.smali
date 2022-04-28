.class public Lio/branch/search/internal/interfaces/LocalInterface$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/c4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/interfaces/LocalInterface;->g()V
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

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$e;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$e$a;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$e$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface$e;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
