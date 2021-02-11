.class Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$1;
.super Ljava/lang/Object;
.source "MatrixHandlerThread.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->onForeground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$1;->this$0:Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;)I
    .locals 0

    .line 139
    iget p2, p2, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->count:I

    iget p1, p1, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->count:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 136
    check-cast p1, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;

    check-cast p2, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$1;->compare(Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;)I

    move-result p1

    return p1
.end method
