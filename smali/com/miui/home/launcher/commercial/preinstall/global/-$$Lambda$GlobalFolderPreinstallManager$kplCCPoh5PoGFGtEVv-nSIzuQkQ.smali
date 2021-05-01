.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$kplCCPoh5PoGFGtEVv-nSIzuQkQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

.field private final synthetic f$1:Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$kplCCPoh5PoGFGtEVv-nSIzuQkQ;->f$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$kplCCPoh5PoGFGtEVv-nSIzuQkQ;->f$1:Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$kplCCPoh5PoGFGtEVv-nSIzuQkQ;->f$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalFolderPreinstallManager$kplCCPoh5PoGFGtEVv-nSIzuQkQ;->f$1:Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->lambda$onPreinstallItemDeleted$441(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)V

    return-void
.end method
