.class Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;
.super Ljava/lang/Object;
.source "GlobalFolderPreinstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;
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

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$000(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-static {v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$200(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$102(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Ljava/util/List;)Ljava/util/List;

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager$1;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->access$300(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.GlobalFolderPreinstallManager"

    const-string v1, "Load preinstall ads fail"

    .line 50
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
