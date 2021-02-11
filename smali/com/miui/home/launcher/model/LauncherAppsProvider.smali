.class public interface abstract Lcom/miui/home/launcher/model/LauncherAppsProvider;
.super Ljava/lang/Object;
.source "LauncherAppsProvider.java"


# virtual methods
.method public abstract getAllAppsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllComponentKey()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLauncherActivityInfo()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isQuietModeEnabled(Landroid/os/UserHandle;)Z
.end method

.method public abstract loadApps()V
.end method
