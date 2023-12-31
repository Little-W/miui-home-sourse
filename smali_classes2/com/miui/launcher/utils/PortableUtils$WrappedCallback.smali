.class public Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "PortableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/utils/PortableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedCallback"
.end annotation


# instance fields
.field protected mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;


# direct methods
.method public constructor <init>(Lcom/miui/launcher/utils/LauncherAppsCallback;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;->mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;->mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/utils/LauncherAppsCallback;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;->mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/utils/LauncherAppsCallback;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;->mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;

    invoke-virtual {p0, p1, p2}, Lcom/miui/launcher/utils/LauncherAppsCallback;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;->mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/launcher/utils/LauncherAppsCallback;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;->mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/launcher/utils/LauncherAppsCallback;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
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

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 95
    new-instance v2, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-direct {v2, v1}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/miui/launcher/utils/PortableUtils$WrappedCallback;->mCallback:Lcom/miui/launcher/utils/LauncherAppsCallback;

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/launcher/utils/LauncherAppsCallback;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
