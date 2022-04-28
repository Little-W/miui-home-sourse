.class Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;
.super Ljava/lang/Object;
.source "GlobalFolderPreinstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->updatePreinstallApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$000(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$000(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-static {v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$100(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->refreshPreinstallList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$2;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$102(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.GlobalFolderPreinstallManager"

    const-string v2, "refresh fail"

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
