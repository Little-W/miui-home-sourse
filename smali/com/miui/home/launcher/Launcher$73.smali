.class Lcom/miui/home/launcher/Launcher$73;
.super Lcom/miui/home/launcher/common/ResultRunnable;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;
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

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$itemTypeList:Ljava/util/ArrayList;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;ILjava/util/ArrayList;Landroid/content/ComponentName;)V
    .locals 0

    .line 7895
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/Launcher$73;->val$userId:I

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$73;->val$itemTypeList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/home/launcher/Launcher$73;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 7898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7899
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$3500(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7900
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v3

    .line 7901
    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/home/launcher/Launcher$73;->val$userId:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$73;->val$itemTypeList:Ljava/util/ArrayList;

    iget v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 7902
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7905
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$73;->val$cn:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$73;->val$cn:Landroid/content/ComponentName;

    .line 7906
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$73;->val$cn:Landroid/content/ComponentName;

    .line 7907
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7908
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7911
    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher$73;->setResult(Ljava/lang/Object;)V

    return-void
.end method
