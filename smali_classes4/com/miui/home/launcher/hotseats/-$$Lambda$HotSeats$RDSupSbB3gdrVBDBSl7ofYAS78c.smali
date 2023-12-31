.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeats$RDSupSbB3gdrVBDBSl7ofYAS78c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->lambda$getHotSeatsList$1(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
