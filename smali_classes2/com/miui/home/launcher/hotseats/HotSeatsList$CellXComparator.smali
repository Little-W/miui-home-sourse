.class public Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;
.super Ljava/lang/Object;
.source "HotSeatsList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellXComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I
    .locals 0

    .line 386
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 383
    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;->compare(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I

    move-result p1

    return p1
.end method
