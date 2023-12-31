.class public Lio/branch/search/internal/interfaces/LocalInterface$a;
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

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

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

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lio/branch/search/s3;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/i3;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p1

    iget-object p1, p1, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p1}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/branch/search/j3;->a(Lio/branch/search/i3;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p1

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lio/branch/search/s3;->a(Lio/branch/search/IBranchShortcutHandler;Landroid/content/Context;Lio/branch/search/i3;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p0

    iget-object p0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p0}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/m3;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageAdded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") was called but toInstalledLocalPackage(...) returned null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalInterface"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPackageChanged, packageName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", user = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageRemoved, packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p2

    iget-object p2, p2, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p2}, Lio/branch/search/r3;->e()Lio/branch/search/j3;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    move-wide v3, v7

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/j3;->a(Ljava/lang/String;JJ)V

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p0

    iget-object p0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p0}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object p0

    invoke-virtual {p0, p1, v7, v8}, Lio/branch/search/m3;->a(Ljava/lang/String;J)V

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
    .locals 3
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

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortcuts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p2}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lio/branch/search/s3;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/i3;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p3, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p3}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p3

    iget-object p3, p3, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p3}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object p3

    iget-object v1, v0, Lio/branch/search/i3;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lio/branch/search/m3;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p1

    iget-object p3, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p3}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object p3

    invoke-virtual {p1, p3, p2, v0}, Lio/branch/search/s3;->a(Lio/branch/search/IBranchShortcutHandler;Landroid/content/Context;Lio/branch/search/i3;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;

    move-result-object p0

    iget-object p0, p0, Lio/branch/search/s3;->c:Lio/branch/search/r3;

    invoke-virtual {p0}, Lio/branch/search/r3;->f()Lio/branch/search/m3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/m3;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-static {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShortcutsChanged("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") was called but toInstalledLocalPackage(...) returned null."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalInterface"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
