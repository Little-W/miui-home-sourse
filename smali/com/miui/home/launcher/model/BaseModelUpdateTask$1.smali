.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field final synthetic val$updatedShortcuts:Ljava/util/ArrayList;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;->val$updatedShortcuts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;->val$updatedShortcuts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$1;->val$user:Landroid/os/UserHandle;

    invoke-interface {p1, v0, v1}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
