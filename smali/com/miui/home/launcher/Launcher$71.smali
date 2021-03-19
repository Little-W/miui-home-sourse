.class Lcom/miui/home/launcher/Launcher$71;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/ResultRunnable<",
        "Ljava/util/ArrayList<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7246
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$3900(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher$71;->setResult(Ljava/lang/Object;)V

    return-void
.end method
