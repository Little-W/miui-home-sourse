.class public abstract Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;
.super Ljava/lang/Object;
.source "FolderPreinstallManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;
    .locals 1

    .line 24
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract handleClick(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
.end method

.method public abstract onAppAdded(Ljava/lang/String;)V
.end method

.method public abstract onFolderDeleted()V
.end method

.method public abstract onLauncherDestroy()V
.end method

.method public abstract onPreinstallItemDeleted(Ljava/lang/String;)V
.end method
