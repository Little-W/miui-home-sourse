.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$HotSeats$YN0Lw49RS2A8GMSDS6xY4gj20z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/HotSeats;

.field private final synthetic f$1:Lcom/miui/home/launcher/DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$YN0Lw49RS2A8GMSDS6xY4gj20z8;->f$0:Lcom/miui/home/launcher/HotSeats;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$YN0Lw49RS2A8GMSDS6xY4gj20z8;->f$1:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$YN0Lw49RS2A8GMSDS6xY4gj20z8;->f$0:Lcom/miui/home/launcher/HotSeats;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$HotSeats$YN0Lw49RS2A8GMSDS6xY4gj20z8;->f$1:Lcom/miui/home/launcher/DragObject;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/HotSeats;->lambda$setupCellBackground$0(Lcom/miui/home/launcher/HotSeats;Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V

    return-void
.end method
