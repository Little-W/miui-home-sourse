.class final Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "MatrixJobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/MatrixJobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CommandProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/MatrixJobIntentService;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 411
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 415
    :goto_0
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->dequeueWork()Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-interface {p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->onHandleWork(Landroid/content/Intent;)V

    .line 417
    invoke-interface {p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;->complete()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 411
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 0

    .line 424
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->processorFinished()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 411
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 429
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->this$0:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->processorFinished()V

    return-void
.end method
