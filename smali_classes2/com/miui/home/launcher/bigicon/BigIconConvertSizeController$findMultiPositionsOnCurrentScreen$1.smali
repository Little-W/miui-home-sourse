.class final Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;
.super Ljava/lang/Object;
.source "BigIconConvertSizeController.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->findMultiPositionsOnCurrentScreen(Landroid/util/Pair;)V
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
        "Ljava/util/function/Consumer<",
        "Ljava/util/Map$Entry<",
        "+",
        "Ljava/lang/Long;",
        "+",
        "Ljava/util/List<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $newSpanXY:Landroid/util/Pair;

.field final synthetic this$0:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;Landroid/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;->this$0:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;

    iput-object p2, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;->$newSpanXY:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;->accept(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public final accept(Ljava/util/Map$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;->this$0:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;->$newSpanXY:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v0, "newSpanXY.first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$findMultiPositionsOnCurrentScreen$1;->$newSpanXY:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string p1, "newSpanXY.second"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->access$findMultiPositionOnCurrentScreen(Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;Ljava/util/List;JII)V

    return-void
.end method
