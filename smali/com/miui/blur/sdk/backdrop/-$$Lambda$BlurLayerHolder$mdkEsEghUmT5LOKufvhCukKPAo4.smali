.class public final synthetic Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$mdkEsEghUmT5LOKufvhCukKPAo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$mdkEsEghUmT5LOKufvhCukKPAo4;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$mdkEsEghUmT5LOKufvhCukKPAo4;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    check-cast p1, Landroid/graphics/GraphicBuffer;

    invoke-static {v0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->lambda$start$1(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;Landroid/graphics/GraphicBuffer;)V

    return-void
.end method
