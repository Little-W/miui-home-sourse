.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$T1GBaA8ePaNSauYvM-whM4sFKgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$T1GBaA8ePaNSauYvM-whM4sFKgI;->f$0:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$T1GBaA8ePaNSauYvM-whM4sFKgI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$T1GBaA8ePaNSauYvM-whM4sFKgI;->f$0:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$T1GBaA8ePaNSauYvM-whM4sFKgI;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->lambda$onPreinstallItemDeleted$3$CNFolderPreinstallManager(Ljava/lang/String;)V

    return-void
.end method
