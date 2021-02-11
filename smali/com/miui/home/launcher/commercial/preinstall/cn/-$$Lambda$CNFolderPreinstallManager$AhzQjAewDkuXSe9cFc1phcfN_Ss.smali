.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$AhzQjAewDkuXSe9cFc1phcfN_Ss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$AhzQjAewDkuXSe9cFc1phcfN_Ss;->f$0:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$AhzQjAewDkuXSe9cFc1phcfN_Ss;->f$0:Landroid/util/Pair;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->lambda$onPreinstallItemDeleted$2(Landroid/util/Pair;)V

    return-void
.end method
