.class Lcom/miui/home/launcher/Launcher$71;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->getFirstRussiaPreInstallInfo(Ljava/lang/String;)Lcom/miui/home/launcher/ShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/ResultRunnable<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 7964
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$71;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 7967
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3600(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7968
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher$71;->setResult(Ljava/lang/Object;)V

    return-void

    .line 7971
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3600(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7972
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7973
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$71;->val$packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    .line 7975
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher$71;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_2
    return-void
.end method
