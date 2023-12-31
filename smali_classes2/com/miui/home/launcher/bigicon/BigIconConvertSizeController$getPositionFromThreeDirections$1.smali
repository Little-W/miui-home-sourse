.class final Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;
.super Ljava/lang/Object;
.source "BigIconConvertSizeController.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->getPositionFromThreeDirections([[IIIII)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic $spanX:I

.field final synthetic $spanY:I

.field final synthetic $x:I

.field final synthetic $y:I

.field final synthetic this$0:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->this$0:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;

    iput p2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$x:I

    iput p3, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$y:I

    iput p4, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$spanX:I

    iput p5, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$spanY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->test([I)Z

    move-result p0

    return p0
.end method

.method public final test([I)Z
    .locals 4

    const-string v0, "ints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->this$0:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$x:I

    const/4 v2, 0x0

    aget v2, p1, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$y:I

    const/4 v3, 0x1

    aget p1, p1, v3

    add-int/2addr v2, p1

    iget p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$spanX:I

    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$1;->$spanY:I

    invoke-static {v0, v1, v2, p1, p0}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->access$isPosValidate(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;IIII)Z

    move-result p0

    return p0
.end method
