.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$pGZlV-sZYedMyj0gF3g1tHcTRKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$pGZlV-sZYedMyj0gF3g1tHcTRKo;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$pGZlV-sZYedMyj0gF3g1tHcTRKo;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$pGZlV-sZYedMyj0gF3g1tHcTRKo;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/common/-$$Lambda$OneTrackInterfaceUtils$pGZlV-sZYedMyj0gF3g1tHcTRKo;->f$1:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackMirrorEvent$4(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
