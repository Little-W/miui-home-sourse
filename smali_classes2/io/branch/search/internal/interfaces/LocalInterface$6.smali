.class public Lio/branch/search/internal/interfaces/LocalInterface$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/interfaces/LocalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->a:Z

    return-void
.end method


# virtual methods
.method public onForeground()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/Util;->isDefaultLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$6;->a:Z

    :cond_1
    :goto_0
    return-void
.end method
