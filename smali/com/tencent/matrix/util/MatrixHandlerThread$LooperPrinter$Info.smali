.class Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;
.super Ljava/lang/Object;
.source "MatrixHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Info"
.end annotation


# instance fields
.field count:I

.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->this$0:Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
