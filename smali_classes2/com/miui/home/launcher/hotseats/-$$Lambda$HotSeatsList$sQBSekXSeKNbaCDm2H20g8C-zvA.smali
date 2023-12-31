.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$sQBSekXSeKNbaCDm2H20g8C-zvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$sQBSekXSeKNbaCDm2H20g8C-zvA;->f$0:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$sQBSekXSeKNbaCDm2H20g8C-zvA;->f$0:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->lambda$addItemInfoInner$0(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method
