.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$HotSeats$mkPXZknfAyhgh9HU9-ZMCZbfb4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/HotSeats;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$mkPXZknfAyhgh9HU9-ZMCZbfb4o;->f$0:Lcom/miui/home/launcher/HotSeats;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$mkPXZknfAyhgh9HU9-ZMCZbfb4o;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$mkPXZknfAyhgh9HU9-ZMCZbfb4o;->f$0:Lcom/miui/home/launcher/HotSeats;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$mkPXZknfAyhgh9HU9-ZMCZbfb4o;->f$1:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/HotSeats;->lambda$pushItem$0(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
