.class Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;
.super Ljava/lang/Object;
.source "BaseModelUpdateTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/model/BaseModelUpdateTask;->bindCategoryUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field final synthetic val$categoryId:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;I)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;->this$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;->val$categoryId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 1

    .line 135
    iget v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$5;->val$categoryId:I

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindCategoryUpdate(I)V

    return-void
.end method
