.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field final synthetic val$removedWidgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;->val$removedWidgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$2;->val$removedWidgets:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindAppWidgetRemoved(Ljava/util/ArrayList;)V

    return-void
.end method
