.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$11;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindScreenRemoved(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;J)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$11;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-wide p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$11;->val$screenId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$11;->val$screenId:J

    invoke-interface {p1, v0, v1}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindScreenRemoved(J)V

    return-void
.end method
