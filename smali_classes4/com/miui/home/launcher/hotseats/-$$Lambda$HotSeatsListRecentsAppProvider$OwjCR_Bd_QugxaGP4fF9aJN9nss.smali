.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$OwjCR_Bd_QugxaGP4fF9aJN9nss;

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

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$OwjCR_Bd_QugxaGP4fF9aJN9nss(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
