.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$eevKl4e-LOCx_nxtsdgcsFP92gI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;

.field private final synthetic f$2:Landroid/graphics/Matrix;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$eevKl4e-LOCx_nxtsdgcsFP92gI;->f$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$eevKl4e-LOCx_nxtsdgcsFP92gI;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$eevKl4e-LOCx_nxtsdgcsFP92gI;->f$2:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$eevKl4e-LOCx_nxtsdgcsFP92gI;->f$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$eevKl4e-LOCx_nxtsdgcsFP92gI;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsHorizontalAdapter$eevKl4e-LOCx_nxtsdgcsFP92gI;->f$2:Landroid/graphics/Matrix;

    check-cast p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->lambda$setViewHolderAsync$5(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$QueryResult;)V

    return-void
.end method
