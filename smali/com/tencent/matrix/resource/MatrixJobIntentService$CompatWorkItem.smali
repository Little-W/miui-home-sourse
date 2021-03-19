.class final Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;
.super Ljava/lang/Object;
.source "MatrixJobIntentService.java"

# interfaces
.implements Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/MatrixJobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompatWorkItem"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/MatrixJobIntentService;Landroid/content/Intent;I)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;->this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p2, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    .line 394
    iput p3, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;->mStartId:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;->this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    iget v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;->mStartId:I

    invoke-virtual {v0, v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
