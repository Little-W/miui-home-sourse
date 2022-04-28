.class public Lio/branch/search/internal/interfaces/LocalInterface$b;
.super Landroid/content/pm/LauncherApps$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/interfaces/LocalInterface;
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

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageAdded, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/f3;->c()V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageChanged, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageRemoved, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/f3;->c()V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShortcutsChanged, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", shortcuts = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$b;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/f3;->c()V

    return-void
.end method
