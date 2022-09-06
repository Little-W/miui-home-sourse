.class public final synthetic Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerBackController$i0UZAgJfsPU4fd_VWWgxKj6yU_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerBackController$i0UZAgJfsPU4fd_VWWgxKj6yU_4;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerBackController$i0UZAgJfsPU4fd_VWWgxKj6yU_4;->f$1:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerBackController$i0UZAgJfsPU4fd_VWWgxKj6yU_4;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$SpringLayerBackController$i0UZAgJfsPU4fd_VWWgxKj6yU_4;->f$1:F

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->lambda$updateBackAnim$0(Ljava/lang/String;FLcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)V

    return-void
.end method
