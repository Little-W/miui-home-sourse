.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;->f$1:Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    iput p3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;->f$1:Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    iget v2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$LYrLNAwrmylRHnWhKgy3g2TQ1y8;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->lambda$trackViewEvent$3(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    return-void
.end method
