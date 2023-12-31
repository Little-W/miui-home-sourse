.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindScreenAdded(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field final synthetic val$position:I

.field final synthetic val$screenId:J

.field final synthetic val$screenType:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;JII)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-wide p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;->val$screenId:J

    iput p4, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;->val$screenType:I

    iput p5, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 3

    .line 188
    iget-wide v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;->val$screenId:J

    iget v2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;->val$screenType:I

    iget p0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$10;->val$position:I

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindScreenAdded(JII)V

    return-void
.end method
