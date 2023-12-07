.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$6GxzEXSeVx4vydyI1h8AARCDrVY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$6GxzEXSeVx4vydyI1h8AARCDrVY;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$6GxzEXSeVx4vydyI1h8AARCDrVY;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->getHotSeatsItemsIncludeDragging()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
