.class public final enum Lcom/xiaomi/dist/common/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/dist/common/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum NONE:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum PAD:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum PC:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum PHONE:Lcom/xiaomi/dist/common/DeviceType;

.field public static final enum TV:Lcom/xiaomi/dist/common/DeviceType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/xiaomi/dist/common/DeviceType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/dist/common/DeviceType;->NONE:Lcom/xiaomi/dist/common/DeviceType;

    .line 7
    new-instance v0, Lcom/xiaomi/dist/common/DeviceType;

    const/4 v2, 0x1

    const-string v3, "PHONE"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/dist/common/DeviceType;->PHONE:Lcom/xiaomi/dist/common/DeviceType;

    .line 8
    new-instance v0, Lcom/xiaomi/dist/common/DeviceType;

    const/4 v3, 0x2

    const-string v4, "PAD"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/dist/common/DeviceType;->PAD:Lcom/xiaomi/dist/common/DeviceType;

    .line 9
    new-instance v0, Lcom/xiaomi/dist/common/DeviceType;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "TV"

    invoke-direct {v0, v6, v4, v5}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/dist/common/DeviceType;->TV:Lcom/xiaomi/dist/common/DeviceType;

    .line 10
    new-instance v0, Lcom/xiaomi/dist/common/DeviceType;

    const-string v6, "PC"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v5, v7}, Lcom/xiaomi/dist/common/DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/dist/common/DeviceType;->PC:Lcom/xiaomi/dist/common/DeviceType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/dist/common/DeviceType;

    .line 5
    sget-object v6, Lcom/xiaomi/dist/common/DeviceType;->NONE:Lcom/xiaomi/dist/common/DeviceType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/xiaomi/dist/common/DeviceType;->PHONE:Lcom/xiaomi/dist/common/DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/dist/common/DeviceType;->PAD:Lcom/xiaomi/dist/common/DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/dist/common/DeviceType;->TV:Lcom/xiaomi/dist/common/DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/dist/common/DeviceType;->PC:Lcom/xiaomi/dist/common/DeviceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/dist/common/DeviceType;->$VALUES:[Lcom/xiaomi/dist/common/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/xiaomi/dist/common/DeviceType;->type:I

    return-void
.end method

.method static synthetic lambda$valueOf$0(ILcom/xiaomi/dist/common/DeviceType;)Z
    .locals 0

    .line 20
    iget p1, p1, Lcom/xiaomi/dist/common/DeviceType;->type:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(I)Lcom/xiaomi/dist/common/DeviceType;
    .locals 2

    .line 19
    invoke-static {}, Lcom/xiaomi/dist/common/DeviceType;->values()[Lcom/xiaomi/dist/common/DeviceType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/dist/common/-$$Lambda$DeviceType$M8QrIuPwgp9TDI0Fr2EFI4O2qqM;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/common/-$$Lambda$DeviceType$M8QrIuPwgp9TDI0Fr2EFI4O2qqM;-><init>(I)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/dist/common/DeviceType;->NONE:Lcom/xiaomi/dist/common/DeviceType;

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/dist/common/DeviceType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/dist/common/DeviceType;
    .locals 1

    .line 5
    const-class v0, Lcom/xiaomi/dist/common/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/dist/common/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/dist/common/DeviceType;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaomi/dist/common/DeviceType;->$VALUES:[Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {v0}, [Lcom/xiaomi/dist/common/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/dist/common/DeviceType;

    return-object v0
.end method


# virtual methods
.method public asIntType()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaomi/dist/common/DeviceType;->type:I

    return p0
.end method
