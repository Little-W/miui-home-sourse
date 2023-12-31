.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$zu4k4lGlk4HAiHbYyLofN_CPZDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$zu4k4lGlk4HAiHbYyLofN_CPZDM;->f$0:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$zu4k4lGlk4HAiHbYyLofN_CPZDM;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$zu4k4lGlk4HAiHbYyLofN_CPZDM;->f$0:Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$zu4k4lGlk4HAiHbYyLofN_CPZDM;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->lambda$updateAdapter$2$CNFolderPreinstallManager(Ljava/util/ArrayList;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)V

    return-void
.end method
