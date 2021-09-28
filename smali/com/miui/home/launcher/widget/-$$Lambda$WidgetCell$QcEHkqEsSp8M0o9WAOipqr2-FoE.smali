.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/WidgetPreviewLoader;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$0:Lcom/miui/home/launcher/WidgetPreviewLoader;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput p3, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$2:I

    iput p4, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$0:Lcom/miui/home/launcher/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget v2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$2:I

    iget v3, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetCell$QcEHkqEsSp8M0o9WAOipqr2-FoE;->f$3:I

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->lambda$applyFromCellItem$0(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;IILjava/lang/Void;)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    move-result-object p1

    return-object p1
.end method
