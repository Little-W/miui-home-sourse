.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindCategoryAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$3;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0

    .line 121
    invoke-interface {p1}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindCategoryAdded()V

    return-void
.end method
