.class public final synthetic Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$Ej2igOHdTCxqUj6Tcfunks0QDSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$Ej2igOHdTCxqUj6Tcfunks0QDSE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$Ej2igOHdTCxqUj6Tcfunks0QDSE;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$Ej2igOHdTCxqUj6Tcfunks0QDSE;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$Ej2igOHdTCxqUj6Tcfunks0QDSE;->INSTANCE:Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$Ej2igOHdTCxqUj6Tcfunks0QDSE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onPause()V

    return-void
.end method
