.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindAppWidgetUpdated(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field final synthetic val$updated:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;->val$updated:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;->val$updated:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppWidgetUpdated(Ljava/util/ArrayList;)V

    return-void
.end method
