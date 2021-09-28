.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field final synthetic val$added:Ljava/util/List;

.field final synthetic val$modified:Ljava/util/List;

.field final synthetic val$removed:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;->val$removed:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;->val$added:Ljava/util/List;

    iput-object p4, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;->val$modified:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;->val$removed:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;->val$added:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$8;->val$modified:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
