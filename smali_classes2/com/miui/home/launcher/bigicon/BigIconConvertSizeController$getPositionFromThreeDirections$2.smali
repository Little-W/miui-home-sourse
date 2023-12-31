.class final Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;
.super Ljava/lang/Object;
.source "BigIconConvertSizeController.kt"

# interfaces
.implements Ljava/util/function/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final synthetic $x:I

.field final synthetic $y:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;->$x:I

    iput p2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;->$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply([I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;->$x:I

    const/4 v2, 0x0

    aget v2, p1, v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;->$y:I

    const/4 v2, 0x1

    aget p1, p1, v2

    add-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$getPositionFromThreeDirections$2;->apply([I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
